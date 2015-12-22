.class public Lcom/android/server/SdpServiceKeeper;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$1;,
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
    }
.end annotation


# static fields
.field private static final SDP_LICENSE_PERMISSION:Ljava/lang/String; = "com.samsung.permission.SDP"

.field private static final TAG:Ljava/lang/String; = "SdpServiceKeeper"

.field private static _instance:Lcom/android/server/SdpServiceKeeper;

.field private static mWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field private mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

.field private final mSdpPolicyDbLock:Ljava/lang/Object;

.field private mSdpPolicyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/sdp/engine/SdpPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSdpPolicyMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$1;)V

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    invoke-direct {p0}, Lcom/android/server/SdpServiceKeeper;->initWhitelist()V

    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.samsung.permission.SDP"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "SdpServiceKeeper"

    const-string v3, "License validation failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDefaultEngineOwner(Ljava/lang/String;)Lcom/sec/sdp/engine/SdpDomain;
    .locals 2

    new-instance v0, Lcom/sec/sdp/engine/SdpDomain;

    const-string/jumbo v1, "system_server"

    invoke-direct {v0, p1, v1}, Lcom/sec/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPackageName(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne p2, v1, :cond_0

    const-string v0, "android"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sdp/engine/SdpPolicy;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initWhitelist()V
    .locals 2

    sget-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v1, "com.samsung.android.email.provider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    const-string v1, "com.samsung.android.spay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isSystemApp(Ljava/lang/String;I)Z
    .locals 7

    const/4 v3, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v6, p0, Lcom/android/server/SdpServiceKeeper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    :try_start_0
    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v3, 0x1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isWhitelisted(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/server/SdpServiceKeeper;->mWhitelist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private policyExistsLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addPolicy(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Lcom/sec/sdp/engine/SdpEngineInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/sdp/engine/SdpDomain;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p4}, Lcom/android/server/SdpServiceKeeper;->policyExistsLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SdpServiceKeeper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPolicy :: error, policy["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] already exists!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x6

    monitor-exit v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, -0x8

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/SdpServiceKeeper;->getDefaultEngineOwner(Ljava/lang/String;)Lcom/sec/sdp/engine/SdpDomain;

    move-result-object v0

    :goto_1
    new-instance v1, Lcom/android/server/sdp/engine/SdpPolicy;

    invoke-direct {v1, p4, v0, p5}, Lcom/android/server/sdp/engine/SdpPolicy;-><init>(Lcom/sec/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/engine/SdpDomain;Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/sec/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    invoke-static {v3, p4, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$100(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/sdp/engine/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_3
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lcom/sec/sdp/engine/SdpDomain;

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/sec/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v2, -0xa

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method public declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/SdpServiceKeeper;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/SdpServiceKeeper;

    invoke-direct {v0, p1}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;

    :cond_0
    sget-object v0, Lcom/android/server/SdpServiceKeeper;->_instance:Lcom/android/server/SdpServiceKeeper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAuthorized(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)Z
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SdpServiceKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP_USER_0 isAuthorized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SdpServiceKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDP_USER_0 isAuthorized "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public isEngineOwner(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v7

    invoke-direct {p0, v3, v7}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v5, v6

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_3

    const-string v6, "SdpServiceKeeper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find policy for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_3
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/sec/sdp/engine/SdpDomain;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, v3

    const-string v7, "SdpServiceKeepertruman"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "owner : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", accessor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isLicensed(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->isSystemServer(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/SdpServiceKeeper;->isSystemApp(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpServiceKeeper;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper;->checkPermission(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public isPrivileged(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)Z
    .locals 10

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->isCustomEngine()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/SdpServiceKeeper;->getSdpPolicyLocked(Ljava/lang/String;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/sdp/engine/SdpDomain;

    invoke-virtual {v0}, Lcom/sec/sdp/engine/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSystemServer(Landroid/content/Context;II)Z
    .locals 1

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadPolicy(Lcom/sec/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .locals 4

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    invoke-static {v1, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$200(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const-string v1, "SdpServiceKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadPolicy :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/sdp/engine/SdpPolicy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePolicy(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)I
    .locals 3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/sec/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDbLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyDb:Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;

    # invokes: Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)V
    invoke-static {v0, p4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->access$300(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/sec/sdp/engine/SdpEngineInfo;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/SdpServiceKeeper;->mSdpPolicyMap:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_0
    const/4 v0, -0x8

    goto :goto_0
.end method

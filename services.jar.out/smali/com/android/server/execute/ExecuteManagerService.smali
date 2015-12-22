.class public Lcom/android/server/execute/ExecuteManagerService;
.super Lcom/samsung/android/app/IExecuteManager$Stub;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/execute/ExecuteManagerService$1;,
        Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;,
        Lcom/android/server/execute/ExecuteManagerService$UserReceiver;,
        Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecuteManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mExecutableInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/app/IExecuteManager$Stub;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/execute/ExecuteManagerService;->mExecutableInfos:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;-><init>(Lcom/android/server/execute/ExecuteManagerService;Lcom/android/server/execute/ExecuteManagerService$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/execute/ExecuteManagerService$UserReceiver;-><init>(Lcom/android/server/execute/ExecuteManagerService;Lcom/android/server/execute/ExecuteManagerService$1;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;

    invoke-direct {v1, p0}, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;-><init>(Lcom/android/server/execute/ExecuteManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/android/server/execute/ExecuteManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/execute/ExecuteManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/execute/ExecuteManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/execute/ExecuteManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/execute/ExecuteManagerService;->onUserRemoved(I)V

    return-void
.end method

.method private onUserRemoved(I)V
    .locals 0

    return-void
.end method

.method private declared-synchronized updateExecutableInfo()V
    .locals 5

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/execute/ExecuteManagerService;->mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/ExecutableInfo;->scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/ExecutableInfo;

    iget-object v3, p0, Lcom/android/server/execute/ExecuteManagerService;->mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/app/ExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "ExecuteManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/execute/ExecuteManagerService;->mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/ExecutableInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getExecutableInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/ExecutableInfo;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/execute/ExecuteManagerService;->mExecutableInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

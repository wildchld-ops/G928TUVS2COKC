.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 13

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "ConstrainedState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    const-string v7, "/efs/constrained"

    invoke-direct {v3, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ConstrainedStateTable"

    const-string/jumbo v11, "status"

    const/4 v12, 0x1

    invoke-virtual {v7, p1, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v7, v10, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x1

    const/4 v0, 0x1

    :cond_1
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    const-string v7, "ConstrainedState"

    const-string v10, "No data"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    const/4 v4, 0x0

    :goto_2
    return-object v4

    :cond_0
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    add-int v2, p3, v0

    array-length v3, p2

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-byte v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    const v6, 0x1040b0c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p4, :cond_2

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v3, 0x10805cb

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x1040b57

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-string v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :goto_0
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private split([B[B)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v3, p1

    add-int v0, v1, v3

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .locals 36

    const/16 v24, 0x0

    :try_start_0
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v15, v0, [Ljava/lang/String;

    const/16 v33, 0x0

    const-string v34, "adminUid"

    aput-object v34, v15, v33

    const/16 v33, 0x1

    const-string/jumbo v34, "status"

    aput-object v34, v15, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    const-string v34, "ConstrainedStateTable"

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v16

    new-instance v18, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v28

    if-eqz v28, :cond_13

    move-object/from16 v13, v28

    array-length v0, v13

    move/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v23, 0x0

    move-object/from16 v25, v24

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_12

    :try_start_1
    aget-object v22, v13, v23

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_15

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v14, v0, [B

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v30

    if-nez v30, :cond_0

    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    :goto_1
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v25, v24

    goto :goto_0

    :cond_0
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_1

    new-instance v32, Ljava/lang/String;

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    :cond_1
    if-nez v32, :cond_2

    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "something\'s wrong // type is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    const/16 v24, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v33, "normal"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_3

    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    :cond_3
    const/4 v5, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_4

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    if-lez v33, :cond_4

    new-instance v5, Ljava/lang/String;

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_4
    if-eqz v5, :cond_10

    const/4 v6, 0x0

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_f

    new-instance v6, Ljava/lang/String;

    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    const/16 v33, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    const/4 v7, 0x0

    if-eqz v29, :cond_5

    const/16 v33, 0x0

    aget-byte v33, v29, v33

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shl-int/lit8 v33, v33, 0x18

    const/16 v34, 0x1

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shl-int/lit8 v34, v34, 0x10

    or-int v33, v33, v34

    const/16 v34, 0x2

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shl-int/lit8 v34, v34, 0x8

    or-int v33, v33, v34

    const/16 v34, 0x3

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    or-int v7, v33, v34

    :cond_5
    if-gtz v7, :cond_7

    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "something\'s wrong"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v19

    :goto_3
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v24, :cond_6

    :try_start_4
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    :goto_4
    return-void

    :cond_7
    const/4 v8, 0x0

    const/4 v10, 0x0

    :try_start_5
    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_9

    const/16 v33, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_8

    new-instance v8, Ljava/lang/String;

    const/16 v33, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v8, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    :cond_8
    const/16 v33, 0x5

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    :cond_9
    new-instance v4, Landroid/app/enterprise/EnrollData;

    invoke-direct {v4}, Landroid/app/enterprise/EnrollData;-><init>()V

    const/4 v9, 0x0

    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_b

    const/16 v17, 0x0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_a
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentValues;

    const-string v33, "adminUid"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string/jumbo v33, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a

    move/from16 v9, v21

    :cond_b
    invoke-virtual/range {v4 .. v10}, Landroid/app/enterprise/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[B)V

    const/16 v33, 0x1

    move/from16 v0, p1

    move/from16 v1, v33

    if-ne v0, v1, :cond_c

    if-nez v9, :cond_e

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v5, v6, v8, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_c
    :goto_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v33

    :goto_6
    if-eqz v24, :cond_d

    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_d
    :goto_7
    throw v33

    :cond_e
    const/16 v33, 0x0

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v5, v6, v8, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_5

    :cond_f
    const-string v33, "ConstrainedState"

    const-string v34, "comment is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_10
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "package name is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_11
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "type is not normal"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_12
    move-object/from16 v24, v25

    :cond_13
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_14

    const-string v33, "ConstrainedState"

    const-string v34, "Data is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_8
    if-eqz v24, :cond_6

    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v33

    goto/16 :goto_4

    :cond_14
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    :catch_2
    move-exception v33

    goto/16 :goto_4

    :catch_3
    move-exception v34

    goto :goto_7

    :catchall_1
    move-exception v33

    move-object/from16 v24, v25

    goto :goto_6

    :catch_4
    move-exception v19

    move-object/from16 v24, v25

    goto/16 :goto_3

    :cond_15
    move-object/from16 v24, v25

    goto/16 :goto_1
.end method

.method private updateNotification()V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v8, v8, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 13

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Landroid/content/pm/PackageParser;

    invoke-direct {v8}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    if-eqz v9, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    array-length v11, v6

    if-nez v11, :cond_3

    :cond_1
    const-string v11, "ConstrainedState"

    const-string/jumbo v12, "something\'s wrong"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v11, 0x0

    :goto_0
    return v11

    :catch_0
    move-exception v3

    const/4 v9, 0x0

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :cond_5
    array-length v11, v7

    array-length v12, v6

    if-eq v11, v12, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_1
    array-length v11, v6

    if-ge v4, v11, :cond_8

    aget-byte v11, v7, v4

    aget-byte v12, v6, v4

    if-eq v11, v12, :cond_7

    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    goto :goto_0
.end method

.method public cleanUpConstrainedState(I)V
    .locals 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "adminUid"

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v5, "ConstrainedState"

    const-string v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .locals 3

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v24

    const-string v25, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    if-gtz p4, :cond_0

    const/16 v24, 0x0

    :goto_0
    return v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v24, "/efs/constrained"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v4}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string v24, "ConstrainedState"

    const-string v25, "already existing values // update"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/File;

    const-string v24, "/efs/constrained"

    move-object/from16 v0, v24

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v24

    const v25, 0x7fffffff

    and-int v8, v24, v25

    new-instance v14, Ljava/io/File;

    const-string v24, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_1
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_4

    add-int/lit8 v8, v8, 0x1

    new-instance v13, Ljava/io/File;

    const-string v24, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v13

    goto :goto_1

    :cond_4
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v24, 0x0

    shr-int/lit8 v25, p4, 0x18

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x1

    shr-int/lit8 v25, p4, 0x10

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x2

    shr-int/lit8 v25, p4, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x3

    move/from16 v0, p4

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p3, :cond_8

    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_8

    const-string/jumbo v24, "normalv2"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_2
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :goto_3
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_5

    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x40

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v17, v24, v25

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    :cond_5
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    const-string v26, "ConstrainedStateTable"

    const-string/jumbo v27, "status"

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    if-nez v20, :cond_c

    if-eqz v14, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_6
    const/16 v24, 0x0

    if-eqz v11, :cond_7

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_7
    :goto_4
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    :try_start_6
    const-string/jumbo v24, "normal"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    move-object v13, v14

    move-object v11, v12

    :goto_5
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v11, :cond_9

    :try_start_8
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_9
    :goto_6
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_7
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_a
    :try_start_9
    const-string v24, "DEFAULT"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v24

    move-object v13, v14

    move-object v11, v12

    :goto_8
    if-eqz v11, :cond_b

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_b
    :goto_9
    :try_start_b
    throw v24
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_1
    move-exception v6

    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_7

    :catch_2
    move-exception v6

    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v24

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24

    :cond_c
    const/16 v24, 0x1

    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const/16 v24, 0x1

    if-eqz v11, :cond_d

    :try_start_f
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :cond_d
    :goto_a
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :catch_3
    move-exception v6

    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_9

    :catchall_2
    move-exception v24

    goto :goto_8

    :catchall_3
    move-exception v24

    move-object v13, v14

    goto :goto_8

    :catch_6
    move-exception v6

    goto :goto_5

    :catch_7
    move-exception v6

    move-object v13, v14

    goto :goto_5
.end method

.method public getConstrainedState()I
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x2

    :cond_1
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPolicyBitMask()I

    move-result v3

    and-int v4, v3, p1

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

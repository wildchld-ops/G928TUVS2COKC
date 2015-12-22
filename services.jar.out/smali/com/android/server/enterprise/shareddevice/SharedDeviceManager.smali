.class public Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;,
        Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    }
.end annotation


# static fields
.field private static final ERR_API_CALL:Ljava/lang/String; = "API Call Failed."

.field private static final ERR_APP_BIND:Ljava/lang/String; = "Unable to bind to shared device agent."

.field private static final ERR_SERVICE_CONNECTION:Ljava/lang/String; = "Service Connection Not Available."

.field private static final SERVICE_CONNECTION_TIMEOUT:J = 0x4e20L

.field private static final SHARED_DEVICE_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

.field private static final SHARED_DEVICE_SERVICE_INTENT_ACTION:Ljava/lang/String; = "com.srib.shareddevice.service"

.field private static final SHARED_DEVICE_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.shareddevice"

.field private static final TAG:Ljava/lang/String;

.field private static sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method private bindToService()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    const/4 v7, 0x1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Executing bindToService()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Binding to the service..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.srib.shareddevice.service"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.enterprise.knox.shareddevice"

    const-string v5, "com.sec.enterprise.knox.shareddevice.SharedDeviceService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4, v7, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0x4e20

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "In bindToService: CoutnDownLatch returns false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterruptedException : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Unable to bind to shared device agent."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->sSharedDeviceManager:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private releaseService()V
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding from the service."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    return-void
.end method


# virtual methods
.method public declared-synchronized notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v3, "Executing notifyUserSignedIn()..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "API Call Failed."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_0
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_1
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v3, "Service Connection Not Available."

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->notifyUserSignedIn(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    const-string v4, "Executing performUserAuthentication()..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_0
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->performUserAuthentication(Lcom/sec/enterprise/knox/shareddevice/aidl/UserCredentials;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized signOutUser(Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/enterprise/shareddevice/SharedDeviceException;
        }
    .end annotation

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing signOutUser("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->getServiceConnectionInstance()Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->bindToService()V

    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "API Call Failed."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v3

    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V

    :cond_0
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_4
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v3, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;

    const-string v4, "Service Connection Not Available."

    invoke-direct {v3, v4}, Lcom/android/server/enterprise/shareddevice/SharedDeviceException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;->signOutUser(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mServiceConnection:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;

    invoke-virtual {v3}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->releaseService()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_3
    monitor-exit p0

    return v2
.end method

.class Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;
.super Ljava/lang/Object;
.source "SharedDeviceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDeviceManagementServiceConnection"
.end annotation


# instance fields
.field private mIsConnected:Z

.field private mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

.field final synthetic this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;-><init>(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)V

    return-void
.end method


# virtual methods
.method public getSharedDeviceManagementService()Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {p2}, Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    # getter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    # getter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$100(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->this$0:Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->mLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;->access$102(Lcom/android/server/enterprise/shareddevice/SharedDeviceManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mSharedDeviceManagementService:Lcom/sec/enterprise/knox/shareddevice/aidl/ISharedDeviceManagementService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/shareddevice/SharedDeviceManager$SharedDeviceManagementServiceConnection;->mIsConnected:Z

    return-void
.end method

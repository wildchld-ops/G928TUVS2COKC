.class Lcom/android/server/telecom/InCallWakeLockController;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "InCallWakeLockController.java"


# instance fields
.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFullWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/InCallWakeLockController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/InCallWakeLockController;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "InCallWakeLockController"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2, p0}, Lcom/android/server/telecom/CallsManager;->addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    return-void
.end method

.method private declared-synchronized handleWakeLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v0, "Acquiring full wake lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallWakeLockController;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v0, "Releasing full wake lock"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallWakeLockController;->handleWakeLock()V

    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallWakeLockController;->handleWakeLock()V

    return-void
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallWakeLockController;->handleWakeLock()V

    return-void
.end method

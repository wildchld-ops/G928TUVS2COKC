.class public Lcom/sec/android/cover/manager/CoverPowerManager;
.super Ljava/lang/Object;
.source "CoverPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_SCREEN_DIM_DURATION:I = 0x0

.field public static final DEFAULT_SCREEN_OFF_DURATION:I = 0x1770

.field public static final DEFAULT_SCREEN_OFF_DURATION_ON_POWER_SAVING_MODE:I = 0xbb8

.field private static final DEFAULT_TIMER_RESET_BLOCK_DURATION:I = 0xfa

.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final MSG_UNBLOCK_TIMER_RESET:I = 0x65

.field private static final TAG:Ljava/lang/String; = "CoverPowerManager"

.field private static instance:Lcom/sec/android/cover/manager/CoverPowerManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsTimerResetBlocked:Z

.field private mPMS:Landroid/os/PowerManager;

.field private mTimeOutDuration:I

.field private mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

.field private mUnblockTimerResetHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1770

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    iput-boolean v3, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    new-instance v1, Lcom/sec/android/cover/manager/CoverPowerManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/manager/CoverPowerManager$1;-><init>(Lcom/sec/android/cover/manager/CoverPowerManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-string v1, "CoverUI"

    const-string v2, "create CoverPowerManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const-string v2, "SViewCoverBaseService.mCoverStateWakeLock"

    invoke-virtual {v1, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v1

    const-string v2, "powersaving_switch"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/manager/CoverPowerManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/manager/CoverPowerManager;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/manager/CoverPowerManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/manager/CoverPowerManager;->instance:Lcom/sec/android/cover/manager/CoverPowerManager;

    return-object v0
.end method


# virtual methods
.method public acquireWakeLock()V
    .locals 2

    const-string v0, "CoverPowerManager"

    const-string v1, "acquireWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method public cancelScreenOffTimer()V
    .locals 0

    return-void
.end method

.method public getCurrentBrightness()F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    :cond_0
    const-string v1, "CoverPowerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public goToSleep()V
    .locals 4

    const-string v0, "CoverPowerManager"

    const-string v1, "goToSleep"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_0
    return-void
.end method

.method public isScreenOn()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 2

    const-string v0, "CoverPowerManager"

    const-string v1, "releaseWakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public resetScreenOffTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    return-void
.end method

.method public resetScreenOffTimerWithInterval()V
    .locals 4

    const/16 v1, 0x65

    iget-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mIsTimerResetBlocked:Z

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mUnblockTimerResetHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    goto :goto_0
.end method

.method public setTimerExpireHandler(Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;)V
    .locals 2

    const-string v0, "CoverPowerManager"

    const-string v1, "setTimerExpireHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimerExpireHandler:Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    :cond_0
    return-void
.end method

.method public setmTimeOutDuration(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mTimeOutDuration:I

    return-void
.end method

.method public startScreenOffTimer()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    return-void
.end method

.method public userActivity()V
    .locals 4

    const-string v0, "CoverPowerManager"

    const-string v1, "userActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method public wakeUp()V
    .locals 4

    const-string v0, "CoverPowerManager"

    const-string v1, "wakeUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    return-void
.end method

.method public wakeUpWithReason()V
    .locals 4

    const-string v0, "CoverPowerManager"

    const-string v1, "wakeUpWithReason"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPowerManager;->mPMS:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x6

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JI)V

    :cond_0
    return-void
.end method

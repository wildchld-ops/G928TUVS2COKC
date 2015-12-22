.class public Lcom/android/internal/policy/impl/sec/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mContext:Landroid/content/Context;

.field private mEnterKeyConsumed:Z

.field private mEnterKeyTime:J

.field private mEnterKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsSupportManualScreenPinning:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$1;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$2;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$3;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$4;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$5;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$6;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$7;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager$7;-><init>(Lcom/android/internal/policy/impl/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return v0
.end method

.method private cancelPendingChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private getChordLongPressDelay()J
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptFactoryTestChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptQuickShotChord()V
    .locals 10

    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptSafetyAssuranceChord()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 10

    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptStopLockTaskModeChord()V
    .locals 10

    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    iput-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_4
    sget-boolean v2, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private interceptSysDumpChord()V
    .locals 8

    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 6

    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x96

    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_3

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_5

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mSPWM:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_6

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_7

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    :cond_7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_9

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    :sswitch_1
    if-eqz v1, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    :cond_5
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    :sswitch_2
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    :cond_6
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    :sswitch_3
    if-eqz v1, :cond_8

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    :cond_8
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :cond_9
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_4
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-boolean v4, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    :cond_b
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_5
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_c

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    goto/16 :goto_2

    :cond_c
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_6
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_d

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    :cond_d
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_7
    if-eqz v1, :cond_e

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    :cond_e
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_8
    if-eqz v1, :cond_f

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_f
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_9
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    if-eqz v1, :cond_10

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_10
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_a
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    if-eqz v1, :cond_11

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_11
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :cond_12
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v6, :cond_0

    if-eqz v1, :cond_13

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    :cond_13
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v4, :cond_0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    :sswitch_b
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v1, :cond_14

    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v6, :cond_0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTime:J

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->cancelPendingPowerKey()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    :cond_14
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x6 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xbb -> :sswitch_9
        0x11a -> :sswitch_6
        0x120 -> :sswitch_5
        0x12e -> :sswitch_7
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPWM:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v2, v3

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    sparse-switch v1, :sswitch_data_0

    :cond_3
    move v2, v3

    goto :goto_1

    :sswitch_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    goto :goto_1

    :sswitch_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    goto :goto_1

    :sswitch_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    goto :goto_1

    :sswitch_3
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    goto :goto_1

    :sswitch_4
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    goto :goto_1

    :sswitch_5
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    goto :goto_1

    :sswitch_6
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    goto :goto_1

    :sswitch_7
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    goto :goto_1

    :sswitch_8
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    goto :goto_1

    :sswitch_9
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    goto :goto_1

    :sswitch_a
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mMenuConsumed:Z

    goto :goto_1

    :sswitch_b
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    if-eqz v4, :cond_3

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x11a -> :sswitch_6
        0x120 -> :sswitch_5
        0x12e -> :sswitch_7
    .end sparse-switch
.end method

.method public onSystemReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    return-void
.end method

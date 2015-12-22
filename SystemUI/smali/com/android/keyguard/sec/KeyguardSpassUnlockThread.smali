.class public Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
.super Ljava/lang/Thread;
.source "KeyguardSpassUnlockThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardSpassUnlockThread"


# instance fields
.field private final FINGERPRINT_START_DELAY:I

.field private final FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

.field private final MSG_DESTROY_FINGERPRINT_THREAD:I

.field private final MSG_FINGERPRINT_DATABASE_ERROR:I

.field private final MSG_FINGERPRINT_IDENTIFY_START:I

.field private final MSG_FINGERPRINT_IDENTIFY_STOP:I

.field private final MSG_FINGERPRINT_RESPONDING_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_ERROR:I

.field private final MSG_FINGERPRINT_SENSOR_FAILURE:I

.field private final MSG_FINGERPRINT_SENSOR_START:I

.field private final MSG_FINGERPRINT_SENSOR_STOP:I

.field private final SCREEN_TIMEOUT:I

.field private mAttributionViewEnableHandlerId:I

.field mBoostHelper:Landroid/os/DVFSHelper;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastRegistered:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mContext:Landroid/content/Context;

.field private mExpiredTime:J

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mIsActive:Z

.field private mIsRegisteredClient:Z

.field private volatile mIsRunning:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

.field private mSpassThreadHandler:Landroid/os/Handler;

.field private mToken:Landroid/os/IBinder;

.field private mVibraterPattern:[J

.field private mVibraterService:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "KeyguardSpassUnlockThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->SCREEN_TIMEOUT:I

    const/16 v0, 0x45c

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_START:I

    const/16 v0, 0x45d

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_IDENTIFY_STOP:I

    const/16 v0, 0x45f

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_START:I

    const/16 v0, 0x460

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_STOP:I

    const/16 v0, 0x461

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_ERROR:I

    const/16 v0, 0x462

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_SENSOR_FAILURE:I

    const/16 v0, 0x463

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_RESPONDING_ERROR:I

    const/16 v0, 0x464

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_DESTROY_FINGERPRINT_THREAD:I

    const/16 v0, 0x465

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->MSG_FINGERPRINT_DATABASE_ERROR:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGERPRINT_START_DELAY:I

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mAttributionViewEnableHandlerId:I

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterPattern:[J

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$1;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const-string v0, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->FINGER_PRINT_SERVICE_STARTED_ACTION:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$3;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "FingerPrintManager is not possilbe"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->request(II)I

    goto :goto_0

    nop

    :array_0
    .array-data 8
        0x0
        0x32
        0x1e
        0x32
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStartIdentify()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)[J
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterPattern:[J

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleDestoryFingerPrintThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleUnlock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleReportFailedAttempts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mVibraterService:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method private boostCpuClock()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "Spass boostCpuClock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    const-string v2, "KEYGUARD_SPASS_BOOST"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const v3, 0x124f80

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBoostHelper:Landroid/os/DVFSHelper;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    return-void
.end method

.method private handleDestoryFingerPrintThread()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleDestoryFingerPrintThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->removeAllMsgs()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReportFailedAttempts()V
    .locals 3

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleReportFailedAttempts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportFailedSecBiometricUnlockAttempt()V

    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportFailedAttempt( mFailedAttempts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reportFailedAttempt( too many failed. go to backup Password )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showAutoWipePopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showBackupPassword()V

    goto :goto_0
.end method

.method private handleStartIdentify()V
    .locals 6

    const/16 v5, 0x45f

    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify( mIsRegisteredClient = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->isSensorReady()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartIdentify currentUserId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyForMultiUser(Landroid/os/IBinder;ILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_IN_PROGRESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/4 v2, -0x3

    if-ne v1, v2, :cond_3

    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_INVALID_TOKEN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const/4 v2, -0x4

    if-eq v1, v2, :cond_4

    const/4 v2, -0x5

    if-ne v1, v2, :cond_5

    :cond_4
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify: RESULT_DATABASE_FAILURE or RESULT_NO_REGISTERED_FINGER"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x465

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "identify request failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x463

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartIdentify is called but isSensorReady is false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x461

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handleUnlock()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->boostCpuClock()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->dismissKeyguard()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-nez v1, :cond_0

    const-string v1, "KeyguardSpassUnlockThread"

    const-string v2, "registerBroadcastReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.fingerprint.action.SERVICE_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    :cond_0
    return-void
.end method

.method private registerClient()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_1

    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerPrintManager is not possilbe"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "system"

    invoke-direct {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->demandExtraEvent(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->useManualTimeout(Z)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const v3, -0x7ffffffd

    invoke-virtual {v0, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setPrivilegedAttr(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    const-string v3, "KeyguardSpassUnlockThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerClient() mToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const-string v1, "KeyguardSpassUnlockThread"

    const-string v3, "registerClient() : FingerprintClientSpecBuilder is not possible"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "unregisterBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mBroadcastRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public handleFingerPrintDataBaseError()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleFingerPrintDataBaseError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x465

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_database_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    return-void
.end method

.method public handleRespondingError()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleRespondingError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    return-void
.end method

.method public handleSensorError()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorError()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_sensor_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterClient()V

    return-void
.end method

.method public handleSensorFailure()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleSensorFailure()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    sget v1, Lcom/android/keyguard/R$string;->kg_finger_print_not_responding_error_message:I

    invoke-interface {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;->showErrorPopup(I)V

    :cond_1
    return-void
.end method

.method handleStartFingerPrintSensor()V
    .locals 8

    const/16 v7, 0x45c

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->handleStopIdentify()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "handleStartFingerPrintSensor  "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "sensor is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "fingerprint is already running."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "KeyguardSpassUnlockThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start( mIsRegisteredClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isRunning()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.fingerprint.service"

    const-string v3, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mExpiredTime:J

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerClient()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    iput-boolean v6, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->unregisterBroadcastReceiver()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "KeyguardSpassUnlockThread"

    const-string v3, "Failed to call FingerprintServiceStarter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->registerBroadcastReceiver()V

    goto/16 :goto_0
.end method

.method public handleStopIdentify()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "handleStopIdentify()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->cancel(Landroid/os/IBinder;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume(I)V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected removeAllMsgs()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x463

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "KeyguardSpassUnlockThread"

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$2;-><init>(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public setSpassCallback(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassCallback:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;

    return-void
.end method

.method public startIdentify()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopIdentify()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x45d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public stopSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mSpassThreadHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public unregisterClient()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    const-string v0, "KeyguardSpassUnlockThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterClient() mToken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mToken:Landroid/os/IBinder;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRegisteredClient:Z

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->mIsRunning:Z

    :cond_0
    return-void
.end method

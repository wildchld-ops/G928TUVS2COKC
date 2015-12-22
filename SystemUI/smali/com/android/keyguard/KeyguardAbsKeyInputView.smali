.class public abstract Lcom/android/keyguard/KeyguardAbsKeyInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field protected static final HINT_MESSAGE_A_SEC:I = 0x3e8

.field protected static final HINT_MESSAGE_DURATION:I = 0x1388

.field protected static final HINT_MESSAGE_NO_DISAPPEAR:I = 0x0

.field protected static final INSTRUCTION_MESSAGE_WAIT_TIME:I = 0x7d0

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3

.field protected static final VIBRATE_DURATION:I = 0x64


# instance fields
.field private isSupportMobileKeyboard:Z

.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mBouncerKMA:Landroid/view/View;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field protected mClearMessageRunnable:Ljava/lang/Runnable;

.field protected mCountdownTimer:Landroid/os/CountDownTimer;

.field protected mDivider:Landroid/view/View;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field protected mEMAPress:Z

.field protected mEcaView:Landroid/view/View;

.field protected mEnableHaptics:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field protected mHandler:Landroid/os/Handler;

.field mImmAbs:Landroid/view/inputmethod/InputMethodManager;

.field protected mKeyguardBouncerFrameView:Landroid/view/View;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mMobileKeyboard:Z

.field protected mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordEntryShadowColor:I

.field private mPasswordEntryTextColor:I

.field private mPasswordTimeTick:I

.field protected mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field protected mVibraterService:Landroid/os/SystemVibrator;

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x66ffffff

    :goto_0
    sput v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    iput v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView$1;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$2;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$6;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    const-string v0, "enterprise_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/keyguard/KeyguardAbsKeyInputView;)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public disableDevicePermanently()V
    .locals 7

    const/4 v1, 0x1

    const-string v0, "PasswordUnlockScreen"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v2, Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has exceeded number of authentication failure limit"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v3, 0x1040b0c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public doHapticKeyClick()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->performHapticFeedback(II)Z

    :cond_0
    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    sub-int v3, v0, p2

    :goto_1
    if-ne v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    return-object v2

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    rsub-int/lit8 v3, p2, 0xa

    goto :goto_1

    :cond_2
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    if-le v3, v4, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;
    .locals 8

    const/4 v5, 0x1

    const-string v1, ""

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    rsub-int/lit8 v2, v0, 0xa

    if-ne v2, v5, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_1_attempt_remaining:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/16 v3, 0xa

    if-gt v2, v3, :cond_0

    if-le v2, v5, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract getPasswordText()Ljava/lang/String;
.end method

.method protected abstract getPasswordTextViewId()I
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setPasswordEntryEnabled(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public hideBouncer(I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method protected isCountDownTimerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceDisabledForMaxFailedAttempt()Z
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v2

    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "max failed attempt for device disable :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current failed attempt for device  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isHintMessageArea()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    sget v4, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v5, Lcom/android/keyguard/KeyguardAbsKeyInputView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mMobileKeyboard:Z

    if-eqz v4, :cond_1

    sget v4, Lcom/android/keyguard/R$id;->keyboardentry:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v5, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView$3;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/SystemVibrator;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/SystemVibrator;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isDirectCallToEcc()Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_emergency_circle:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/keyguard/sec/SecKeyguardCircleEmergencyView;->setPasswordEntryView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_4
    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/keyguard/EmergencyButton;->setPasswordEntryView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_6

    const/16 v0, 0x3e7

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setNewActionPopupMenu(IZ)V

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getShadowColor()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->updateBlackTextOnWhiteWallpaper()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->shouldLockout(J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method protected abstract resetPasswordText(Z)V
.end method

.method protected abstract resetState()V
.end method

.method public sendAccessibilityEvent(Ljava/lang/CharSequence;)V
    .locals 6

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "PasswordUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendAccessibilityEvent e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 6

    const-string v2, "PasswordUnlockScreen"

    const-string v3, "setHintOrMessageText()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    if-lez p3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView$7;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardReset;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method protected setNullHintMessage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method protected abstract setPasswordEntryEnabled(Z)V
.end method

.method protected shouldLockout(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->showHideBouncerKeyguardMessageArea(Z)V

    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerKMA:Landroid/view/View;

    :goto_1
    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEMAPress:Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move-object v0, p0

    goto :goto_1
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mDivider:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->white_bg_solution_pin_divider_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordEntryShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 21

    const-string v2, "PasswordUnlockScreen"

    const-string v3, "verifyPasswordAndUnlock()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportUnpackMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "PasswordUnlockScreen"

    const-string v3, "verifyPasswordAndUnlock() in isSupportUnpackMode=true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v12}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "PasswordUnlockScreen"

    const-string v3, "password is correct"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v19

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v17

    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "lockscreen.password_type"

    move/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lockscreen.password_min"

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lockscreen.password_max"

    move/from16 v0, v17

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "lockscreen.password_old"

    invoke-virtual {v14, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v14, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isHintMessageArea()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setNullHintMessage()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mImmAbs:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    new-instance v9, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v9, v12}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    :cond_3
    new-instance v15, Landroid/lsm/LockedStatePasswordWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/lsm/LockedStatePasswordWrapper;->getCurrentUserID()I

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v15, v12}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-virtual {v12}, Ljava/lang/String;->clear()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "PasswordUnlockScreen"

    const-string v3, "password is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mEnableHaptics:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mVibraterService:Landroid/os/SystemVibrator;

    const-wide/16 v4, 0x64

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v8

    rsub-int/lit8 v20, v8, 0xa

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_a

    rem-int/lit8 v2, v8, 0x5

    if-nez v2, :cond_8

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_7

    if-eqz v20, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->handleAttemptLockout(J)V

    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v2

    if-eqz v2, :cond_c

    sget-boolean v2, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->isCountDownTimerRunning()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mPasswordTimeTick:I

    new-instance v2, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;

    const-wide/16 v4, 0x1f40

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/KeyguardAbsKeyInputView$4;-><init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;JJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->disableDevicePermanently()V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v8

    goto :goto_3

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getWrongPasswordStringId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    goto/16 :goto_1
.end method

.method protected verifyRecoveryPasswordAndUnlock()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.settings"

    const-string v7, "com.android.settings.ChooseLockPassword"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "lockscreen.password_old"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "confirm_credentials"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v6, "isRecovery"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v6, 0x800000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->resetPasswordText(Z)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/sec/KeyguardReset;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/KeyguardReset;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/keyguard/sec/KeyguardReset;->wipeOut(I)V

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_0
.end method

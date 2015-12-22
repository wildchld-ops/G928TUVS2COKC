.class public Lcom/android/keyguard/sec/KeyguardBackupPINView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardBackupPINView.java"


# static fields
.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final MAX_LENGTH_ENTRY:I = 0x8

.field private static final TAG:Ljava/lang/String; = "KeyguardBackupPINView"


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private mDivider:Landroid/view/View;

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mIsUnlockSuccess:Z

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mPasswordTimeTick:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRow0:Landroid/view/ViewGroup;

.field private mRow1:Landroid/view/ViewGroup;

.field private mRow2:Landroid/view/ViewGroup;

.field private mRow3:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    const/16 v0, 0x8

    invoke-super {p0, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->setMaxLength(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardBackupPINView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/keyguard/sec/KeyguardBackupPINView;)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardBackupPINView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardBackupPINView;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private checkBackupPin(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkSignatureBackupPin(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private enableClipping(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setClipChildren(Z)V

    return-void
.end method

.method private isCenteredMessageArea()Z
    .locals 1

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

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
.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;->handleAttemptLockout(J)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    return-void
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-nez v0, :cond_0

    const-string v0, "KeyguardBackupPINView"

    const-string v1, "mCallback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    :cond_2
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    sget v2, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    sget v2, Lcom/android/keyguard/R$id;->row0:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    sget v2, Lcom/android/keyguard/R$id;->row1:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow1:Landroid/view/ViewGroup;

    sget v2, Lcom/android/keyguard/R$id;->row2:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow2:Landroid/view/ViewGroup;

    sget v2, Lcom/android/keyguard/R$id;->row3:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow3:Landroid/view/ViewGroup;

    sget v2, Lcom/android/keyguard/R$id;->divider:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mDivider:Landroid/view/View;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_0

    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup_pin_usa:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCenteredMessageArea()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setEnableKeyPad(Z)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_spass_backup_pin_introductions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->enableClipping(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    const/4 v1, 0x6

    new-array v1, v1, [[Landroid/view/View;

    new-array v2, v8, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mRow0:Landroid/view/ViewGroup;

    aput-object v3, v2, v5

    aput-object v9, v2, v6

    aput-object v9, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key1:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key2:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key3:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key4:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key5:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key6:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    new-array v2, v8, [Landroid/view/View;

    sget v3, Lcom/android/keyguard/R$id;->key7:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v5

    sget v3, Lcom/android/keyguard/R$id;->key8:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v6

    sget v3, Lcom/android/keyguard/R$id;->key9:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v1, v8

    const/4 v2, 0x4

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    sget v4, Lcom/android/keyguard/R$id;->key0:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    sget v4, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-array v3, v8, [Landroid/view/View;

    aput-object v9, v3, v5

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mEcaView:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v9, v3, v7

    aput-object v3, v1, v2

    new-instance v2, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView$1;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 15

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v4, 0x0

    const/4 v14, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getPasswordText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-direct {p0, v11}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->checkBackupPin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLockUniversal(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    if-eqz v12, :cond_0

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iput-boolean v14, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mIsUnlockSuccess:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v14}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v7, v11}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isHintMessageArea()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setNullHintMessage()V

    :cond_2
    :goto_1
    invoke-virtual {p0, v14}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->resetPasswordText(Z)V

    return-void

    :catch_0
    move-exception v10

    const-string v0, "KeyguardBackupPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find the component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mEnableHaptics:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mVibraterService:Landroid/os/SystemVibrator;

    const-wide/16 v2, 0x64

    sget-object v1, Landroid/os/SystemVibrator$MagnitudeType;->TouchMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/SystemVibrator;->vibrate(JLandroid/os/SystemVibrator$MagnitudeType;)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    rsub-int/lit8 v13, v6, 0xa

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-nez v0, :cond_8

    rem-int/lit8 v0, v6, 0x5

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_5

    if-eqz v13, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->handleAttemptLockout(J)V

    new-instance v12, Landroid/content/Intent;

    const-string v0, "android.intent.action.PATTERN_LOCK_FAIL"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->isCountDownTimerRunning()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v14}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v5, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    :cond_7
    iput v4, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mPasswordTimeTick:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;

    const-wide/16 v2, 0x1f40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardBackupPINView$2;-><init>(Lcom/android/keyguard/sec/KeyguardBackupPINView;JJ)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->disableDevicePermanently()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardBackupPINView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1, v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v6

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getWrongPasswordStringId()I

    move-result v0

    invoke-virtual {p0, v0, v6}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->getFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, v14}, Lcom/android/keyguard/sec/KeyguardBackupPINView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1
.end method

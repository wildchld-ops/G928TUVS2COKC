.class public Lcom/android/keyguard/sec/KeyguardSPassUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;


# static fields
.field private static final ATTRIBUTIONVIEW_SET_ENABLE:I = 0xf

.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DEBUG:Z = true

.field private static final DISMISS_KEYGUARD:I = 0x11

.field public static final LOCKOUT_ATTEMPT_DEADLINE_FOR_CHINA:Ljava/lang/String; = "lockscreen.lockoutattemptdeadlineforchina"

.field private static final MAX_AWAKE_TIME:I = 0x7530

.field private static final SHOW_AUTO_WIPE_POPUP:I = 0x10

.field private static final SHOW_BACKUP_PASSWORD_BASED_COUNT:I = 0x3

.field private static final SHOW_BACKUP_PASSWORD_BUTTON:I = 0xe

.field private static final SHOW_BACKUP_PASSWORD_LOCKSCREEN:I = 0xd

.field private static final SHOW_FINGERPRINT_ERROR_MESSAGE:I = 0xb

.field private static final SHOW_FINGERPRINT_ERROR_POPUP:I = 0xc

.field private static final SHOW_FINGERPRINT_INSTRUCTIONS:I = 0xa

.field private static final SHOW_INSTRUCTIONS_BY_TOUCH:I = 0x12

.field private static final TAG:Ljava/lang/String; = "KeyguardSPassUnlockView"

.field private static mAnimationBottomMarginAttributionEnabled:I

.field private static mAnimationBottomMarginNormal:I


# instance fields
.field private isSupportMobileKeyboard:Z

.field protected mAttributeViewEnabled:Z

.field private mAttributionView:Landroid/view/View;

.field private mAttributionViewEnableHandlerId:I

.field private mBackupPasswordButton:Landroid/widget/Button;

.field private mBackupPasswordButtonAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field protected mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerStatusText:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mClearBouncerTextRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCurrentMobileKeyboard:I

.field protected mEMAPress:Z

.field private mEcaView:Landroid/view/View;

.field private mEnabledHelpTextRunnable:Ljava/lang/Runnable;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field mHasWindowFocus:Z

.field protected mHelpTextEnabled:Z

.field private mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMobileKeyboard:Z

.field private mResumedTimeMillis:J

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mStatusText:Landroid/widget/TextView;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mTalkbackEnabled:Z

.field protected mTouchEnabled:Z

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUseBlackTextOnWhiteWallpaper:Z

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    sput v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mResumedTimeMillis:J

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTouchEnabled:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributeViewEnabled:Z

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHelpTextEnabled:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isSupportMobileKeyboard:Z

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentMobileKeyboard:I

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v6, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    iput v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionViewEnableHandlerId:I

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$1;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$2;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$3;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnabledHelpTextRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3, v6, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$4;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHasWindowFocus:Z

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$10;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$11;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButtonAnimListner:Landroid/view/animation/Animation$AnimationListener;

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->start()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "white_lockscreen_wallpaper"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->checkTalkBackEnabled()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isSupportMobileKeyboard:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentMobileKeyboard:I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordLockscreen()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleDismissKeyguard()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowAutoWipePopup()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowFingerPrintInstruction(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowErrorPopup(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleShowBackupPasswordButton()V

    return-void
.end method

.method private disableDevicePermanently()V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const-string v0, "KeyguardSPassUnlockView"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

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

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->device_disabled:I

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$string;->device_disabled:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    :goto_0
    sget v0, Lcom/android/keyguard/R$string;->device_disabled:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->keyguard_text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private handleDismissKeyguard()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    :cond_0
    return-void
.end method

.method private handleShowAutoWipePopup()V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x5

    const/4 v8, 0x1

    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "handleShowAutoWipePopup()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->clearAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v0

    const-string v2, "KeyguardSPassUnlockView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleShowAutoWipePopup( attempt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v0, :cond_3

    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_failed_5_attempts_to_show_backup_password_with_auto_wipe:I

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->ok:I

    invoke-virtual {v2, v3, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v2, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_4
    return-void
.end method

.method private handleShowBackupPasswordButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "fade in backupView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private handleShowBackupPasswordLockscreen()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Biometric:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_1
    return-void
.end method

.method private handleShowErrorMessage(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowErrorMessage( errorMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHelpTextEnabled:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "handleShowErrorMessage( mBackupPasswordButton )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v4, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnabledHelpTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnabledHelpTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEnabledHelpTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->keyguard_text_color_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private handleShowErrorPopup(I)V
    .locals 3

    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowErrorPopup( resid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->ok:I

    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$8;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$7;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_2
    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShowErrorPopup( resid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Dialog is already showing. )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleShowFingerPrintInstruction(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x12

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isPreparedBackupPasswordButton()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHelpTextEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isCoverState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v1, :cond_4

    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "handleShowFingerPrintInstruction( show finger pirnt instructions )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_fingerprints_instructions_with_mobile_keyboard:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isPreparedBackupPasswordButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "handleShowFingerPrintInstruction( show finger pirnt instructions )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_fingerprints_instructions:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    const-string v4, "KeyguardSPassUnlockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "max failed attempt for device disable :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v1

    const-string v4, "KeyguardSPassUnlockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string v4, "KeyguardSPassUnlockView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceDisabledForMaxFailedAttempt return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPreparedBackupPasswordButton()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_fadein_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButtonAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_error_text_enter_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_error_text_exit_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private pokeWakelockWithTimeCheck()V
    .locals 8

    const-wide/16 v6, 0x4e20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mResumedTimeMillis:J

    sub-long v0, v2, v4

    cmp-long v4, v0, v6

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmp-long v4, v0, v6

    if-lez v4, :cond_0

    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    goto :goto_0
.end method

.method private resetErrorMessage()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBouncerStatusText(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private setBouncerStatusText(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mClearBouncerTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public checkTalkBackEnabled()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "(?i).*com.google.android.marvin.talkback.TalkBackService.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTalkbackEnabled:Z

    :cond_0
    return-void
.end method

.method public cleanUp()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->cleanUp()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public dismissKeyguard()V
    .locals 4

    const/16 v3, 0x11

    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "dismissKeyguard()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getLockoutAttemptDeadlineforchina()J
    .locals 10

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v1, v6, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    cmp-long v1, v2, v8

    if-eqz v1, :cond_0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const-wide/16 v2, -0x1

    :cond_0
    return-wide v2
.end method

.method protected handleAttemptLockout(J)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$12;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method protected handleAttemptLockoutForChina(J)V
    .locals 11

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    :cond_1
    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;

    sub-long v2, p1, v8

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public hideBouncer(I)V
    .locals 5

    const/16 v4, 0xa

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->showHideBouncerKeyguardMessageArea(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

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

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    new-instance v0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$6;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "keyboard ConfigurationChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isSupportMobileKeyboard:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCurrentMobileKeyboard:I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "onFinishInflate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$id;->kg_spass_status:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->kg_spass_bouncer_status:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$id;->kg_spass_animation:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->kg_spass_backup_password:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$5;-><init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_animation_margin_bottom_attribution:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginAttributionEnabled:I

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->kg_spass_unlock_animation_margin_bottom_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAnimationBottomMarginNormal:I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->makeAnimations()V

    return-void
.end method

.method public onInit(I)V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0xa

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->pokeWakelockWithTimeCheck()V

    iget-boolean v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTouchEnabled:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent( ev.getActionMasked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v4, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x12

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTouchEnabled:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "handleShowErrorMessage( mBackupPasswordButton )"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mErrorDialog:Landroid/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public onResume(I)V
    .locals 10

    const-wide/16 v8, 0x7d0

    const-wide/16 v6, 0x0

    const/16 v4, 0xa

    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTouchEnabled:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getLockoutAttemptDeadlineforchina()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-lez v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockoutForChina(J)V

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mResumedTimeMillis:J

    return-void

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "onResume(setPermanentlyLocked -- false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearSecBiometricUnlockAttempt()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.lockoutattemptdeadlineforchina"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHasWindowFocus:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->onResume(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_6

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHasWindowFocus:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->onResume(I)V

    :cond_7
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxSecBiometricUnlockAttemptsReached()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v2

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    const-string v0, "KeyguardSPassUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(): hasWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHasWindowFocus:Z

    iget-boolean v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onWindowFocusChanged - get focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->reset()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "KeyguardSPassUnlockView"

    const-string v1, "onWindowFocusChanged - loosing focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->stopSensor()V

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    const-wide/16 v4, 0x0

    const-string v2, "KeyguardSPassUnlockView"

    const-string v3, "reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->getLockoutAttemptDeadlineforchina()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockoutForChina(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->reset()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setAttributionInfoView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributionView:Landroid/view/View;

    return-void
.end method

.method public setAttributionViewEnabled(Z)V
    .locals 5

    const/16 v4, 0xf

    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAttributionViewEnabled( enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mTouchEnabled:Z

    iput-boolean p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mAttributeViewEnabled:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setSpassCallback(Lcom/android/keyguard/sec/KeyguardSpassUnlockThread$SpassCallback;)V

    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mKeyguardSpassUnlockThread:Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/KeyguardSpassUnlockThread;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_0
    return-void
.end method

.method public showAutoWipePopup()V
    .locals 4

    const/16 v3, 0x10

    const-string v1, "KeyguardSPassUnlockView"

    const-string v2, "showAutoWipePopup()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showBackupPassword()V
    .locals 3

    const/16 v2, 0xd

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showBouncer(I)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->resetErrorMessage()V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mStatusText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->showHideBouncerKeyguardMessageArea(Z)V

    return-void
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xb

    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorMessage( errorMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showErrorPopup(I)V
    .locals 5

    const/16 v4, 0xc

    const-string v1, "KeyguardSPassUnlockView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showErrorPopup( resid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 8

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerStatusText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v2, v0, v6

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedSecBiometricUnlockAttempts()I

    move-result v2

    const/4 v5, 0x5

    if-ge v2, v5, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mMobileKeyboard:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/keyguard/R$string;->kg_fingerprints_instructions_with_mobile_keyboard:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(I)V

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_2
    iput-boolean v3, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mEMAPress:Z

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    sget v2, Lcom/android/keyguard/R$string;->kg_fingerprints_bouncer_instructions:I

    invoke-direct {p0, v2}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->setBouncerStatusText(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBouncerEMA:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->mBackupPasswordButton:Landroid/widget/Button;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_2
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

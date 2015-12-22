.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/keyguard/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$18;,
        Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/KeyguardPatternView$OneHandMode;,
        Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I

.field private static final DEBUG:Z = true

.field protected static final HINT_MESSAGE_A_SEC:I = 0x3e8

.field protected static final HINT_MESSAGE_DURATION:I = 0x1388

.field private static final INSTRUCTION_MESSAGE_WAIT_TIME:I = 0x7d0

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "SecurityPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final VIBRATE_DURATION:I = 0x64


# instance fields
.field private isBouncerShowing:Z

.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field private mBackUpButtonView:Landroid/view/View;

.field private mBackupPINButton:Landroid/widget/Button;

.field private mBottomAreaNormal:Landroid/view/View;

.field private mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerKMA:Landroid/view/View;

.field private mCMASTextViewPattern:Landroid/widget/TextView;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field mClearMessageRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEMAPress:Z

.field private mEcaBottomView:Landroid/view/View;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mFailedTextTimer:Landroid/os/CountDownTimer;

.field private mForgotPatternButton:Landroid/widget/Button;

.field protected mHandler:Landroid/os/Handler;

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInstructionsMessageRunnable:Ljava/lang/Runnable;

.field private mIsPassInputEventToEffectView:Z

.field private mIsTactileFeedbackEnabled:Z

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

.field private mLastPokeTime:J

.field private mLeftArrowImage:Landroid/widget/ImageButton;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

.field private mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

.field private mOnehandClickLitener:Landroid/view/View$OnClickListener;

.field private mOnehandLockPattern:Landroid/view/View;

.field private mPasswordTimeTick:I

.field private mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

.field private mRightArrowImage:Landroid/widget/ImageButton;

.field private mRightPressed:Z

.field private mSecPatternArea:Landroid/view/View;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityTextViewDisplay:Landroid/widget/TextView;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTotalFailedPatternAttempts:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mVibraterService:Landroid/os/SystemVibrator;

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
    sput v0, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    iput v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    iput-boolean v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$4;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$10;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$15;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$16;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardPatternView$16;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/keyguard/sec/KeyguardProperties;->usePatternBGEffect(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000e

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    new-instance v0, Lcom/android/keyguard/DisappearAnimationUtils;

    const-wide/16 v2, 0x7d

    const v4, 0x3f99999a    # 1.2f

    const v5, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000f

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    return-void

    :cond_1
    move v0, v8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/sec/SecLockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/SystemVibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardPatternView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return p1
.end method

.method static synthetic access$1708(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPasswordTimeTick:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardPatternView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardPatternView$FooterMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardPatternView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/keyguard/KeyguardPatternView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardPatternView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method private disableDevicePermanently()V
    .locals 7

    const/4 v1, 0x1

    const-string v0, "SecurityPatternView"

    const-string v2, "disableDevicePermanently start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v2, Lcom/android/keyguard/KeyguardPatternView;

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

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    const v3, 0x1040b0c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->faceunlock_multiple_failures:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSimpleHelpText()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x1388

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyTabletUX()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_instructions:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    goto :goto_0
.end method

.method private enableClipping(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$8;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$8;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$8;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private initCMASText()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPresidentialCMASFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SecurityPatternView"

    const-string v1, "[SPR] Presidential Alert!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_spr:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_cmas:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto :goto_0

    :cond_2
    const-string v0, "SecurityPatternView"

    const-string v1, "[No SPR] Emergency Alert!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_cmas_text_vzw:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const-string v0, "SecurityPatternView"

    const-string v1, "[No USA model] disable CMAS Text!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
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

.method private isDeviceDisabledForMaxFailedAttempt()Z
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "enterprise_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v3

    const-string v4, "SecurityPatternView"

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

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    const-string v4, "SecurityPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current failed attempt for device  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    const-string v4, "SecurityPatternView"

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

.method private isHintMessageArea()Z
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

.method private isOnehandMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isOneHandOperationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTactileFeedbackEnabled()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLegacyUX()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_vibration_feedback"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPatternView$AccountAnalyzer;->start()V

    return-void
.end method

.method private movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800003

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x800005

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->keyguard_one_hand_pattern_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private registerOnehandAnyScreenObserver()V
    .locals 4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_running"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private resizeKeyboardScreen()V
    .locals 7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v5, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isMobileKeygboardConnected(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_min_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_view_max_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_pattern_message_area_max_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setOnehandPatternView()V
    .locals 6

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x51

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "onehand_direction"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_5

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightPressed:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Right:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/android/keyguard/KeyguardPatternView$OneHandMode;->Left:Lcom/android/keyguard/KeyguardPatternView$OneHandMode;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->movePatternLock(Lcom/android/keyguard/KeyguardPatternView$OneHandMode;)V

    goto :goto_0
.end method

.method private unregisterOnehandAnyScreenObserver()V
    .locals 4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandAnyScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SecurityPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Observer not registered : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastFooterMode:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/keyguard/KeyguardPatternView$18;->$SwitchMap$com$android$keyguard$KeyguardPatternView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestPhoneUX()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    sget-object v5, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-eq p1, v5, :cond_4

    sget-object v5, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-ne p1, v5, :cond_0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v5, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    if-ne p1, v5, :cond_c

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->pattern_bottom_area_button_area_min_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    sget v5, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_5
    :goto_2
    if-eqz v1, :cond_0

    sget v5, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v5, "SecurityPatternView"

    const-string v6, "mode normal"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v5, :cond_6

    new-instance v5, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_1
    const-string v5, "SecurityPatternView"

    const-string v6, "mode ForgotLockPattern"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v5, :cond_7

    new-instance v6, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, p0

    :goto_4
    invoke-direct {v6, v5}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto/16 :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_4

    :pswitch_2
    const-string v5, "SecurityPatternView"

    const-string v6, "mode BackupPIN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    if-nez v5, :cond_a

    new-instance v6, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, p0

    :goto_5
    invoke-direct {v6, v5}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_a
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateCMASText()V

    goto/16 :goto_1

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_5

    :pswitch_3
    const-string v5, "SecurityPatternView"

    const-string v6, "mode VerifyUnlocked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$dimen;->pattern_bottom_area_button_area_max_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    sget v5, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "SecurityPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V

    return-void
.end method

.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14

    if-eqz p7, :cond_0

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    :cond_0
    if-eqz p7, :cond_2

    move/from16 v2, p6

    :goto_0
    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v2, 0x0

    iget v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    aput v4, v3, v2

    const/4 v4, 0x1

    if-eqz p7, :cond_3

    const/4 v2, 0x0

    :goto_1
    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$13;

    move/from16 v0, p7

    invoke-direct {v2, p0, v0, p1}, Lcom/android/keyguard/KeyguardPatternView$13;-><init>(Lcom/android/keyguard/KeyguardPatternView;ZLcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p9, :cond_1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$14;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardPatternView$14;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->invalidate()V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move/from16 v2, p6

    goto :goto_1
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttemptMessage(I)Ljava/lang/CharSequence;
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v6, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    sub-int v3, v0, p1

    :goto_1
    if-ne v3, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

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
    rsub-int/lit8 v3, p1, 0x5

    goto :goto_1

    :cond_2
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    if-le v3, v4, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

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
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public getFailedAutoWipeAttemptMessage()Ljava/lang/CharSequence;
    .locals 8

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v1, ""

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v0

    rsub-int/lit8 v2, v0, 0x5

    if-ne v2, v5, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

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

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/keyguard/R$string;->kg_n_attempts_remaining:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method protected isCountDownTimerRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
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

    new-instance v0, Lcom/android/keyguard/KeyguardPatternView$9;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$9;-><init>(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->registerOnehandAnyScreenObserver()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "SecurityPatternView"

    const-string v1, "onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->unregisterOnehandAnyScreenObserver()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "input_method"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v1, :cond_b

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/sec/SecLockPatternView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setSaveEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    new-instance v4, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mPatternUpdatorCallbacks:Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/sec/SecLockPatternView;->setPatternCallback(Lcom/android/keyguard/sec/SecLockPatternView$PatternUpdatorCallback;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/keyguard/sec/SecLockPatternView;->setInStealthMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setTactileFeedbackEnabled(Z)V

    sget v1, Lcom/android/keyguard/R$id;->keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_normal:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomAreaNormal:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_cmas_text_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$5;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setOnTouchEventHandlerForKeyguardEffect(Lcom/android/internal/widget/LockPatternView$OnTouchEventHandlerForKeyguardEffect;)V

    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_forgot_spass_button_text:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$6;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    sget v3, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$7;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardPatternView$7;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->maybeEnableFallback(Landroid/content/Context;)V

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_eca:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    :cond_3
    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    sget v2, Lcom/android/keyguard/KeyguardPatternView;->BOUNCER_FRAME_BACKGROUND_COLOR:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_4
    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_6

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isOnehandMode()Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lcom/android/keyguard/R$id;->onehand_lockpattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandLockPattern:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->lockPatternView:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecPatternArea:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->onehand_left_arrow_pattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLeftArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_left_handed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    sget v1, Lcom/android/keyguard/R$id;->onehand_right_arrow_pattern:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mOnehandClickLitener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mRightArrowImage:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_one_hand_operation_right_handed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    :cond_a
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsTactileFeedbackEnabled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mVibraterService:Landroid/os/SystemVibrator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->initCMASText()V

    return-void

    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_c
    move v1, v3

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mFailedTextTimer:Landroid/os/CountDownTimer;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mIsPassInputEventToEffectView:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long v0, v4, v6

    if-eqz v2, :cond_1

    const-wide/16 v4, 0x1af4

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v5}, Lcom/android/keyguard/KeyguardPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/sec/SecLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    const-string v0, "SecurityPatternView"

    const-string v1, "onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const-string v2, "SecurityPatternView"

    const-string v3, "reset"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->enableInput()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/keyguard/sec/SecLockPatternView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->resizeKeyboardScreen()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->setOnehandPatternView()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEnableFallback:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_3

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTotalFailedPatternAttempts:I

    if-lt v2, v5, :cond_4

    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    :cond_4
    sget-object v2, Lcom/android/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardPatternView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->disableDevicePermanently()V

    goto :goto_1
.end method

.method protected setHintOrMessageText(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;Z)V
    .locals 1

    const/16 v0, 0x1388

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(Ljava/lang/CharSequence;ZI)V

    return-void
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;ZI)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateBlackTextOnWhiteWallpaper()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, p1, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const-string v2, "ko"

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$dimen;->kg_status_help_font_size_kor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    const/16 v2, 0x3e8

    if-ne p3, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    if-lez p3, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    int-to-long v4, p3

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$17;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$17;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method protected setNullHintMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mClearMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showBouncer(I)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardPatternView;->isBouncerShowing:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaBottomView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardPatternView;->showHideBouncerKeyguardMessageArea(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mInstructionsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCenteredMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p0

    :goto_1
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerKMA:Landroid/view/View;

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEMAPress:Z

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->isCountDownTimerRunning()Z

    move-result v1

    if-nez v1, :cond_4

    sget v1, Lcom/android/keyguard/R$string;->kg_pattern_bouncer_instructions:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardPatternView;->setHintOrMessageText(IZ)V

    :cond_4
    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_1

    :cond_7
    move-object v0, p0

    goto :goto_1
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$11;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternView$11;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xdc

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v8}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecLockPatternView;->clearPattern()V

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/DisappearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/sec/SecLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/SecLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$12;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$12;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/DisappearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    iget-object v6, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v6}, Lcom/android/keyguard/DisappearAnimationUtils;->getStartTranslation()F

    move-result v6

    neg-float v6, v6

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v6, v8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/keyguard/DisappearAnimationUtils;

    invoke-virtual {v8}, Lcom/android/keyguard/DisappearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/DisappearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->keyguard_message_area_hint_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public updateCMASText()V
    .locals 7

    const/16 v6, 0x8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isLatestUX()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableNoti = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isUSAFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isShowingCMAS()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SecurityPatternView"

    const-string v4, "updateCMASText( setVisibility = VISIBLE )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "SecurityPatternView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCMASText() can not found setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mCMASTextViewPattern:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

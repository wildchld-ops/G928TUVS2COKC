.class public Lcom/android/keyguard/KeyguardUniversalLockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUniversalLockView$15;,
        Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;,
        Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;,
        Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;
    }
.end annotation


# static fields
.field private static final BOUNCER_FRAME_BACKGROUND_COLOR:I = 0x0

.field private static final DEBUG:Z = true

.field private static RIGHT_PASSWORD_DETECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardUniversalLockView"

.field private static final UNLOCK_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final VIBRATE_DURATION:I = 0x64

.field private static final WAIT_TIME_BETWEEN_INPUTS:J = 0x3e8L

.field private static WRONG_PASSWORD_DETECTED:I


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_DOT_THRESHOLD:I

.field private DOT_MARGIN_LEFT:D

.field private DOT_MARGIN_RIGHT:D

.field private final MAX_DOTS_ALLOWED:I

.field private WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

.field _TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private isChecking:Z

.field private isSleeping:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mBackUpButtonView:Landroid/view/View;

.field private mBackupPINButton:Landroid/widget/Button;

.field private mBottomAreaNormal:Landroid/view/View;

.field private mBouncerEMA:Landroid/view/View;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mBouncerKMA:Landroid/view/View;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelDirectionRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionLockLockedOutMessage:Landroid/widget/TextView;

.field private mDirectionLockTextView:Landroid/widget/TextView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mDisappearYTranslation:I

.field private mDot:Landroid/widget/ImageView;

.field private mDotAnimator:Landroid/animation/ValueAnimator;

.field private mDotBackground:Landroid/graphics/drawable/Drawable;

.field private mDotLayout:Landroid/widget/LinearLayout;

.field private mDotList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDotListAnimator:Landroid/animation/ValueAnimator;

.field private mEMAPress:Z

.field private mEcaBottomView:Landroid/view/View;

.field private mEcaView:Landroid/view/View;

.field private mEnableFallback:Z

.field private mErrorMessage:Ljava/lang/String;

.field private mErrorTextEnterAnim:Landroid/view/animation/Animation;

.field private mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mErrorTextExitAnim:Landroid/view/animation/Animation;

.field private mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

.field private mForgotUniversalLockButton:Landroid/widget/Button;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mIsBouncerMode:Z

.field private mKeyguardBouncerFrameView:Landroid/view/View;

.field private mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastFooterMode:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSecurityTextViewDisplay:Landroid/widget/TextView;

.field private mShadowColor:I

.field private mShowArrow:Z

.field private mTextColor:I

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

.field private mTotalFailedUniversalLockAttempts:I

.field mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseBlackTextOnWhiteWallpaper:Z

.field private mVibraterService:Landroid/os/Vibrator;

.field private mWhiteWallpaperObserver:Landroid/database/ContentObserver;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x23

    sput v0, Lcom/android/keyguard/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I

    const/16 v0, 0x25

    sput v0, Lcom/android/keyguard/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUniversalLockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    const/16 v2, 0x16

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->MAX_DOTS_ALLOWED:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v2, -0x1b58

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastPokeTime:J

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$1;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCancelDirectionRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEMAPress:Z

    const/16 v2, 0x50

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    sget-object v2, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    const-string v2, "white_lockscreen_wallpaper"

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    const/high16 v2, -0x80000000

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShadowColor:I

    const v2, -0xbbbbbc

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextColor:I

    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$2;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$3;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$4;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$11;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$11;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    new-instance v2, Lcom/android/keyguard/KeyguardUniversalLockView$12;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$12;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->makeAnimations()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUniversalLockView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastPokeTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardUniversalLockView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastPokeTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->handleAndPerformDotAnimations()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardUniversalLockView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardUniversalLockView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return p1
.end method

.method static synthetic access$1608(Lcom/android/keyguard/KeyguardUniversalLockView;)I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUniversalLockView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/keyguard/KeyguardUniversalLockView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUniversalLockView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateErrorText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUniversalLockView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUniversalLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEnableFallback:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEnableFallback:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUniversalLockView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardUniversalLockView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEMAPress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private clearDots()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    return-void
.end method

.method private dipToPixels(D)D
    .locals 5

    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in dipToPixels()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    double-to-float v2, p1

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method private disableDevicePermanently()V
    .locals 3

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in disableDevicePermanently()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const v2, 0x1040b0c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 3

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in displayDefaultSecurityMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private handleAndPerformDotAnimations()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_2
    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    double-to-int v1, v2

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    double-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDot:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in handleAttemptLockout()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_1
    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$13;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardUniversalLockView$13;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$13;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private instantiateWallpaperContentObserverIfRequired()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "mWhiteWallpaperObserver  was null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$14;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView$14;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method private isCenteredMessageArea()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in isCenteredMessageArea()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "in isDeviceDisabledForMaxFailedAttempt()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

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

    const-string v4, "KeyguardUniversalLockView"

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

    const-string v4, "KeyguardUniversalLockView"

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
    const-string v4, "KeyguardUniversalLockView"

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
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in isHintMessageArea()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

.method private makeAnimations()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_error_text_enter_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextEnterAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineIn33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$anim;->keyguard_spass_error_text_exit_animation:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnimListner:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mErrorTextExitAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private maybeEnableFallback(Landroid/content/Context;)V
    .locals 3

    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in maybeEnableFallback()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/accounts/AccountManager;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$AccountAnalyzer;->start()V

    return-void
.end method

.method private resetmTimer()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_0
    return-void
.end method

.method private updateErrorText(I)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsAutoWipe:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_universal_lock_vzw:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$string;->kg_wrong_universal_lock:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "in updateFooter()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLastFooterMode:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/keyguard/KeyguardUniversalLockView$15;->$SwitchMap$com$android$keyguard$KeyguardUniversalLockView$FooterMode:[I

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isAmericanoLook()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    if-eq p1, v4, :cond_2

    sget-object v4, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    if-ne p1, v4, :cond_0

    :cond_2
    const/4 v1, 0x0

    sget-object v4, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    if-ne p1, v4, :cond_8

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_max_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_0

    sget v4, Lcom/android/keyguard/R$id;->keyguard_emergency_button_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_0
    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "mode normal"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "mDirectionLockTextView IS NOT NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIsBouncerMode:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_normal_mode:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_1
    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "mode ForgotLockUniversal changing to BackupPIN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    :pswitch_2
    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "mode BackupPIN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isCountDownTimerRunning()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->displayDefaultSecurityMessage()V

    :cond_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isCenteredMessageArea()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v4, p0

    :goto_4
    invoke-direct {v5, v4}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_4

    :pswitch_3
    const-string v4, "KeyguardUniversalLockView"

    const-string v5, "mode VerifyUnlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBottomAreaNormal:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$dimen;->keyguard_bottom_area_emergency_button_area_min_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setMaxLines(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    sget v4, Lcom/android/keyguard/R$id;->emergency_call_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setMaxLines(I)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method checkForCorrectPassword()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "Checking For Correct Password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUniversalLockView"

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

    iput-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    return-void
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in getCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public getFailedAttempts()I
    .locals 6

    const-string v3, "KeyguardUniversalLockView"

    const-string v4, "in getFailedAttempts()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttemptswithITPolicy(I)I

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v1

    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in hasOverlappingRendering()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3

    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in hideBouncer()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaBottomView:Landroid/view/View;

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->showHideBouncerKeyguardMessageArea(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method protected isCountDownTimerRunning()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in isCountDownTimerRunning()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in needsInput()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public needsShowClockandNotifications()Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in needsShowClockandNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onAttachedToWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->instantiateWallpaperContentObserverIfRequired()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onDetachedFromWindow()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "Unregistered the ContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mWhiteWallpaperObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v9, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const-string v4, "KeyguardUniversalLockView"

    const-string v7, "in onFinishInflate()"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v4, :cond_9

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v4, Lcom/android/keyguard/R$id;->directionLockView:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/DirectionLockView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    new-instance v4, Landroid/speech/tts/TextToSpeech;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->_TTSListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v4, v7, v8}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "tts_default_rate"

    const/16 v8, 0x64

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v4, "KeyguardUniversalLockView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTextToSpeech Rate - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    int-to-float v7, v1

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v4, v7}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const-string v7, "accessibility"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_vibration"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playVibration:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_voice"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_visible"

    invoke-static {v4, v7, v6, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShowArrow:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "universal_lock_beep"

    invoke-static {v4, v7, v5, v9}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playBeep:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mHashMap:Ljava/util/HashMap;

    const-string v7, "com.samsung.SMT.KEY_PARAM"

    const-string v8, "DISABLE_NOTICE_POPUP"

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$dimen;->universal_lock_keyguard_arrow_size:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    :goto_5
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShowArrow:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playVoice:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playVibration:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->playBeep:Z

    invoke-virtual {v4, v7}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4, v6}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    sget v4, Lcom/android/keyguard/R$id;->direction_lock_text_view:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    new-instance v4, Lcom/android/keyguard/KeyguardUniversalLockView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$5;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    sget v4, Lcom/android/keyguard/R$id;->direction_lock_locked_out_message_bouncer:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_emergency_carrier_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_normal:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBottomAreaNormal:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->forgot_password_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    sget v4, Lcom/android/keyguard/R$id;->backup_pin_button:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_forgot_universal_lock_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mForgotUniversalLockButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardUniversalLockView$6;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$6;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    sget v7, Lcom/android/keyguard/R$string;->kg_lockscreen_backup_pin_button_text:I

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setText(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackupPINButton:Landroid/widget/Button;

    new-instance v7, Lcom/android/keyguard/KeyguardUniversalLockView$7;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$7;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->maybeEnableFallback(Landroid/content/Context;)V

    new-instance v4, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/android/keyguard/R$id;->sec_keyguard_bottom_area_eca:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaBottomView:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->textview_keyguard_message_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    const-string v4, "KeyguardUniversalLockView"

    const-string v7, "in onFinishInflate() mSecurityTextViewDisplay IS NOT NULL"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_4
    sget v4, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameViewGroup:Landroid/view/ViewGroup;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    sget v4, Lcom/android/keyguard/R$id;->keyguard_message_area_bouncer:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerKMA:Landroid/view/View;

    sget v4, Lcom/android/keyguard/R$id;->sec_emergency_button_area:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerEMA:Landroid/view/View;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v4, :cond_5

    const-string v4, "KeyguardUniversalLockView"

    const-string v7, "in onFinishInflate() mSecurityMessageDisplay IS NOT NULL"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessageAreaVisiblity(Z)V

    :cond_5
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isCenteredMessageArea()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    sget v4, Lcom/android/keyguard/R$id;->keyguard_message_area_backup:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_7

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v7, "vibrator"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mVibraterService:Landroid/os/Vibrator;

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v10, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v12, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    sget v4, Lcom/android/keyguard/R$id;->dot_layout:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_left_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_right_margin:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iput-wide v8, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$drawable;->keyguard_universal_view_dot_circle:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    iget v7, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    div-int/lit8 v7, v7, 0x64

    iget v8, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    mul-int/2addr v7, v8

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardUniversalLockView$8;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$8;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/KeyguardUniversalLockView$9;

    invoke-direct {v7, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$9;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/android/keyguard/R$dimen;->dot_size:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-double v8, v4

    iget-wide v10, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_LEFT:D

    add-double/2addr v8, v10

    iget-wide v10, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->DOT_MARGIN_RIGHT:D

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    div-double v2, v8, v10

    const/4 v4, 0x2

    new-array v4, v4, [F

    double-to-float v7, v2

    aput v7, v4, v6

    aput v12, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    iget v5, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ANIMATION_DURATION:I

    div-int/lit8 v5, v5, 0x64

    iget v6, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->ARROW_DOT_THRESHOLD:I

    mul-int/2addr v5, v6

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDotListAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/keyguard/KeyguardUniversalLockView$10;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardUniversalLockView$10;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_9
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_a
    move v4, v6

    goto/16 :goto_1

    :cond_b
    move v4, v6

    goto/16 :goto_2

    :cond_c
    move v4, v6

    goto/16 :goto_3

    :cond_d
    move v4, v6

    goto/16 :goto_4

    :cond_e
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView()Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;

    goto/16 :goto_5

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    return-void
.end method

.method public onResume(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "in onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->reset()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateBlackTextOnWhiteWallpaper()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onTouchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in onWindowFocusChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->reset()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x5

    const-string v2, "KeyguardUniversalLockView"

    const-string v3, "in reset()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->handleAttemptLockout(J)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts(IZ)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->isVerifyUnlockOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->VerifyUnlocked:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEnableFallback:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    if-lt v2, v5, :cond_2

    sget-object v2, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->ForgotLockUniversal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->savedBackupPinExists()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTotalFailedUniversalLockAttempts:I

    if-lt v2, v5, :cond_3

    sget-object v2, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->BackupPIN:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;->Normal:Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;

    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateFooter(Lcom/android/keyguard/KeyguardUniversalLockView$FooterMode;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->disableDevicePermanently()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 3

    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "in showBouncer()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaBottomView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mKeyguardBouncerFrameView:Landroid/view/View;

    invoke-static {v1, v0, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncerWithScaleAnimation(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/view/View;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUniversalLockView;->showHideBouncerKeyguardMessageArea(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEcaView:Landroid/view/View;

    goto :goto_0
.end method

.method public showHideBouncerKeyguardMessageArea(Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v1, "KeyguardUniversalLockView"

    const-string v4, "in showHideBouncerKeyguardMessageArea()"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mIsBouncerMode:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerKMA:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerKMA:Landroid/view/View;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isCenteredMessageArea()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v0, p0

    :goto_1
    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerKMA:Landroid/view/View;

    :cond_0
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerEMA:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/sec/KeyguardProperties;->isPhoneShortcutEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBouncerEMA:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEMAPress:Z

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mEMAPress:Z

    :cond_3
    if-nez p1, :cond_8

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v1, v3

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mBackUpButtonView:Landroid/view/View;

    goto :goto_1

    :cond_7
    move-object v0, p0

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isHintMessageArea()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->isCountDownTimerRunning()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_universal_lock_instructions_bouncer_mode:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public showUsabilityHint()V
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in showUsabilityHint()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startAppearAnimation()V
    .locals 2

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in startAppearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    const/4 v2, 0x0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in startDisappearAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->clearDots()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUniversalLockView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    return v0
.end method

.method protected updateBlackTextOnWhiteWallpaper()V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "KeyguardUniversalLockView"

    const-string v1, "in updateBlackTextOnWhiteWallpaper()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->universal_lock_bouncer_message_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mSecurityTextViewDisplay:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->universal_lock_bouncer_message_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$color;->universal_lock_bouncer_message_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockLockedOutMessage:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getShadowDy()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView;->mShadowColor:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_2
.end method

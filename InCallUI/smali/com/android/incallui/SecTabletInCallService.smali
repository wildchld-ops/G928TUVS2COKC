.class public Lcom/android/incallui/SecTabletInCallService;
.super Lcom/android/incallui/BaseInCallService;
.source "SecTabletInCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;
    }
.end annotation


# instance fields
.field private forceRecreate:Z

.field private mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

.field private mBroadcastListener:Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;

.field private mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

.field private mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

.field private mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

.field private mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

.field private mContext:Landroid/content/Context;

.field private mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

.field private mHander:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mInCallMenu:Lcom/android/incallui/InCallMenu;

.field private mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

.field private mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

.field private mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

.field private mIndicator:Landroid/view/ViewGroup;

.field private mIndicatorTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDestroyed:Z

.field private mIsFinishing:Z

.field private mIsForegroundActivity:Z

.field private mIsHideAnimationRunning:Z

.field private mIsNewOutgoingCall:Z

.field private mIsRequerHomeKeyEvent:Z

.field private mIsShowing:Z

.field public mIsVTConfCall:Z

.field private mMinimizeBtn:Landroid/widget/ImageButton;

.field private mMinimizeClickListener:Landroid/view/View$OnClickListener;

.field private mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

.field private mPostCharDialog:Landroid/app/AlertDialog;

.field private mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

.field private mRecreateService:Z

.field private mRootView:Lcom/android/incallui/SecTabletRootView;

.field private mRotationEnabledObserver:Landroid/database/ContentObserver;

.field private mStatusBarHeight:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

.field private mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

.field private mWidth:I

.field private mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private margin_bottom:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/BaseInCallService;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    iput-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    iput-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsVTConfCall:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->forceRecreate:Z

    iput-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsHideAnimationRunning:Z

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$1;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastListener:Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$2;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$6;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$6;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHander:Landroid/os/Handler;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$7;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$8;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$9;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$9;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicatorTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecTabletInCallService$10;-><init>(Lcom/android/incallui/SecTabletInCallService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    new-instance v0, Lcom/android/incallui/SecTabletInCallService$13;

    invoke-direct {v0, p0}, Lcom/android/incallui/SecTabletInCallService$13;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SecTabletInCallService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SecTabletInCallService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/incallui/SecTabletInCallService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsHideAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/incallui/SecTabletInCallService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->delayedStop()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/incallui/SecTabletInCallService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->needToShowTabLock()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->setEnableMinimizeButton()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/incallui/SecTabletInCallService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/incallui/SecTabletInCallService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/incallui/SecTabletInCallService;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/SecTabletInCallService;->margin_bottom:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/SecTabletInCallService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SecTabletInCallService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/incallui/SecTabletInCallService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/SecTabletInCallService;->onWindowRotationChanged(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/SecTabletInCallService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/SecTabletInCallService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->forceRecreate:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/SecTabletInCallService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SecTabletInCallService;->forceRecreate:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->startLockScreenDuringCallService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/PhoneVoiceRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/SecTabletInCallService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->showGreenBar(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/SecTabletInCallService;)Lcom/android/incallui/SecTabletRootView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/SecTabletInCallService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->showViews()V

    return-void
.end method

.method private animateForDepthIn()V
    .locals 8

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "animateForDepthIn()..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/incallui/SecTabletRootView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f7ae148    # 0.98f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForDepthOut(Z)V
    .locals 8

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v4, "animateForDepthOut()..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v5, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v7, [F

    fill-array-data v6, :array_2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v4, 0xfa

    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    new-instance v5, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v5}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/incallui/SecTabletInCallService$4;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/SecTabletInCallService$4;-><init>(Lcom/android/incallui/SecTabletInCallService;Z)V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7ae148    # 0.98f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f7ae148    # 0.98f
    .end array-data
.end method

.method private animateForSlideIn()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "animateForSlideIn()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v5, v8}, Lcom/android/incallui/SecTabletRootView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletRootView;->getY()F

    move-result v2

    const/high16 v5, 0x43960000    # 300.0f

    add-float v4, v2, v5

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v9, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0x1a1

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateForSlideOut(Z)V
    .locals 9

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "animateForSlideOut()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletRootView;->getY()F

    move-result v4

    const/high16 v5, 0x43960000    # 300.0f

    add-float v2, v4, v5

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    aput v2, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 v6, 0x1a1

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/android/incallui/SecTabletInCallService$5;

    invoke-direct {v5, p0, v4, p1}, Lcom/android/incallui/SecTabletInCallService$5;-><init>(Lcom/android/incallui/SecTabletInCallService;FZ)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private checkIncomingcallAnswerHomekey()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v1, "SecTabletInCallService"

    const-string v2, "checkIncomingcallAnswerHomekey"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private delayedStop()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "SecTabletInCallService"

    const-string v1, "has live call, cancel stop"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SecTabletInCallService"

    const-string v1, "stopping..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    goto :goto_0
.end method

.method private getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method private hideVideoPopup()V
    .locals 2

    const-string v0, "hideVideoPopup"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getVideoPopupService()Lcom/android/incallui/SecVideoPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->hideVideoPopup()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private hideViews(Z)V
    .locals 5

    const/16 v2, 0xa3

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsHideAnimationRunning:Z

    if-nez v1, :cond_0

    const-string v1, "hide"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    const-string v1, "lock_screen_during_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string v1, "stopService LockScreenDuringCall..."

    invoke-static {p0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/LockScreenDuringCall;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletInCallService;->mIsHideAnimationRunning:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.sec.android.app.easylauncher.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.launcher2.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.android.launcher2.LauncherApplication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Launcher is top"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->animateForSlideOut(Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->animateForDepthOut(Z)V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    const-string v1, "SecTabletInCallService"

    const-string v2, "init()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/incallui/SecTabletRootView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ec

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v1, p0}, Lcom/android/incallui/SecTabletRootView;->setSecTabletInCallService(Lcom/android/incallui/SecTabletInCallService;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    const v2, 0x7f10028e

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecTabletRootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicator:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicator:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicator:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->bringToFront()V

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicator:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mIndicatorTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    const v2, 0x7f10028f

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecTabletRootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeBtn:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeBtn:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraAppRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "moveCameraTaskToBack"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->moveCameraTaskToBack()V

    :cond_2
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v0, "InCallActivity.new_outgoing_call"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->needToShowCustomOutgoingAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsNewOutgoingCall:Z

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- internalResolveIntent: mIsNewOutgoingCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsNewOutgoingCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsNewOutgoingCall:Z

    goto :goto_0
.end method

.method private isAudio(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->getAudioMode()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchVideoPopup(I)V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "launchVideoPopup"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->shouldLaunchVideoPopup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecVideoPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const-string v0, "shouldLaunchVideoPopup()... false"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private needToShowTabLock()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->isAudio(I)Z

    move-result v0

    return v0
.end method

.method private onWindowRotationChanged(IZ)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/secservice/SecVideoCallManager;->getInstance()Lcom/android/incallui/secservice/SecVideoCallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/secservice/SecVideoCallManager;->onWindowRotationChanged(IZ)V

    :cond_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/SecTabletBroadcastReceiver;->getInstance()Lcom/android/incallui/SecTabletBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastListener:Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletBroadcastReceiver;->addListener(Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    invoke-static {}, Lcom/android/incallui/SecTabletBroadcastReceiver;->getFilters()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private registerContentObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/incallui/SecTabletCallVolumeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/SecTabletCallVolumeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/SecTabletInCallService;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cName - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mIWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2, p1, v0, p2}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEnableMinimizeButton()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeBtn:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mMinimizeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private shouldLaunchVideoPopup(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "shouldLaunchVideoPopup: Not video call"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->enabledKidsModeCallApp()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "shouldLaunchVideoPopup: Kids mode"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    packed-switch p1, :pswitch_data_0

    :cond_3
    const-string v0, "shouldLaunchVideoPopup: return true"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :pswitch_0
    const-string v2, "com.android.incallui.SecTabletInCallService"

    invoke-static {v2}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunning(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "shouldLaunchVideoPopup: INCALL_ACTIVITY is top activity"

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showDialpad(Z)V
    .locals 5

    const/4 v1, 0x0

    const-string v2, "SecTabletInCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showDialpad "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletDialpadViewManager;->showDialpad()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/incallui/SecCallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v2

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/incallui/secui/SecUiAdapter;->showCallBannerByDialpad(Z)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v2}, Lcom/android/incallui/SecTabletDialpadViewManager;->hideDialpad()V

    goto :goto_0
.end method

.method private showGreenBar(Z)V
    .locals 5

    const/4 v1, 0x1

    const-string v2, "not_show_call_view_statusbar"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SecTabletInCallService"

    const-string v3, "don\'t show green bar during cover closed"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    const-string v2, "SecTabletInCallService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showGreenBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->hasInCallUiFocus()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    const/4 v1, 0x3

    :cond_3
    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->setCallBackground(I)V

    goto :goto_0
.end method

.method private showPostCharDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "SecTabletInCallService"

    const-string v4, "showPostCharDialog"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postCharWait"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    const v5, 0x7f0b005b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object v2, p1

    const-string v3, "postCharWait"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0d0130

    new-instance v4, Lcom/android/incallui/SecTabletInCallService$11;

    invoke-direct {v4, p0, v2}, Lcom/android/incallui/SecTabletInCallService$11;-><init>(Lcom/android/incallui/SecTabletInCallService;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f0d0131

    new-instance v4, Lcom/android/incallui/SecTabletInCallService$12;

    invoke-direct {v4, p0}, Lcom/android/incallui/SecTabletInCallService$12;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_3
    const-string v3, "postCharPause"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private showRootView()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletRootView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/SecTabletInCallService$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/SecTabletInCallService$3;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private showViews()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "lock_screen_during_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->sendLockScreenEvent()V

    :cond_1
    const-string v1, "full"

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->sendBroadcastToTGroupOn(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->getTopActivity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.easylauncher.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.launcher2.Launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.android.launcher2.LauncherApplication"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Launcher is top"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->animateForSlideIn()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->animateForDepthIn()V

    goto :goto_0
.end method

.method private startLockScreenDuringCallService()V
    .locals 2

    const/4 v1, 0x1

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "startLockScreenDuringCallService"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "- is not foreground"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUniversalSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "- is Universal Switch Enable"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "- is not offhook"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "- is videocall"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTackBackModeOn()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "- isTackBackModeOn"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    const-string v0, "- startService LockScreenDuringCall..."

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/LockScreenDuringCall;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private stopPopup()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecCallPopupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastListener:Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletBroadcastReceiver;->removeListener(Lcom/android/incallui/SecTabletBroadcastReceiver$EventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mBroadcastReceiver:Lcom/android/incallui/SecTabletBroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mVolumeObserver:Lcom/android/incallui/SecTabletCallVolumeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method private updateViewManagers()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallCardViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallCardView;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletCallButtonViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletCallButtonView;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletAnswerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletAnswerView;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletDialpadViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletDialpadView;

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletConferenceManagerView;

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecTabletVideoCallViewManager;->checkAndSet(Z)Lcom/android/incallui/SecTabletVideoCallView;

    :cond_5
    return-void
.end method


# virtual methods
.method public addFlags(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public checkAndControlWindowRoation()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "accelerometer_rotation"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    move v0, v4

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasVideoCall()Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :goto_1
    const-string v5, "volte_cvo_feature"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCVOEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "[orientationListener] controlOrientationListener : Disabled since cvo is false"

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    if-nez v4, :cond_1

    const-string v4, "enableWindowRoation"

    invoke-static {p0, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v3, Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    invoke-direct {v3, p0, p0}, Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;-><init>(Lcom/android/incallui/SecTabletInCallService;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    invoke-virtual {v3}, Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;->enable()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    if-eqz v5, :cond_1

    const-string v5, "disableWindowRoation"

    invoke-static {p0, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    invoke-virtual {v3}, Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;->disable()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/SecTabletInCallService;->onWindowRotationChanged(IZ)V

    goto :goto_2
.end method

.method public clearDigits()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/incallui/SecDialpadUi;->clearDigits()V

    :cond_0
    return-void
.end method

.method public clearFlags(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public closeDrawer()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->getView()Lcom/android/incallui/SecTabletAnswerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->getView()Lcom/android/incallui/SecTabletAnswerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerView;->closeDrawer()V

    :cond_0
    return-void
.end method

.method protected createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    const/4 v6, -0x2

    const/16 v4, 0x7d2

    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    const-string v5, "persona"

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "isKeyguardLocked"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x7de

    :cond_2
    const v1, 0x18c0320

    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidDownloadble()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "add FLAG_SECURE "

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    or-int/lit16 v1, v1, 0x2000

    :cond_3
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    invoke-direct {v2, v4, v1, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v5, 0x50

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v5, "com.android.incallui/com.android.incallui.SecTabletInCallService"

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->updateStartLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    const-string v5, "samsung_screen_timeout_incall"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/16 v6, 0x7530

    iput-wide v6, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v6, 0x4e20

    iput-wide v6, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.userActivityTimeout : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.screenDimDuration "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v2
.end method

.method public dismissDialogForDisconnect()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->getView()Lcom/android/incallui/SecTabletAnswerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->getView()Lcom/android/incallui/SecTabletAnswerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerView;->dismissWaitingCallPopup()V

    :cond_0
    return-void
.end method

.method public dismissInCallMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    invoke-virtual {v0}, Lcom/android/incallui/InCallMenu;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    if-eqz v0, :cond_0

    const-string v0, "- dismissInCallMenu"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletInCallMenuPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public dismissPostCharPauseDialog()V
    .locals 3

    const/16 v2, 0xa2

    const-string v0, "SecTabletInCallService"

    const-string v1, "dismissPostCharPauseDialog"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mPostCharDialog:Landroid/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public displayDialpad(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->isDialpadVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->showDialpad(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/SecCallButtonUi;->animateForMoveDialpad(Z)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->delayedStop()V

    return-void
.end method

.method public forceFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    return-void
.end method

.method public getCallCardManager()Lcom/android/incallui/SecTabletCallCardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    return-object v0
.end method

.method public getConferenceCallManagerShowingState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->getView()Lcom/android/incallui/SecTabletConferenceManagerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->getView()Lcom/android/incallui/SecTabletConferenceManagerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerView;->isFragmentVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getInCallMenu()Lcom/android/incallui/InCallMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-object v0
.end method

.method public getMaxY()I
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public getRecorderMgr()Lcom/android/incallui/PhoneVoiceRecorderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    return-object v0
.end method

.method public getSecAnswerFragment()Lcom/android/incallui/SecAnswerUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletAnswerViewManager;->getView()Lcom/android/incallui/SecTabletAnswerView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->getView()Lcom/android/incallui/SecTabletCallButtonView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->getView()Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecDialpadFragment()Lcom/android/incallui/SecDialpadUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletDialpadViewManager;->getView()Lcom/android/incallui/SecTabletDialpadView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecVideoCallFragment()Lcom/android/incallui/SecVideoCallUi;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletVideoCallViewManager;->getView()Lcom/android/incallui/SecTabletVideoCallView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_0
    return v1
.end method

.method public hideAndStopSelf()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/incallui/SecTabletInCallService;->hideViews(Z)V

    goto :goto_0
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallButtonViewManager;->getView()Lcom/android/incallui/SecTabletCallButtonView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/incallui/SecTabletCallButtonView;->displayDialpad(ZZ)V

    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsDestroyed:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletDialpadViewManager;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsFinishing:Z

    return v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIsShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public minimizeCallScreen()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecTabletInCallService"

    const-string v1, "minimizeCallScreen"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v2}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "onBackPressed()..."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->isDialpadVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/android/incallui/secui/SecUiAdapter;->displayDialpad(ZZ)V

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/android/incallui/SecEventBusManager;->INSTANCE:Lcom/android/incallui/SecEventBusManager;

    new-instance v4, Lcom/android/incallui/SecEventDialpadClicked;

    invoke-direct {v4, v2, v1}, Lcom/android/incallui/SecEventDialpadClicked;-><init>(ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/incallui/SecEventBusManager;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getConferenceCallManagerShowingState()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->showConferenceCallManager(Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->hideAndStopSelf()V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "SecTabletInCallService"

    const-string v1, "onConfigurationChanged "

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, p1}, Lcom/android/incallui/BaseInCallService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 7

    const v6, 0x7f0a0469

    const v5, 0x7f0a0468

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v0, "SecTabletInCallService"

    const-string v1, "onCreate()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/Context;->setTheme(I)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->SetAppTypeFace(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/incallui/SecTabletInCallService;->mIsFinishing:Z

    iput-boolean v2, p0, Lcom/android/incallui/SecTabletInCallService;->mIsDestroyed:Z

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsForegroundActivity:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a046b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->margin_bottom:I

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHeight:I

    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->stopPopup()V

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mIWindowManager:Landroid/view/IWindowManager;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->initView()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/incallui/SecTabletCallCardViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletCallCardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    new-instance v0, Lcom/android/incallui/SecTabletCallButtonViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletCallButtonViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    new-instance v0, Lcom/android/incallui/SecTabletAnswerViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletAnswerViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    new-instance v0, Lcom/android/incallui/SecTabletDialpadViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletDialpadViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    new-instance v0, Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    new-instance v0, Lcom/android/incallui/SecTabletVideoCallViewManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecTabletVideoCallViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    const-string v0, "voice_call_recording"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-direct {v0, p0}, Lcom/android/incallui/PhoneVoiceRecorderManager;-><init>(Lcom/android/incallui/SecTabletInCallService;)V

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startService()V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/BaseInCallComponent;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->checkIncomingcallAnswerHomekey()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/SecTabletInCallService;->requestSystemKeyEvent(IZ)Z

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->addFlags(I)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isOtaMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->checkIncomingcallAnswerHomekey()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, v4, v3}, Lcom/android/incallui/SecTabletInCallService;->requestSystemKeyEvent(IZ)Z

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v0, :cond_5

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->registerBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->registerContentObserver()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->showRootView()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->setEnableMinimizeButton()V

    const-string v0, "block_data_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWidth:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHeight:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v0}, Lcom/android/incallui/PhoneVoiceRecorderManager;->startService()V

    goto/16 :goto_1

    :cond_9
    invoke-static {}, Lcom/android/incallui/SecTabletKeyguardBGService;->getInstance()Lcom/android/incallui/SecTabletKeyguardBGService;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/SecTabletKeyguardBGService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 9

    const/16 v8, 0xc9

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "onDestroy()..."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z

    if-nez v5, :cond_a

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/incallui/SecTabletKeyguardBGService;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v5}, Lcom/android/incallui/SecTabletInCallService;->stopService(Landroid/content/Intent;)Z

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    invoke-direct {p0, v5, v4}, Lcom/android/incallui/SecTabletInCallService;->requestSystemKeyEvent(IZ)Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/InCallPresenter;->setBlockToUpdateNotification(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallStateListener:Lcom/android/incallui/InCallPresenter$InCallStateListener;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->removeListenerOfManager(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecTabletInCallService;->mIncomingCallListener:Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    invoke-virtual {v5, v6}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/incallui/InCallPresenter;->unsetActivity(Lcom/android/incallui/BaseInCallComponent;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->unregisterBroadcastReceiver()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->unregisterContentObserver()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/SecTabletInCallService;->mRotationEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const-string v5, "voice_call_recording"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v5

    if-nez v5, :cond_b

    move v2, v3

    :goto_1
    if-nez v2, :cond_c

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v5}, Lcom/android/incallui/PhoneVoiceRecorderManager;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v5, v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopService(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/incallui/InCallPresenter;->setRecordMgr(Lcom/android/incallui/PhoneVoiceRecorderManager;)V

    iput-object v7, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    :cond_3
    :goto_2
    const-string v5, "block_data_during_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/incallui/TelecomAdapter;->setCallProtectionValue(Z)V

    :cond_4
    const-string v5, "overlay_popup_play"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->hideVideoPopup()V

    :cond_5
    iput-boolean v4, p0, Lcom/android/incallui/SecTabletInCallService;->mIsVTConfCall:Z

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletInCallService;->mIsForegroundActivity:Z

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletCallCardViewManager;->onDestroy()V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mCallButtonManager:Lcom/android/incallui/SecTabletCallButtonViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletCallButtonViewManager;->onDestroy()V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mAnswerViewManager:Lcom/android/incallui/SecTabletAnswerViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletAnswerViewManager;->onDestroy()V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mDialpadManager:Lcom/android/incallui/SecTabletDialpadViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletDialpadViewManager;->onDestroy()V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->onDestroy()V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mVideoCallViewManager:Lcom/android/incallui/SecTabletVideoCallViewManager;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletVideoCallViewManager;->onDestroy()V

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletInCallService;->mIsNewOutgoingCall:Z

    const-string v5, "trying to remove root view"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    invoke-virtual {v5}, Lcom/android/incallui/SecTabletRootView;->removeAllViews()V

    invoke-direct {p0, v3}, Lcom/android/incallui/SecTabletInCallService;->showGreenBar(Z)V

    iput-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsDestroyed:Z

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    invoke-virtual {v3}, Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;->disable()V

    iput-object v7, p0, Lcom/android/incallui/SecTabletInCallService;->mOrientationListener:Lcom/android/incallui/SecTabletInCallService$InCallOrientationListener;

    :cond_6
    invoke-super {p0}, Lcom/android/incallui/BaseInCallService;->onDestroy()V

    iget-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCameraAppRunning()Z

    move-result v3

    if-nez v3, :cond_8

    sget-boolean v3, Lcom/android/incallui/InCallUtils;->isExecuteMoveTaskToBack:Z

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isActiveVideoCall()Z

    move-result v3

    if-nez v3, :cond_9

    :cond_8
    const-string v3, "moveCameraTaskToFront"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallUtils;->moveCameraTaskToFront()V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/android/incallui/SecTabletKeyguardBGService;->getInstance()Lcom/android/incallui/SecTabletKeyguardBGService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Lcom/android/incallui/SecTabletKeyguardBGService;->showKeyguardBGService(Z)V

    goto/16 :goto_0

    :cond_b
    move v2, v4

    goto/16 :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/incallui/SecTabletInCallService;->mRecorderMgr:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-virtual {v5, v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->stopService(Z)V

    goto/16 :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    const/16 v5, 0xa1

    const/4 v4, 0x1

    const-string v0, "SecTabletInCallService"

    const-string v1, "onStartCommand()..."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRecreateService:Z

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/android/incallui/SecTabletInCallService;->mIsFinishing:Z

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->stopSelf()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->updateKeepScreenOnFlag()V

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletInCallService;->internalResolveIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->clearFlags(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/android/incallui/SecTabletInCallService;->showServiceViews(ZZ)V

    goto :goto_0
.end method

.method public sendLockScreenEvent()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->sendLockScreenEvent(Z)V

    return-void
.end method

.method public sendLockScreenEvent(Z)V
    .locals 5

    const/16 v4, 0xa3

    const-string v0, "lock_screen_during_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sendLockScreenEvent"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->startLockScreenDuringCallService()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->needToShowTabLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setInCallMenuInstance(Lcom/android/incallui/InCallMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenu:Lcom/android/incallui/InCallMenu;

    return-void
.end method

.method public setInCallMenuPopup(Lcom/android/incallui/SecTabletInCallMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletInCallService;->mInCallMenuPopup:Lcom/android/incallui/SecTabletInCallMenuPopup;

    return-void
.end method

.method public showConferenceCallManager()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/SecTabletInCallService;->showConferenceCallManager(Z)V

    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->getView()Lcom/android/incallui/SecTabletConferenceManagerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mConferenceManager:Lcom/android/incallui/SecTabletConferenceManagerViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletConferenceManagerViewManager;->getView()Lcom/android/incallui/SecTabletConferenceManagerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecTabletConferenceManagerView;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public showPostCharPauseDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->dismissPostCharPauseDialog()V

    const-string v0, "postCharPause"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletInCallService;->showPostCharDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa2

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->dismissPostCharPauseDialog()V

    const-string v0, "postCharWait"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/SecTabletInCallService;->showPostCharDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public showServiceViews(ZZ)V
    .locals 6

    const/4 v4, 0x3

    const/16 v5, 0x12d

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/InCallUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/SecTabletKeyguardBGService;->getInstance()Lcom/android/incallui/SecTabletKeyguardBGService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/incallui/SecTabletKeyguardBGService;->showKeyguardBGService(Z)V

    :cond_0
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->checkIncomingcallAnswerHomekey()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v4, v1}, Lcom/android/incallui/SecTabletInCallService;->requestSystemKeyEvent(IZ)Z

    iput-boolean v1, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallPresenter;->forceCancelNotification(Z)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->hideVideoPopup()V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->showViews()V

    invoke-static {}, Lcom/android/incallui/CallButtonPresenter;->getInstance()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallButtonPresenter;->refreshMuteState()V

    :cond_3
    :goto_2
    if-nez p1, :cond_8

    :goto_3
    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/android/incallui/SecTabletInCallService;->requestSystemKeyEvent(IZ)Z

    iput-boolean v2, p0, Lcom/android/incallui/SecTabletInCallService;->mIsRequerHomeKeyEvent:Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallPresenter;->setBlockToUpdateNotification(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p2}, Lcom/android/incallui/SecTabletInCallService;->hideViews(Z)V

    const-string v3, "overlay_popup_play"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->launchVideoPopup(I)V

    goto :goto_2

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method public updateCallUI()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/incallui/SecTabletInCallService;->mRootView:Lcom/android/incallui/SecTabletRootView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletInCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/incallui/SecTabletInCallService;->updateViewManagers()V

    goto :goto_0
.end method

.method public updateKeepScreenOnFlag()V
    .locals 3

    const/16 v2, 0x80

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->hasIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "updateKeepScreenOnFlag: add FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->addFlags(I)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "updateKeepScreenOnFlag: clear FLAG_KEEP_SCREEN_ON"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v2}, Lcom/android/incallui/SecTabletInCallService;->clearFlags(I)V

    goto :goto_0
.end method

.method public updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V
    .locals 5

    const/16 v4, 0xa4

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhotoring state state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->getView()Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "call ui.updatePhotoringState"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mCallCardManager:Lcom/android/incallui/SecTabletCallCardViewManager;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardViewManager;->getView()Lcom/android/incallui/SecTabletCallCardView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SecTabletCallCardView;->updatePhotoringState(Lcom/android/services/telephony/common/PhotoringCommon$PhotoringMTState;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "UI not ready update later"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/SecTabletInCallService;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected updateStartLayoutParams(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const v2, 0x7f0a0469

    const v1, 0x7f0a0468

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletInCallService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final EXPAND_THRESHOLD_FACTOR:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final TOUCHSLOP_CLICK:I = 0x1e


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClearAll:Landroid/view/View;

.field mClickEmptySpace:Z

.field private mClosing:Z

.field private mCollapseAfterPeek:Z

.field protected mDisableExpand:Z

.field private mDozingOnDown:Z

.field private mEdgeTapAreaWidth:I

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field private mExpanding:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasLayoutedSinceDown:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mIsCollapseAnimating:Z

.field private mJustPeeked:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekPending:Z

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPeekTouching:Z

.field private final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClickEmptySpace:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableExpand:Z

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private abortAnimations()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelHeightAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private endClosing()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    :cond_0
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private notifyBarPanelExpansionChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyExpandingFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    :cond_0
    return-void
.end method

.method private notifyExpandingStarted()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    :cond_0
    return-void
.end method

.method private onMiddleClicked()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    invoke-static {v2, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method private runPeekAnimation()V
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "expandedHeight"

    new-array v2, v5, [F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v2, v6

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v2, v1, v6

    const-string v2, "translationY"

    new-array v3, v4, [F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    neg-float v4, v4

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_0
.end method

.method private schedulePeek()V
    .locals 3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v0, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method


# virtual methods
.method public cancelPeek()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method public collapse(Z)V
    .locals 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0
.end method

.method public disableExpand(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableExpand:Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v1, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string v0, "T"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " (started)"

    :goto_3
    aput-object v0, v2, v3

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (started)"

    :goto_4
    aput-object v0, v2, v3

    const/16 v3, 0xa

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_5

    const-string v0, "T"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "f"

    goto :goto_0

    :cond_1
    const-string v0, "f"

    goto :goto_1

    :cond_2
    const-string v0, "f"

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, "f"

    goto :goto_5
.end method

.method public expand()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    :cond_0
    return-void
.end method

.method protected fling(FZ)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v3, v0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v3, v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_6

    if-eqz p2, :cond_6

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasNotification()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v10, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v2, "fling, shade locked -> keyguard"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToCover()V

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v1

    if-eqz p2, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 p1, 0x0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    const-wide/16 v4, 0x1f4

    cmp-long v0, v6, v4

    if-lez v0, :cond_8

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_8
    if-eqz v8, :cond_9

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_9
    :goto_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v0, p0, v9, v10}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;ZZ)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    if-nez p2, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getHeight()I

    move-result v4

    int-to-float v5, v4

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->applyDismissing(Landroid/animation/Animator;FFFF)V

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v4

    long-to-float v0, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getCannedFlingDurationFactor()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4
.end method

.method protected flingExpands(FF)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isBelowFalsingThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->getBarState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->isFullyClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getCannedFlingDurationFactor()F
.end method

.method public abstract getClearAll()Landroid/view/View;
.end method

.method protected abstract getClearAllHeight()I
.end method

.method public abstract getClearAllview(FF)Z
.end method

.method protected getContentHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public getExpandedFraction()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public hasNotification()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public instantCollapse()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method public instantExpand()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    return-void
.end method

.method protected isBelowLastNotification(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isCarrierLabelArea(F)Z
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method protected abstract isDozing()Z
.end method

.method public isEmptyXArea(F)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method public isKeyguardState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method protected loadDimens()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    const v2, 0x7f0c0396

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    const v2, 0x7f0c0397

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    const v2, 0x7f0c037e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected abstract onEdgeClicked(Z)V
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEdgeClicked(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->onEdgeClicked(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onMiddleClicked()Z

    move-result v0

    goto :goto_0
.end method

.method protected onExpandingFinished()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    return-void
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x0

    const/high16 v12, 0x41f00000    # 30.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    if-eqz v9, :cond_1

    :cond_0
    move v10, v11

    :goto_0
    return v10

    :cond_1
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v5

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->isCarrierLabelArea(F)Z

    move-result v1

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllview(FF)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAll()Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v10, v11

    goto :goto_0

    :pswitch_1
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClickEmptySpace:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v9, :cond_5

    :cond_4
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v9, :cond_7

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    goto :goto_0

    :cond_7
    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v9

    if-nez v9, :cond_8

    move v9, v10

    :goto_2
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v9, v9, v13

    if-nez v9, :cond_9

    :goto_3
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_8
    move v9, v11

    goto :goto_2

    :cond_9
    move v10, v11

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v9, v6, :cond_3

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v6, :cond_a

    move v3, v11

    :goto_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_1

    :cond_a
    move v3, v10

    goto :goto_4

    :pswitch_3
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v8, v9

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    if-nez v5, :cond_b

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    :cond_b
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v9, v9

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_c

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    neg-float v9, v9

    cmpg-float v9, v0, v9

    if-ltz v9, :cond_d

    :cond_c
    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    :cond_d
    cmpg-float v9, v0, v13

    if-gtz v9, :cond_e

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v9

    if-nez v9, :cond_10

    :cond_e
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    goto/16 :goto_0

    :cond_10
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClickEmptySpace:Z

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float/2addr v9, v12

    cmpg-float v9, v9, v7

    if-gtz v9, :cond_3

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    add-float/2addr v9, v12

    cmpl-float v9, v9, v7

    if-ltz v9, :cond_3

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr v9, v12

    cmpg-float v9, v9, v8

    if-gtz v9, :cond_3

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    add-float/2addr v9, v12

    cmpl-float v9, v9, v8

    if-ltz v9, :cond_3

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->isBelowLastNotification(F)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v2, :cond_3

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClickEmptySpace:Z

    goto/16 :goto_1

    :pswitch_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClearAll:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClickEmptySpace:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0316

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    :cond_0
    const/16 v21, 0x0

    :goto_0
    return v21

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    if-gez v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    if-nez v21, :cond_4

    sget-boolean v21, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->isEmptyXArea(F)Z

    move-result v21

    if-eqz v21, :cond_3

    sget-object v21, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v22, "EmptyXArea, Ignore it"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_8

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    :cond_5
    const/16 v18, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    :cond_6
    :goto_3
    :pswitch_0
    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v21, v0

    if-eqz v21, :cond_29

    :cond_7
    const/16 v21, 0x1

    goto/16 :goto_0

    :cond_8
    const/16 v21, 0x0

    goto :goto_1

    :cond_9
    const/16 v18, 0x0

    goto :goto_2

    :pswitch_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_11

    const/16 v21, 0x1

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    if-nez v21, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v21, v0

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    :cond_f
    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->schedulePeek()V

    goto/16 :goto_3

    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_12
    const/16 v21, 0x0

    goto :goto_5

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v0, v14, :cond_6

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    if-eq v0, v14, :cond_13

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    goto/16 :goto_3

    :cond_13
    const/4 v10, 0x1

    goto :goto_6

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v21, v0

    sub-float v7, v20, v21

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_17

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-nez v21, :cond_17

    :cond_14
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v21, v0

    if-nez v21, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIsCollapseAnimating:Z

    move/from16 v21, v0

    if-nez v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    :cond_17
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v22, v0

    add-float v22, v22, v7

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    move/from16 v21, v0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_18
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    :cond_19
    neg-float v0, v7

    move/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_1a

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v21

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableExpand:Z

    move/from16 v21, v0

    if-nez v21, :cond_1c

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :pswitch_4
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    move/from16 v21, v0

    if-nez v21, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v21, v0

    sub-float v21, v19, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    :cond_1e
    const/16 v16, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    const/16 v22, 0x3e8

    invoke-interface/range {v21 .. v22}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v15, v0

    :cond_1f
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v21

    if-eqz v21, :cond_20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableExpand:Z

    move/from16 v21, v0

    if-eqz v21, :cond_21

    :cond_20
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_26

    :cond_21
    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v5, v0, v1, v2}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    if-nez v5, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_22

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v21, v0

    sub-float v21, v20, v21

    div-float v21, v21, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    div-float v21, v16, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v8, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    :cond_22
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    if-eqz v5, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v21, v0

    if-eqz v21, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    move/from16 v21, v0

    if-nez v21, :cond_27

    const/16 v21, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_23

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    :cond_23
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    if-eqz v21, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    :cond_24
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    :cond_25
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mDisableExpand:Z

    goto/16 :goto_3

    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_27
    const/16 v21, 0x0

    goto :goto_8

    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllview(FF)Z

    move-result v21

    if-nez v21, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto :goto_9

    :cond_29
    const/16 v21, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    :cond_1
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v5

    sub-float v1, v4, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v4, :cond_4

    sub-float v4, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    :cond_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    :cond_1
    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v4, v1, v3

    if-nez v4, :cond_5

    :goto_1
    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v3

    if-nez v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const v4, 0x3f19999a    # 0.6f

    mul-float/2addr v3, v4

    sub-float v0, v6, v3

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    const v0, 0x3ecccccd    # 0.4f

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setAlpha(F)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void

    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v4, :cond_1

    sub-float v4, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    goto :goto_0

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float/2addr v3, v1

    goto :goto_1
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onUnlockHintStarted()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    goto :goto_0
.end method

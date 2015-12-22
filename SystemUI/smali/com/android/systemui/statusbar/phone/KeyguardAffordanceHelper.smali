.class public Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE_FACTOR:F = 0.15f

.field private static final HINT_CIRCLE_OPEN_DURATION:I = 0x1f4

.field public static final HINT_PHASE1_DURATION:J = 0xc8L

.field private static final HINT_PHASE2_DURATION:J = 0x15eL

.field public static final SWIPE_RESTING_ALPHA_AMOUNT:F = 0.5f


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

.field private mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private final mContext:Landroid/content/Context;

.field private mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHintGrowAmount:I

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionCancelled:Z

.field private mMotionPerformedByUser:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V
    .locals 6

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromRadius(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private endMotion(Landroid/view/MotionEvent;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->flingWithCurrentVelocity(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method

.method private fling(FZ)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v5, v5, v2

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v5

    neg-float v1, v5

    :goto_0
    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    aput v6, v5, v4

    aput v1, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-virtual {v5, v0, v6, v1, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-nez p2, :cond_3

    const/high16 v5, 0x3ec00000    # 0.375f

    mul-float/2addr v5, p1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpg-float v2, v6, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-interface {v5, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onAnimationToSideStarted(ZFF)V

    :goto_2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getPageWidth()F

    move-result v1

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    goto :goto_2
.end method

.method private flingWithCurrentVelocity(Z)V
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCurrentVelocity()F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    mul-float/2addr v6, v1

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3

    move v2, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    if-eqz v2, :cond_4

    move v6, v3

    :goto_1
    or-int/2addr v0, v6

    xor-int v6, v0, v2

    if-eqz v6, :cond_0

    move v1, v5

    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->fling(FZ)V

    return-void

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    move v6, v4

    goto :goto_1
.end method

.method private getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
    .locals 5

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getCircleRadius()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private getCurrentVelocity()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2

    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getScale(F)F
    .locals 3

    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float v0, v1, v2

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getTranslationFromRadius(F)F
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    const v2, 0x3e19999a    # 0.15f

    div-float v0, v1, v2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private initDimens()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinFlingVelocity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0386

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinTranslationAmount:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0387

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0388

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private initIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setIsLeft(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getLeftPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->getRightPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setPreviewView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftSwipePossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rightSwipePossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCallback:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onSwipingStarted()V

    :cond_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    cmpl-float v0, v10, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_2
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_7

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getMinTranslationAmount()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v10, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v7, v0, v4

    const/4 v0, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v3, v7

    if-eqz p2, :cond_8

    if-eqz p3, :cond_8

    const/4 v8, 0x1

    :goto_4
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getRadiusFromTranslation(F)F

    move-result v2

    if-eqz p2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v9, 0x1

    :goto_5
    if-nez p2, :cond_a

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    :goto_6
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v6, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_2

    :cond_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    goto :goto_6
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private startHintAnimationPhase1(ZLjava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->showArrow(Z)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mHintGrowAmount:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;

    invoke-direct {v2, p0, v1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    goto :goto_0
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getScale(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    return-void
.end method

.method private updateIconsFromRadius(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMinBackgroundRadius:I

    int-to-float v3, v3

    div-float v0, p2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float v1, v3, v4

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    :goto_0
    invoke-direct {p0, p1, v0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    invoke-direct {p0, v2, v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mCenterIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0, v3, v1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initDimens()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRtlPropertiesChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initIcons()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    goto :goto_0

    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    :cond_2
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionPerformedByUser:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mMotionCancelled:Z

    invoke-direct {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_1

    :pswitch_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float v1, v2, v6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->leftSwipePossible()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-gtz v6, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->rightSwipePossible()Z

    move-result v6

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchSlop:I

    neg-int v6, v6

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gez v6, :cond_5

    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-nez v6, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->cancelAnimation()V

    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchY:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F

    iput v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    :cond_5
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipingInProgress:Z

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslationOnDown:F

    add-float/2addr v6, v2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mInitialTouchX:F

    sub-float/2addr v6, v7

    invoke-direct {p0, v6, v4, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->trackMovement(Landroid/view/MotionEvent;)V

    if-nez v0, :cond_6

    move v4, v5

    :cond_6
    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->endMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setTranslation(FZZ)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V

    return-void
.end method

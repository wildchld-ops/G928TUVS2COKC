.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DEBUG:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_SIDES:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field private static final FADE_OUT_DURING_SWIPE:Z = true

.field public static final LTR:I = 0x1

.field public static final NONE:I = 0x0

.field public static final RTL:I = -0x1

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field static final SWIPE_PROGRESS_FADE_END:F = 0.5f

.field public static SWIPE_PROGRESS_FADE_START:F = 0.0f

.field static final TAG:Ljava/lang/String; = "com.android.systemui.SwipeHelper"

.field private static final TAG_SIDES:Ljava/lang/String; = "SwipeSides"

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static final mUseLeftSide:Z = false

.field private static final mUseRightSide:Z = true

.field private static final mUseSides:Z

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeBlocked:Z

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDirection:I

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mInProgressSides:Z

.field private mInitialTouchPos:F

.field private mIsLayoutRtl:Z

.field private mIsMaxSwipeSize:Z

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMaxSwipeSize:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mPosX:F

.field private mPreviousX:F

.field private mSidesMargin:I

.field private mSidesPadding:I

.field private mSwipeDirection:I

.field private mTargetView:Landroid/view/View;

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    sput-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0380

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0376

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c04f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/SwipeHelper;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private doSnap(ZF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_1
.end method

.method private getContentView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const v1, 0x7f0e03e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0e03e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const v1, 0x7f0e03e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const v1, 0x7f0e03da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getNBgView(Landroid/view/View;)Landroid/view/View;
    .locals 2

    const v1, 0x7f0e03d9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSidesMargin:I

    add-int/2addr v0, v1

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getTargetView(Landroid/view/View;)Landroid/view/View;
    .locals 4

    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_3

    const v2, 0x7f0e0250

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_1

    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():TV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():CV"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    :cond_3
    const-string v2, "SwipeSides"

    const-string v3, "getTargetView():V"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private moveContentView(Landroid/view/View;F)V
    .locals 13

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v9

    if-ne v9, v7, :cond_4

    move v4, v7

    :goto_0
    cmpg-float v9, p2, v10

    if-ltz v9, :cond_2

    cmpl-float v9, p2, v10

    if-nez v9, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_2

    :cond_0
    cmpl-float v9, p2, v10

    if-nez v9, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-eq v9, v7, :cond_2

    :cond_1
    cmpl-float v9, p2, v10

    if-nez v9, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    cmpl-float v9, v9, v10

    if-nez v9, :cond_5

    if-eqz v4, :cond_5

    :cond_2
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v6, v9

    :goto_1
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    cmpl-float v9, p2, v10

    if-eqz v9, :cond_6

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v9

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v9, v10

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    div-float/2addr v9, v10

    float-to-int v9, v9

    int-to-long v10, v9

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v1, v12, v9}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v1, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v9, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v9, Lcom/android/systemui/SwipeHelper$8;

    invoke-direct {v9, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$8;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v9, Lcom/android/systemui/SwipeHelper$9;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/SwipeHelper$9;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v9, 0x3

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v0, v9, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    aput-object v8, v9, v7

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7, v6}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-virtual {v5, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    sget-object v7, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v5, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    return-void

    :cond_4
    move v4, v8

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    goto :goto_1

    :cond_6
    iget v9, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v2, v9

    goto :goto_2
.end method

.method private setSidesVisibility(Landroid/view/View;I)V
    .locals 2

    const v1, 0x7f0e03e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v3, p1

    sget-boolean v7, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    if-eqz v7, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v4

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_1

    const-string v6, "SwipeSides"

    const-string v7, "setTranslation():2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    if-ne v7, v5, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v7, v4, v7

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    :cond_2
    :goto_1
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v7, p2

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    move v1, v5

    :goto_2
    iget-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v7, :cond_3

    if-nez v1, :cond_7

    move v1, v5

    :cond_3
    :goto_3
    if-nez v1, :cond_8

    :cond_4
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v3, v5}, Landroid/view/View;->setTranslationX(F)V

    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    add-float/2addr v5, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_5
    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    cmpl-float v7, v4, v7

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v7, v7

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    goto :goto_1

    :cond_6
    move v1, v6

    goto :goto_2

    :cond_7
    move v1, v6

    goto :goto_3

    :cond_8
    const-string v5, "SwipeSides"

    const-string v6, "setTranslation():3"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v9}, Landroid/view/View;->setTranslationX(F)V

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v9}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_9
    invoke-virtual {v3, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapContentView(Landroid/view/View;F)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v1, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v2, 0x96

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/SwipeHelper$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/SwipeHelper$6;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/systemui/SwipeHelper$7;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/SwipeHelper$7;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private updateSidesSwipeProgressFromOffset(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v2, v5

    :goto_0
    cmpl-float v7, v3, v8

    if-lez v7, :cond_4

    move v1, v5

    :goto_1
    if-eqz v2, :cond_0

    if-nez v1, :cond_5

    move v1, v5

    :cond_0
    :goto_2
    const v5, 0x7f0e03e3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    div-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_2
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    move v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1, v4, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->updateSidesSwipeProgressFromOffset(Landroid/view/View;)V

    :cond_2
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void

    :cond_3
    sget-boolean v2, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public clickNotificationLeftButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public clickNotificationRightButton(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public dismissChild(Landroid/view/View;F)V
    .locals 9

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 15

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v11, 0x1

    :goto_0
    const/4 v10, 0x0

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_1

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_6

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    if-eqz v11, :cond_6

    :cond_2
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    neg-float v14, v2

    if-eqz v11, :cond_5

    const/4 v10, 0x1

    :goto_1
    move v5, v10

    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-nez v2, :cond_9

    iget v2, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v2

    sub-float v2, v14, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    :goto_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v7, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v7, v14}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    if-eqz p6, :cond_a

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_3

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_3
    new-instance v2, Lcom/android/systemui/SwipeHelper$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v2, p0, v7, v9}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v10, -0x1

    goto :goto_1

    :cond_6
    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v14

    if-eqz v11, :cond_7

    const/4 v10, -0x1

    :goto_4
    goto :goto_1

    :cond_7
    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v12, v2

    goto :goto_2

    :cond_9
    move-wide/from16 v12, p7

    goto :goto_2

    :cond_a
    sget-object v2, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3
.end method

.method public getSwipingView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v5, :cond_2

    :cond_1
    move v7, v6

    :cond_2
    move v6, v7

    :goto_1
    return v6

    :pswitch_0
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v5, v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeBlocked(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeBlocked:Z

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutDirection()I

    move-result v5

    if-ne v5, v6, :cond_8

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mSidesPadding:I

    sub-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    neg-float v5, v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeSize:F

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v5, :cond_5

    new-instance v5, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v5, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v5, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    iput v7, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mPosX:F

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    :cond_7
    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mTargetView:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    move v5, v7

    goto :goto_2

    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v3, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v8}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v8

    sub-float/2addr v5, v8

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    :cond_9
    sget-boolean v5, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_b

    move v5, v6

    :goto_3
    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    mul-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    :cond_a
    iput v3, p0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    goto/16 :goto_0

    :cond_b
    const/4 v5, -0x1

    goto :goto_3

    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v5, :cond_d

    :cond_c
    move v1, v6

    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v9, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iput-boolean v7, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_d
    move v1, v7

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    :goto_0
    return v18

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    const/16 v18, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v5, :pswitch_data_0

    :cond_4
    :goto_1
    const/16 v18, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    sget-boolean v18, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    move/from16 v18, v0

    cmpg-float v18, v18, v15

    if-gez v18, :cond_9

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsLayoutRtl:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/SwipeHelper;->mDirection:I

    :cond_5
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/SwipeHelper;->mPreviousX:F

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    move/from16 v19, v0

    sub-float v8, v18, v19

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v18, v4, v18

    if-ltz v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v16

    const v18, 0x3e19999a    # 0.15f

    mul-float v12, v18, v16

    cmpl-float v18, v4, v16

    if-ltz v18, :cond_b

    const/16 v18, 0x0

    cmpl-float v18, v8, v18

    if-lez v18, :cond_a

    move v8, v12

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mIsMaxSwipeSize:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_9
    const/16 v18, -0x1

    goto/16 :goto_2

    :cond_a
    neg-float v8, v12

    goto :goto_3

    :cond_b
    div-float v18, v8, v16

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    mul-float v8, v12, v18

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v13, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v19, v0

    mul-float v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    cmpl-double v18, v18, v20

    if-lez v18, :cond_d

    const/4 v6, 0x1

    :goto_4
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    cmpl-float v18, v18, v9

    if-lez v18, :cond_10

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v18

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-lez v18, :cond_10

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-lez v18, :cond_e

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTargetView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v19

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-lez v19, :cond_f

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v18

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    const/4 v10, 0x1

    :goto_8
    if-nez v10, :cond_12

    if-nez v7, :cond_c

    if-eqz v6, :cond_12

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/4 v11, 0x1

    :goto_9
    if-eqz v11, :cond_19

    sget-boolean v18, Lcom/android/systemui/SwipeHelper;->mUseSides:Z

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mInProgressSides:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDirection:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_13

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->moveContentView(Landroid/view/View;F)V

    :goto_b
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    goto/16 :goto_1

    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v19, 0x0

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    goto :goto_7

    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    :cond_12
    const/4 v11, 0x0

    goto :goto_9

    :cond_13
    const/16 v17, 0x0

    goto :goto_a

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_15

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    goto :goto_b

    :cond_15
    const/16 v17, 0x0

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v7, :cond_17

    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_17
    const/16 v17, 0x0

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/SwipeHelper;->doSnap(ZF)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v3, 0x96

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public snapContentView(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getNBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getDBgView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    const/16 v3, 0x8

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/SwipeHelper;->setSidesVisibility(Landroid/view/View;I)V

    goto :goto_0
.end method

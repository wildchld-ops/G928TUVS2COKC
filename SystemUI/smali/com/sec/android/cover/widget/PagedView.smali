.class public abstract Lcom/sec/android/cover/widget/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/sec/android/cover/widget/PagedView$SavedState;,
        Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;,
        Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final DEBUG_WARP:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_SLOP_SCALE:F = 1.0f

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_READY:I = 0x5

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final WARP_ANIMATE_AMOUNT:F = -75.0f

.field private static final WARP_PEEK_ANIMATION_DURATION:I = 0x96

.field private static final WARP_SNAP_DURATION:I = 0xa0

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/widget/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCellCountX:I

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCellCountY:I

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mContentIsRefreshable:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mFadeInAdjacentScreens:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mUsePagingTouchSlop:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferScrollUpdate:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    iput v4, p0, Lcom/sec/android/cover/widget/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mOnlyAllowEdgeSwipes:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FRICTION:F

    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    const/16 v0, -0x578

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$2;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$13;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$13;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$14;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$14;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/cover/widget/PagedView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/sec/android/cover/widget/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/cover/widget/PagedView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sec/android/cover/widget/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/cover/widget/PagedView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/cover/widget/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/cover/widget/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/cover/widget/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/cover/widget/PagedView$9;-><init>(Lcom/sec/android/cover/widget/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private getPageSnapDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2ee

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 8

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v4

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, v5

    iget v5, v3, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/PointF;->length()F

    move-result v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->acos(D)D

    move-result-wide v4

    double-to-float v1, v4

    float-to-double v4, v1

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    :cond_0
    return v1
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/animation/Animator;

    const-string v9, "scaleX"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    const-string v9, "scaleY"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v11, [Landroid/animation/Animator;

    const-string v9, "alpha"

    new-array v10, v11, [F

    aput v13, v10, v12

    invoke-static {v3, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v0, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v5

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget v8, p0, Lcom/sec/android/cover/widget/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v8, v8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/sec/android/cover/widget/PagedView$12;

    invoke-direct {v8, p0, v5}, Lcom/sec/android/cover/widget/PagedView$12;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private resetPageWarp()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    return-void
.end method

.method private resetTouchState()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->releaseVelocityTracker()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->endReordering()V

    invoke-direct {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v3, v4}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v1

    aget v3, v1, v6

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    aget v3, v1, v7

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    iput v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    add-int v0, v3, v4

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mEdgeSwipeRegionSize:I

    sub-int v2, v3, v4

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_0

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    int-to-float v4, v2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    :cond_0
    iput-boolean v7, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    :cond_1
    return-void
.end method

.method private setTouchState(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onTouchStateChanged(I)V

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    :cond_0
    return-void
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 4

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v2, v2

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    goto :goto_0
.end method

.method private updateScrollingIndicator()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->showScrollingIndicator(Z)V

    goto :goto_0
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    iget v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    div-int v2, v9, v6

    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_2

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v11, v1

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_3
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    add-int/2addr v1, v0

    goto :goto_1
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/sec/android/cover/widget/PagedView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/PagedView$4;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method beginCameraEvent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0

    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_4

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    iput v4, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageEndMoving()V

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->onPostReorderingAnimationCompleted()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v2

    int-to-float v3, v2

    div-float v0, p1, v3

    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v11, v2

    float-to-int v12, v6

    invoke-direct {p0, v11, v12}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-eqz v11, :cond_2

    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mDownEventOnEdge:Z

    if-eqz v11, :cond_0

    :cond_2
    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    sub-float v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v3, v11

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    sub-float v11, v6, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v7, v11

    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v11, p0, Lcom/sec/android/cover/widget/PagedView;->mPagingTouchSlop:I

    if-le v3, v11, :cond_5

    move v5, v9

    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    :goto_2
    if-le v7, v1, :cond_7

    move v8, v9

    :goto_3
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_9

    :cond_3
    iget-boolean v11, p0, Lcom/sec/android/cover/widget/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v11, :cond_8

    if-eqz v5, :cond_9

    :cond_4
    :goto_4
    move v10, v9

    goto :goto_0

    :cond_5
    move v5, v10

    goto :goto_1

    :cond_6
    move v4, v10

    goto :goto_2

    :cond_7
    move v8, v10

    goto :goto_3

    :cond_8
    if-nez v4, :cond_4

    :cond_9
    move v9, v10

    goto :goto_4
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0, v7}, Lcom/sec/android/cover/widget/PagedView;->screenScrolled(I)V

    iput v7, p0, Lcom/sec/android/cover/widget/PagedView;->mLastScreenCenter:I

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->getVisiblePages([I)V

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    const/4 v9, -0x1

    if-eq v6, v9, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-ne v8, v9, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_4

    if-gt v4, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v8}, Lcom/sec/android/cover/widget/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_4
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    :cond_6
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mForceDrawAllChildrenNextFrame:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endCameraEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    return-void
.end method

.method endReordering()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$6;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/widget/PagedView$6;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/cover/widget/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/cover/widget/PagedView$7;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->showScrollingIndicator(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    move-object v2, p1

    :goto_0
    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    if-eq v2, p0, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    :goto_1
    if-eqz v0, :cond_3

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    aget v2, v0, p1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_0

    aput v2, v0, p1

    goto :goto_0
.end method

.method protected getChildWidth(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    if-le v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNextPage()I
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    const v7, 0x7fffffff

    const/4 v8, -0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v10

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v11

    add-int/2addr v10, v11

    add-int v0, v10, v4

    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v7, :cond_0

    move v7, v3

    move v8, v5

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v8
.end method

.method getPageNearestToPoint(F)I
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1
.end method

.method protected getPageWarpIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5

    if-nez p1, :cond_0

    const-string v3, "WidgetPagedView"

    const-string v4, "getScaledMeasuredWidth => child view is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mMinimumWidth:I

    if-le v2, v1, :cond_1

    move v0, v2

    :goto_1
    int-to-float v3, v0

    iget v4, p0, Lcom/sec/android/cover/widget/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, p2}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    invoke-virtual {p0, p3}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    int-to-float v4, v0

    int-to-float v5, v3

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMaxScrollProgress()F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMaxScrollProgress()F

    move-result v4

    neg-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2

    const/4 v0, 0x0

    aput v0, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->cancelScrollingIndicatorAnimations()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/cover/widget/PagedView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/PagedView$3;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected final init()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/sec/android/cover/widget/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPagingTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    const/high16 v2, -0x3d6a0000    # -75.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mWarpPeekAmount:F

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingToDeleteThresholdVelocity:I

    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mFlingThresholdVelocity:I

    const/high16 v1, 0x437a0000    # 250.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinFlingVelocity:I

    const v1, 0x44bb8000    # 1500.0f

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinSnapVelocity:I

    invoke-virtual {p0, p0}, Lcom/sec/android/cover/widget/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    :cond_0
    return-void

    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsReordering:Z

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitched()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method protected notifyPageSwitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method protected onEndReordering()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteString:Ljava/lang/String;

    :cond_0
    iput-boolean v4, p0, Lcom/sec/android/cover/widget/PagedView;->mIsReordering:Z

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getVisiblePages([I)V

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-lt v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v5

    if-le v1, v2, :cond_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 12

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    new-instance v9, Lcom/sec/android/cover/widget/PagedView$10;

    invoke-direct {v9, p0, v4, v5}, Lcom/sec/android/cover/widget/PagedView$10;-><init>(Lcom/sec/android/cover/widget/PagedView;J)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v3, Landroid/graphics/Rect;->top:I

    new-instance v0, Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/cover/widget/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    invoke-direct {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v8

    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v10, v2

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/sec/android/cover/widget/PagedView$11;

    invoke-direct {v2, p0, v8}, Lcom/sec/android/cover/widget/PagedView$11;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_0
    return v2

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    :goto_1
    cmpl-float v2, v0, v3

    if-nez v2, :cond_1

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_0

    :cond_1
    cmpl-float v2, v0, v3

    if-gtz v2, :cond_2

    cmpl-float v2, v1, v3

    if-lez v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollRight()V

    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v1, v2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollLeft()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    if-le v1, v0, :cond_2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-eq v5, v3, :cond_0

    :cond_2
    and-int/lit16 v5, v0, 0xff

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    :pswitch_1
    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_4

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-eqz v5, :cond_5

    const-string v5, "interceptTouch(): DOWN"

    invoke-direct {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getFinalX()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchSlop:I

    if-ge v2, v5, :cond_7

    :cond_6
    move v1, v3

    :goto_2
    if-eqz v1, :cond_8

    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    iget-object v5, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_2

    :cond_8
    iget-boolean v5, p0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v5

    if-eqz v5, :cond_a

    :cond_9
    invoke-direct {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v4}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    iget v5, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    float-to-int v6, v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/cover/widget/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetX()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportOffsetY()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v9

    add-int v3, v7, v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_3

    invoke-virtual {p0, v6}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingTop()I

    move-result v9

    add-int v4, v8, v9

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v9, v3

    add-int v10, v4, v2

    invoke-virtual {v0, v3, v4, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    add-int/2addr v9, v5

    add-int/2addr v3, v9

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    if-eqz v9, :cond_4

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ltz v9, :cond_4

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_4

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateCurrentPageScroll()V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/sec/android/cover/widget/PagedView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/widget/PagedView;->mFirstLayout:Z

    :cond_4
    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    iget v9, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v10, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v26

    if-nez v26, :cond_1

    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v24

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    iget v0, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/high16 v26, 0x3fc00000    # 1.5f

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v18, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz v24, :cond_2

    if-nez v11, :cond_3

    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    :cond_3
    if-lez v25, :cond_4

    if-gtz v12, :cond_5

    :cond_4
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingTop()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingBottom()I

    move-result v27

    add-int v23, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingLeft()I

    move-result v26

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPaddingRight()I

    move-result v27

    add-int v13, v26, v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v5

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/high16 v9, -0x80000000

    :goto_2
    iget v0, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v26, v0

    const/16 v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/high16 v7, -0x80000000

    :goto_3
    sub-int v26, v25, v13

    move/from16 v0, v26

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v26, v12, v23

    move/from16 v0, v26

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v8, v6}, Landroid/view/View;->measure(II)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_2

    :cond_7
    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mChildCountOnLastMeasure:I

    move/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDeferringForDelete:Z

    move/from16 v26, v0

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setCurrentPage(I)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mChildCountOnLastMeasure:I

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v17

    sub-int v26, v25, v17

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v17

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setPageSpacing(I)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    if-lez v5, :cond_b

    add-int/lit8 v26, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v26

    add-int/lit8 v27, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    :cond_b
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onStartReordering()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    iput-boolean v4, p0, Lcom/sec/android/cover/widget/PagedView;->mIsReordering:Z

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->getVisiblePages([I)V

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-le v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    if-gtz v28, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v28

    :goto_0
    return v28

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    move/from16 v28, v0

    packed-switch v28, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    const/16 v28, 0x1

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-nez v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    const-string v28, "onTouch(): DOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/16 v28, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->setTouchState(I)V

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v28, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    move/from16 v29, v0

    add-float v28, v28, v29

    sub-float v7, v28, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v28

    const/high16 v29, 0x3f800000    # 1.0f

    cmpl-float v28, v28, v29

    if-ltz v28, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    move/from16 v28, v0

    add-float v28, v28, v7

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x4e6e6b28    # 1.0E9f

    div-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_5

    :goto_3
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    float-to-int v0, v7

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v28, v7, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDeferScrollUpdate:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    float-to-int v0, v7

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->scrollBy(II)V

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mViewport:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v28

    const/16 v29, 0x0

    aget v28, v28, v29

    int-to-float v0, v6

    move/from16 v29, v0

    sub-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/sec/android/cover/widget/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v20, v0

    const/16 v17, -0x1

    int-to-float v0, v15

    move/from16 v28, v0

    cmpg-float v28, v20, v28

    if-gez v28, :cond_a

    if-lez v8, :cond_a

    add-int/lit8 v17, v8, -0x1

    :cond_9
    :goto_4
    move/from16 v18, v17

    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    if-nez v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    aput v30, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    aput v30, v28, v29

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    move-object/from16 v28, v0

    const/16 v29, 0x1

    aget v28, v28, v29

    move/from16 v0, v18

    move/from16 v1, v28

    if-gt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    move/from16 v28, v0

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/Scroller;->isFinished()Z

    move-result v28

    if-eqz v28, :cond_1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    new-instance v28, Lcom/sec/android/cover/widget/PagedView$1;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/cover/widget/PagedView$1;-><init>(Lcom/sec/android/cover/widget/PagedView;II)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_a
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v20, v28

    if-lez v28, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    if-ge v8, v0, :cond_9

    add-int/lit8 v17, v8, 0x1

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mIsCameraEvent:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v28

    if-eqz v28, :cond_1

    :cond_d
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/cover/widget/PagedView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    const/16 v28, 0x1

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v25, v0

    const/16 v28, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mMaximumVelocity:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    move/from16 v28, v0

    sub-float v28, v27, v28

    move/from16 v0, v28

    float-to-int v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v19

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ecccccd    # 0.4f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_14

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionXRemainder:F

    move/from16 v30, v0

    add-float v29, v29, v30

    sub-float v29, v29, v27

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v29

    add-float v28, v28, v29

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTotalMotionX:F

    move/from16 v28, v0

    const/high16 v29, 0x41c80000    # 25.0f

    cmpl-float v28, v28, v29

    if-lez v28, :cond_15

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mFlingThresholdVelocity:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_15

    const/4 v12, 0x1

    :goto_6
    const/16 v23, 0x0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3ea8f5c3    # 0.33f

    mul-float v29, v29, v30

    cmpl-float v28, v28, v29

    if-lez v28, :cond_f

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->signum(F)F

    move-result v28

    int-to-float v0, v7

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->signum(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-eqz v28, :cond_f

    if-eqz v12, :cond_f

    const/16 v23, 0x1

    :cond_f
    if-eqz v14, :cond_10

    if-lez v7, :cond_10

    if-eqz v12, :cond_11

    :cond_10
    if-eqz v12, :cond_17

    if-lez v26, :cond_17

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    if-lez v28, :cond_17

    if-nez v23, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v28

    if-eqz v28, :cond_16

    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPageWithVelocity(II)V

    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/widget/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    goto/16 :goto_1

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_5

    :cond_15
    const/4 v12, 0x0

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, -0x1

    goto :goto_7

    :cond_17
    if-eqz v14, :cond_18

    if-gez v7, :cond_18

    if-eqz v12, :cond_19

    :cond_18
    if-eqz v12, :cond_1b

    if-gez v26, :cond_1b

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1b

    if-eqz v23, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    add-int/lit8 v9, v28, 0x1

    goto :goto_9

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto :goto_8

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, 0x1

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto/16 :goto_8

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    goto/16 :goto_8

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v22

    const/16 v28, 0x0

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    const/16 v28, 0x1

    aget v28, v22, v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v10

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/cover/widget/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    const/4 v11, 0x1

    :cond_21
    if-nez v11, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    move/from16 v29, v0

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v28

    if-eqz v28, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->onDropToDelete()V

    goto/16 :goto_8

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/cover/widget/PagedView;->mWarpPageExposed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->isAnimatingWarpPage()Z

    move-result v28

    if-nez v28, :cond_23

    const-string v28, "unhandled tap"

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    :cond_23
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_8

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/widget/PagedView;->mTouchState:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->snapToDestination()V

    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/cover/widget/PagedView;->resetTouchState()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/cover/widget/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 0

    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageBeginWarp()V

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageBeginMoving()V

    :cond_1
    return-void
.end method

.method protected pageEndMoving()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->swapPages(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndWarp()V

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetPageWarp()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndMoving()V

    :cond_2
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollRight()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->scrollLeft()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexToPage(I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->indexToPage(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected screenScrolled(I)V
    .locals 0

    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    if-gez p1, :cond_2

    invoke-super {p0, v4, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    int-to-float v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->overScroll(F)V

    :cond_0
    :goto_0
    int-to-float v1, p1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mSmoothingTime:F

    invoke-virtual {p0, v5}, Lcom/sec/android/cover/widget/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v4

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    aget v1, v0, v5

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    if-le p1, v1, :cond_3

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    invoke-super {p0, v1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mAllowOverScroll:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mMaxScrollX:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->overScroll(F)V

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mOverScrollX:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCurrentPage(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateCurrentPageScroll()V

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicator()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mIsDataReady:Z

    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->requestLayout()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/widget/PagedView;->mOnlyAllowEdgeSwipes:Z

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwitchListener:Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/cover/widget/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->isReordering(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionX:F

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v1, v2}, Lcom/sec/android/cover/widget/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    aget v1, v0, v3

    iput v1, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->updateDragViewTranslationDuringDrag()V

    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    iput-boolean v2, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/cover/widget/PagedView;->mShouldShowScrollIndicator:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->updateScrollingIndicatorPosition()V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->cancelScrollingIndicatorAnimations()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "snapToDestination"

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq v1, v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/sec/android/cover/widget/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public snapToPage(I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIZ)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIIZ)V

    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 7

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onPageEndWarp()V

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->resetPageWarp()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitching(I)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->pageBeginMoving()V

    invoke-virtual {p0, p3}, Lcom/sec/android/cover/widget/PagedView;->awakenScrollBars(I)Z

    if-eqz p4, :cond_6

    const/4 p3, 0x0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->notifyPageSwitched()V

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->computeScroll()V

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->invalidate()V

    return-void

    :cond_5
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mNextPage:I

    goto :goto_0

    :cond_6
    if-nez p3, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    goto :goto_1
.end method

.method protected snapToPage(IIZ)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    sub-int v0, v1, v2

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIIZ)V

    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(IIZ)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 10

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getViewportWidth()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->isWarping()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "snapToPageWithVelocity"

    iget v8, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    if-eq v8, p1, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0, v7, v6}, Lcom/sec/android/cover/widget/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/sec/android/cover/widget/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageSnapDuration()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(II)V

    :goto_0
    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/widget/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    invoke-virtual {p0, p1, v0, v3}, Lcom/sec/android/cover/widget/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method public startPageWarp(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/cover/widget/PagedView;->mPageSwapIndex:I

    :cond_0
    iput p1, p0, Lcom/sec/android/cover/widget/PagedView;->mPageWarpIndex:I

    return-void
.end method

.method public startReordering()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/sec/android/cover/widget/PagedView;->boundByReorderablePages(Z[I)V

    iput-boolean v1, p0, Lcom/sec/android/cover/widget/PagedView;->mReorderingStarted:Z

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v2

    if-gt v3, v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mTempVisiblePagesRange:[I

    aget v3, v3, v1

    if-gt v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->zoomOut()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->onStartReordering()V

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public stopPageWarp()V
    .locals 0

    return-void
.end method

.method swapPages(II)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/sec/android/cover/widget/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    neg-int v3, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    return-void
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getChildOffset(I)I

    move-result v1

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/sec/android/cover/widget/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v0, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/cover/widget/PagedView;->scrollTo(II)V

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    iget-object v3, p0, Lcom/sec/android/cover/widget/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 4

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionX:F

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownScrollX:F

    sub-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/cover/widget/PagedView;->mLastMotionY:F

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->mDownMotionY:F

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v6

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v6

    if-gez v2, :cond_3

    :cond_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/cover/widget/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/cover/widget/PagedView$8;-><init>(Lcom/sec/android/cover/widget/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected zoomOut()Z
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/widget/PagedView;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/sec/android/cover/widget/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v0, [F

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "scaleY"

    new-array v5, v0, [F

    iget v6, p0, Lcom/sec/android/cover/widget/PagedView;->mMinScale:F

    aput v6, v5, v1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/sec/android/cover/widget/PagedView$5;

    invoke-direct {v2, p0}, Lcom/sec/android/cover/widget/PagedView$5;-><init>(Lcom/sec/android/cover/widget/PagedView;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

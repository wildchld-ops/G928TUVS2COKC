.class public Lcom/ime/framework/view/candidate/HorizontalListView;
.super Landroid/widget/AdapterView;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;,
        Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;,
        Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUNDLE_ID_CURRENT_X:Ljava/lang/String; = "BUNDLE_ID_CURRENT_X"

.field private static final BUNDLE_ID_PARENT_STATE:Ljava/lang/String; = "BUNDLE_ID_PARENT_STATE"

.field private static final FLING_DEFAULT_ABSORB_VELOCITY:F = 30.0f

.field private static final FLING_FRICTION:F = 0.009f

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final INSERT_AT_END_OF_LIST:I = -0x1

.field private static final INSERT_AT_START_OF_LIST:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HorizontalListView"

.field private static final THRESHOLD_RATIO_X:I = 0x30


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterDataObserver:Landroid/database/DataSetObserver;

.field private mCurrentScrollState:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

.field protected mCurrentX:I

.field private mCurrentlySelectedAdapterIndex:I

.field private mDataChanged:Z

.field private mDelayedLayout:Ljava/lang/Runnable;

.field private mDisplayOffset:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerBottomPadding:I

.field private mDividerTopPadding:I

.field private mDividerWidth:I

.field private mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

.field protected mFlingTracker:Landroid/widget/OverScroller;

.field private mHapticNewScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasNotifiedRunningLowOnData:Z

.field private mHeightMeasureSpec:I

.field private mHoverAreaEnter:Z

.field private mHoverAreaWidth:I

.field private mHoverAreaWidth_DP:I

.field private mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollTimeInterval:J

.field mInputManager:Lcom/ime/framework/common/InputManager;

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field protected mIsLastItemFooter:Z

.field private mIsQCShown:Z

.field private mLastHapticScrollX:I

.field private mLastMotionX:I

.field private mLastScrollX:I

.field private mLeftViewAdapterIndex:I

.field private mMaxX:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field protected mNextX:I

.field private mOnScrollStateChangedListener:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;

.field private mPixelThresholdX:I

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCstate:I

.field private mRect:Landroid/graphics/Rect;

.field private mRemovedViewsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Queue",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRestoreX:Ljava/lang/Integer;

.field private mRightViewAdapterIndex:I

.field private mRunningOutOfDataListener:Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;

.field private mRunningOutOfDataThreshold:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/16 v6, 0xf

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    const v1, 0x7fffffff

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    sget-object v1, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentScrollState:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    const/16 v1, 0x19

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth_DP:I

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollTimeInterval:J

    iput v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollEnable:Z

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_SPEED:I

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_DELAY:I

    new-instance v1, Lcom/ime/framework/view/candidate/HorizontalListView$1;

    invoke-direct {v1, p0}, Lcom/ime/framework/view/candidate/HorizontalListView$1;-><init>(Lcom/ime/framework/view/candidate/HorizontalListView;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    new-instance v1, Lcom/ime/framework/view/candidate/HorizontalListView$2;

    invoke-direct {v1, p0}, Lcom/ime/framework/view/candidate/HorizontalListView$2;-><init>(Lcom/ime/framework/view/candidate/HorizontalListView;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    iput v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    iput-boolean v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsQCShown:Z

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, p1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initView()V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->setWillNotDraw(Z)V

    iget-boolean v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/HapticPreDrawListener;

    invoke-direct {v1}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x30

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mPixelThresholdX:I

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.hovering_ui"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->isHoveringUIEnabled:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ime/framework/view/candidate/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$102(Lcom/ime/framework/view/candidate/HorizontalListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    return p1
.end method

.method static synthetic access$200(Lcom/ime/framework/view/candidate/HorizontalListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->reset()V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->measureChild(Landroid/view/View;)V

    return-void
.end method

.method private determineIfLowOnData()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRunningOutOfDataListener:Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRunningOutOfDataThreshold:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRunningOutOfDataListener:Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;

    invoke-interface {v0}, Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;->onRunningOutOfData()V

    :cond_0
    return-void
.end method

.method private determineMaxX()Z
    .locals 6

    const/4 v2, 0x0

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-gez v3, :cond_0

    iput v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    :cond_0
    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-eq v3, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private drawDividers(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingTop()I

    move-result v5

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerTopPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderHeight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerTopPadding:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerBottomPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_2

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_2
    iget-boolean v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsLastItemFooter:Z

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, -0x2

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    if-nez v3, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v5

    if-le v4, v5, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, p1, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private drawEdgeGlow(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getHeight()I

    move-result v0

    const/high16 v3, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    neg-int v3, v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isEdgeGlowEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3, v5, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    :cond_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-ne v3, v6, :cond_5

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mScrollX:I

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mPaddingTop:I

    neg-int v3, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-ne v3, v5, :cond_4

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iput-boolean v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsQCShown:Z

    :goto_2
    return-void

    :cond_3
    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mScrollY:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mPaddingLeft:I

    int-to-float v3, v3

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-ne v3, v6, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsQCShown:Z

    goto :goto_2
.end method

.method private fillList(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    :cond_0
    invoke-direct {p0, v1, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->fillListRight(II)V

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->fillListLeft(II)V

    return-void
.end method

.method private fillListLeft(II)V
    .locals 4

    :cond_0
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    sub-int/2addr p1, v1

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    add-int v1, p1, p2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_2
    sub-int v1, v2, v1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private fillListRight(II)V
    .locals 4

    :cond_0
    :goto_0
    add-int v1, p1, p2

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRecycledView(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v2, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->addAndMeasureChild(Landroid/view/View;I)V

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HorizontalListView, rightEdge = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->determineIfLowOnData()V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method private getChildIndex(II)I
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object v0
.end method

.method private getLeftmostChild()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private getRecycledView(I)Landroid/view/View;
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getRenderHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRenderWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getRightmostChild()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private hapticScrollTo(I)V
    .locals 2

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastHapticScrollX:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mPixelThresholdX:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastScrollX:I

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    iget-boolean v0, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    if-nez v0, :cond_0

    const/16 v0, 0x5208

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/HapticPreDrawListener;->mSkipHapticCalls:Z

    :cond_0
    iput p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastHapticScrollX:I

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    iput v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastScrollX:I

    :cond_1
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    iput v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    iput v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    iput v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    sget-object v0, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    return-void
.end method

.method private initializeRecycledViewCache(I)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isEdgeGlowEnabled()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isItemViewTypeValid(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastItemInAdapter(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockScreenMode()Z
    .locals 5

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    const/4 v0, 0x0

    move v0, v1

    return v0
.end method

.method private isQCSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private measureChild(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLayoutParams(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHeightMeasureSpec:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v3, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/view/View;->measure(II)V

    return-void

    :cond_0
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_0
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

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionChildren(I)V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_5

    iget v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v9

    add-int v5, v6, v9

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingTop()I

    move-result v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v7, v5, v9

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int v0, v8, v9

    invoke-virtual {v1, v5, v8, v7, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v4

    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    iget v9, v9, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_0

    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    iget v9, v9, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_1

    :cond_0
    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v9, v13}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    :cond_1
    :goto_1
    if-gt v4, v12, :cond_2

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    iget v9, v9, Lcom/ime/framework/view/candidate/CandidateTextView;->mSequenceTypeInfo:I

    if-ne v9, v11, :cond_1

    if-eqz v4, :cond_1

    move-object v9, v1

    check-cast v9, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v9, v13}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    goto :goto_1

    :pswitch_0
    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v9

    if-eqz v9, :cond_2

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1, v12}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    goto :goto_2

    :pswitch_1
    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v9

    if-eqz v9, :cond_2

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1, v11}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    goto :goto_2

    :pswitch_2
    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v9

    if-nez v9, :cond_2

    :cond_4
    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1, v11}, Lcom/ime/framework/view/candidate/CandidateTextView;->setIcontype(I)V

    goto :goto_2

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private recycleView(ILandroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isItemViewTypeValid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Queue;

    invoke-interface {v1, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private releaseEdgeGlow()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_1
    return-void
.end method

.method private removeNonVisibleChildren(I)V
    .locals 4

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p1

    if-gtz v1, :cond_1

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->isLastItemInAdapter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDisplayOffset:I

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleView(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0, v1, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleView(ILandroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->removeViewInLayout(Landroid/view/View;)V

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->removeAllViewsInLayout()V

    return-void
.end method

.method private resetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void
.end method

.method private scrollBy(IZ)V
    .locals 3

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollTo(IZ)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v1, "S01B"

    const-string v2, "left flink"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    neg-int v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v1, "S01B"

    const-string v2, "right flink"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scrollTo(IZ)V
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->hapticScrollTo(I)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/OverScroller;->startScroll(IIII)V

    :goto_1
    sget-object v0, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iget v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    sub-int v3, p1, v3

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    goto :goto_1
.end method

.method private setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentScrollState:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mOnScrollStateChangedListener:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mOnScrollStateChangedListener:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;

    invoke-interface {v0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;->onScrollStateChanged(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentScrollState:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    return-void
.end method

.method private setupQuickController(I)V
    .locals 12

    const v11, 0x1080532

    const v10, 0x1080531

    const v8, 0x1080530

    const v7, 0x108052f

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getHeight()I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    iput p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void

    :pswitch_0
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    if-eq v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    div-int/lit8 v7, v3, 0x2

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    neg-int v7, v7

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v3, v1

    div-int/lit8 v7, v7, 0x2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    invoke-direct {v6, v9, v7, v2, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_0

    :pswitch_1
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    if-eq v6, v4, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v5, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v2

    invoke-direct {v0, v6, v9, v7, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :pswitch_2
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    if-eq v6, v4, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    div-int/lit8 v6, v3, 0x2

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    neg-int v6, v6

    sub-int v7, v5, v1

    div-int/lit8 v8, v3, 0x2

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    neg-int v8, v8

    invoke-direct {v0, v6, v7, v8, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    sub-int v7, v5, v2

    sub-int v8, v3, v1

    div-int/lit8 v8, v8, 0x2

    sub-int v9, v3, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    invoke-direct {v6, v7, v8, v5, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    :pswitch_3
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    if-eq v6, v4, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    sub-int v6, v5, v2

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v3, v1

    sub-int v8, v5, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v2

    invoke-direct {v0, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showPointerIcon(I)Z
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    invoke-static {p1, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v1, "HorizontalListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-lez p1, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRightmostChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLastVisiblePosition()I

    move-result v4

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v1, v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getFirstVisiblePosition()I

    move-result v4

    if-gtz v4, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v4

    if-ge v0, v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->drawEdgeGlow(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->drawQuickController(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_hovering_list_scroll"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/4 v2, 0x1

    :goto_1
    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    if-nez v8, :cond_0

    new-instance v8, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-direct {v8, p0}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;-><init>(Lcom/ime/framework/view/candidate/HorizontalListView;)V

    iput-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    :cond_0
    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->isHoveringUIEnabled:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollEnable:Z

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    :goto_2
    return v8

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    if-gtz v8, :cond_6

    const/4 v8, 0x1

    iget v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth_DP:I

    int-to-float v9, v9

    iget-object v10, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mPaddingBottom:I

    sub-int v1, v8, v9

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10

    const/4 v4, 0x1

    :goto_3
    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    if-le v6, v8, :cond_8

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    sub-int v8, v1, v8

    if-lt v6, v8, :cond_a

    :cond_8
    if-lez v5, :cond_a

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    :cond_9
    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isLockScreenMode()Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_a
    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    :cond_b
    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    :cond_c
    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_d

    iget-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_e

    :cond_d
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    :cond_e
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->postInvalidateOnAnimation()V

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_2

    :cond_10
    const/4 v4, 0x0

    goto :goto_3

    :cond_11
    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    if-nez v8, :cond_12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollStartTime:J

    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_13
    :goto_4
    :pswitch_0
    const/4 v8, 0x1

    goto/16 :goto_2

    :pswitch_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    if-ltz v6, :cond_14

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    if-gt v6, v8, :cond_14

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    const/16 v8, 0x11

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isQCSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->canScrollHorizontally(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->setupQuickController(I)V

    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    goto :goto_4

    :cond_14
    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    sub-int v8, v1, v8

    if-lt v6, v8, :cond_13

    if-gt v6, v1, :cond_13

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    const/16 v8, 0xd

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    const/4 v8, 0x2

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isQCSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->canScrollHorizontally(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->setupQuickController(I)V

    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    goto :goto_4

    :pswitch_2
    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    if-nez v8, :cond_15

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_2

    :cond_15
    if-ltz v6, :cond_18

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    if-gt v6, v8, :cond_18

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-eqz v8, :cond_16

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_17

    :cond_16
    const/16 v8, 0x11

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    :cond_17
    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isQCSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-nez v8, :cond_13

    const/4 v8, -0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->canScrollHorizontally(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->setupQuickController(I)V

    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    goto/16 :goto_4

    :cond_18
    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaWidth:I

    sub-int v8, v1, v8

    if-lt v6, v8, :cond_13

    if-gt v6, v1, :cond_13

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-eqz v8, :cond_19

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    :cond_19
    const/16 v8, 0xd

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    :cond_1a
    const/4 v8, 0x2

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isQCSupported()Z

    move-result v8

    if-eqz v8, :cond_13

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-nez v8, :cond_13

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->canScrollHorizontally(I)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x3

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->setupQuickController(I)V

    const/4 v8, 0x1

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    goto/16 :goto_4

    :pswitch_3
    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    :cond_1b
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollStartTime:J

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverAreaEnter:Z

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    :cond_1c
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->showPointerIcon(I)Z

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-ne v2, v1, :cond_3

    iget-boolean v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsQCShown:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    iput v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->postInvalidateOnAnimation()V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ne v0, v5, :cond_4

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-eq v2, v5, :cond_1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_4
    if-ne v0, v1, :cond_3

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    invoke-virtual {v2, v5}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->removeMessages(I)V

    :cond_6
    iput-boolean v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    iput v3, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCstate:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getChild(I)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getChildViews()[Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRightViewAdapterIndex:I

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getHorizontalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChild(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v2, 0x0

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollStartTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollTimeInterval:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    :goto_1
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v6, -0x1

    :goto_2
    if-gez v2, :cond_5

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-lez v6, :cond_5

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v7, 0x1

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_2
    iget-wide v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_SPEED:I

    add-int/lit8 v6, v6, 0x6

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_SPEED:I

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    mul-int/lit8 v2, v6, 0x1

    goto :goto_2

    :cond_5
    if-lez v2, :cond_6

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-ge v6, v4, :cond_6

    const/4 v6, 0x0

    invoke-direct {p0, v2, v6}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v7, 0x1

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    if-lez v4, :cond_c

    :cond_7
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_b

    iget-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_8
    :goto_4
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    :cond_a
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    :cond_b
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_3

    :cond_d
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollDirection:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_4

    :pswitch_2
    const/4 v6, 0x1

    const/high16 v7, 0x41f00000    # 30.0f

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_10

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    neg-int v1, v6

    :goto_5
    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-gez v1, :cond_e

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-gtz v6, :cond_f

    :cond_e
    if-lez v1, :cond_11

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    if-ge v6, v5, :cond_11

    :cond_f
    const/4 v6, 0x0

    invoke-direct {p0, v1, v6}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverHandler:Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/ime/framework/view/candidate/HorizontalListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_10
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHoverScrollSpeed:I

    goto :goto_5

    :cond_11
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getOverScrollMode()I

    move-result v3

    if-eqz v3, :cond_12

    const/4 v6, 0x1

    if-ne v3, v6, :cond_17

    if-lez v5, :cond_17

    :cond_12
    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_16

    iget-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_16

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_18

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    :cond_13
    :goto_7
    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_15

    :cond_14
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    :cond_15
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    :cond_16
    if-nez v0, :cond_0

    iget-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x0

    goto :goto_6

    :cond_18
    iget v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mQCLocation:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_13

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v6, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_13

    iget-object v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->drawDividers(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/ime/framework/view/candidate/HorizontalListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_1

    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    and-int/lit16 v8, v0, 0xff

    packed-switch v8, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    if-eq v1, v9, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ne v3, v9, :cond_3

    const-string v6, "HorizontalListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pointerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in onInterceptTouchEvent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v4, v7

    iget v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    sub-int v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mTouchSlop:I

    if-le v5, v7, :cond_2

    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initVelocityTrackerIfNotExists()V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mParent:Landroid/view/ViewParent;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v7, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v4, v8}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildIndex(II)I

    move-result v8

    if-gez v8, :cond_4

    iput-boolean v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_4
    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    iget-boolean v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v8, :cond_5

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastHapticScrollX:I

    :cond_5
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initOrResetVelocityTracker()V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v8, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v8}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v8

    if-nez v8, :cond_6

    :goto_2
    iput-boolean v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    goto/16 :goto_1

    :cond_6
    move v6, v7

    goto :goto_2

    :pswitch_3
    iput-boolean v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    iput v9, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v7, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    iget-boolean v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDataChanged:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setPressed(Z)V

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    add-int/2addr v4, v2

    invoke-direct {p0, v4, v3}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleView(ILandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initView()V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->removeAllViewsInLayout()V

    iput-boolean v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDataChanged:Z

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v4

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    :cond_5
    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    if-gez v4, :cond_8

    iput v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_6
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->resetVelocityTracker()V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v4, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    sget-object v4, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    :cond_7
    :goto_2
    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    sub-int v1, v4, v5

    invoke-direct {p0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->removeNonVisibleChildren(I)V

    invoke-direct {p0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->fillList(I)V

    invoke-direct {p0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->positionChildren(I)V

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->determineMaxX()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p5}, Lcom/ime/framework/view/candidate/HorizontalListView;->onLayout(ZIIII)V

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    if-le v4, v5, :cond_7

    iget v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    iput v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    :cond_9
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->resetVelocityTracker()V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v4, v6}, Landroid/widget/OverScroller;->forceFinished(Z)V

    sget-object v4, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentScrollState:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    sget-object v5, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_FLING:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    invoke-direct {p0, v4}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDelayedLayout:Ljava/lang/Runnable;

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onMeasure(II)V

    iput p2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHeightMeasureSpec:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "BUNDLE_ID_CURRENT_X"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRestoreX:Ljava/lang/Integer;

    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "BUNDLE_ID_PARENT_STATE"

    invoke-super {p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "BUNDLE_ID_CURRENT_X"

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v18, 0x1

    :goto_1
    return v18

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_2

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mFlingTracker:Landroid/widget/OverScroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    goto :goto_0

    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_5

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    const-string v18, "HorizontalListView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid pointerId="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in onTouchEvent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    move/from16 v18, v0

    sub-int v6, v18, v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-nez v18, :cond_7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_6

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    if-lez v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mLastMotionX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentX:I

    move/from16 v18, v0

    add-int v10, v18, v6

    if-gez v10, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v10, v0, :cond_a

    :cond_8
    sget-object v18, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_TOUCH_SCROLL:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    move/from16 v18, v0

    add-int v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->hapticScrollTo(I)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v6, v6, v18

    goto :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getOverScrollMode()I

    move-result v13

    if-eqz v13, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    move/from16 v18, v0

    if-lez v18, :cond_d

    :cond_b
    const/4 v5, 0x1

    :goto_4
    if-eqz v5, :cond_0

    if-gez v10, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticNewScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_c

    const/16 v18, 0x5223

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->performHapticFeedback(I)Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticNewScroll:Z

    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaxX:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticNewScroll:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    const/16 v18, 0x5223

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->performHapticFeedback(I)Z

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticNewScroll:Z

    :cond_f
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowRight:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mEdgeGlowLeft:Landroid/support/v4/widget/EdgeEffectCompat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    move/from16 v18, v0

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mHapticNewScroll:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_12

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mMinimumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v16

    if-nez v16, :cond_11

    const/16 v16, 0x1

    :cond_11
    if-gez v7, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    move/from16 v18, v0

    rem-int v18, v18, v16

    sub-int v11, v16, v18

    :goto_5
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v11, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    :cond_12
    :goto_6
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleVelocityTracker()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->releaseEdgeGlow()V

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    move/from16 v18, v0

    rem-int v18, v18, v16

    move/from16 v0, v18

    neg-int v11, v0

    goto :goto_5

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v18

    move/from16 v0, v18

    if-ne v8, v0, :cond_15

    const/4 v8, 0x0

    :cond_15
    if-eqz v8, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getRight()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    move/from16 v18, v0

    add-int v18, v18, v9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_16

    sget-object v18, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto :goto_6

    :cond_16
    add-int v18, v8, v9

    if-gez v18, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v18

    sub-int v18, v9, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto/16 :goto_6

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getPaddingLeft()I

    move-result v18

    sub-int v18, v8, v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto/16 :goto_6

    :cond_18
    sget-object v18, Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;->SCROLL_STATE_IDLE:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->setCurrentScrollState(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener$ScrollState;)V

    goto/16 :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_0

    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mActivePointerId:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/view/candidate/HorizontalListView;->mIsBeingDragged:Z

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleVelocityTracker()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->releaseEdgeGlow()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    nop

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

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v0

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    rem-int/2addr v2, v0

    sub-int v2, v0, v2

    invoke-direct {p0, v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getFirstVisiblePosition()I

    move-result v3

    if-lez v3, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getRenderWidth()I

    move-result v0

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mNextX:I

    rem-int/2addr v2, v0

    neg-int v2, v2

    invoke-direct {p0, v2, v1}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_0

    if-ltz p1, :cond_0

    iget-object v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->getLeftmostChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    if-lt v5, p1, :cond_3

    neg-int v4, v3

    move v2, p1

    :goto_1
    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    if-ge v2, v5, :cond_2

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v4, v5

    neg-int v5, v4

    invoke-direct {p0, v5, v6}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto :goto_0

    :cond_3
    move v4, v3

    iget v2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mLeftViewAdapterIndex:I

    :goto_2
    if-ge v2, p1, :cond_4

    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    add-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v4, v6}, Lcom/ime/framework/view/candidate/HorizontalListView;->scrollBy(IZ)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/ime/framework/view/candidate/HorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->reset()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRemovedViewsCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mHasNotifiedRunningLowOnData:Z

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapterDataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->initializeRecycledViewCache(I)V

    :cond_1
    return-void
.end method

.method public setDivider(II)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/ime/framework/view/candidate/HorizontalListView;->setDividerWidth(I)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->setDividerWidth(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/HorizontalListView;->setDividerWidth(I)V

    goto :goto_0
.end method

.method public setDividerPadding(II)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerTopPadding:I

    iput p2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerBottomPadding:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setDividerWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mDividerWidth:I

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->requestLayout()V

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/HorizontalListView;->invalidate()V

    return-void
.end method

.method public setOnScrollStateChangedListener(Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mOnScrollStateChangedListener:Lcom/ime/framework/view/candidate/HorizontalListView$OnScrollStateChangedListener;

    return-void
.end method

.method public setRunningOutOfDataListener(Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRunningOutOfDataListener:Lcom/ime/framework/view/candidate/HorizontalListView$RunningOutOfDataListener;

    iput p2, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mRunningOutOfDataThreshold:I

    return-void
.end method

.method public setSelection(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/candidate/HorizontalListView;->mCurrentlySelectedAdapterIndex:I

    return-void
.end method

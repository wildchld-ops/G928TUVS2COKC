.class public Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
.super Landroid/view/ViewGroup;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/ScrollAdapter;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INVALID_POINTER:I = -0x1

.field private static final NOTIFICATION_SCROLL_BOOST_FREQ:I = 0x155cc0

.field private static final NOTIFICATION_SCROLL_BOOST_FREQ_RATIO:F = 1.0f

.field private static final RUBBER_BAND_FACTOR_AFTER_EXPAND:F = 0.15f

.field private static final RUBBER_BAND_FACTOR_NORMAL:F = 0.35f

.field private static final RUBBER_BAND_FACTOR_ON_PANEL_EXPAND:F = 0.21f

.field private static final TAG:Ljava/lang/String; = "NotificationStackScrollLayout"


# instance fields
.field private mActivateNeedsAnimation:Z

.field private mActivePointerId:I

.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationsEnabled:Z

.field private mBackEventFromShadeLocked:Z

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownHeight:I

.field private mBrightnessHeight:I

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelHeight:I

.field private mChangePositionInProgress:Z

.field private mChildrenChangingPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToAddAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenToRemoveAnimated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenUpdateRequested:Z

.field private mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mContentHeight:I

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDVFSHelper:Landroid/os/DVFSHelper;

.field private mDarkAnimationOriginIndex:I

.field private mDarkNeedsAnimation:Z

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDelegateToScrollView:Z

.field private mDimmedNeedsAnimation:Z

.field private mDisallowScrollingInThisMotion:Z

.field private mDismissAllInProgress:Z

.field private mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDontReportNextOverScroll:Z

.field private mDownX:I

.field private mDragAnimPendingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

.field private mEverythingNeedsAnimation:Z

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field private mExpandedInThisMotion:Z

.field private mExpandingNotification:Z

.field private mFromMoreCardAdditions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGoToFullShadeDelay:J

.field private mGoToFullShadeNeedsAnimation:Z

.field private mHideSensitiveNeedsAnimation:Z

.field private mHsView:Landroid/widget/HorizontalScrollView;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterceptDelegateEnabled:Z

.field private mIntrinsicPadding:I

.field private mIsBeingDragged:Z

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mLastChildYTranslation:F

.field private mLastMotionY:I

.field private mLastSetStackHeight:F

.field private mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mMaxLayoutHeight:I

.field private mMaxOverScroll:F

.field private mMaxScrollAfterExpand:I

.field private mMaximumVelocity:I

.field private mMinTopOverScrollToEscape:F

.field private mMinimumVelocity:I

.field private mNeedToPlaceOnTop:Z

.field private mNeedViewResizeAnimation:Z

.field private mNeedsAnimation:Z

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNotificationRowToY:I

.field private mNotificationTopPadding:I

.field private mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

.field private mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mOnlyScrollingInThisMotion:Z

.field private mOverScrolledBottomPixels:F

.field private mOverScrolledTopPixels:F

.field private mOverflingDistance:I

.field private mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

.field private mOwnScrollY:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

.field private mQconnectViewHeight:I

.field private mRequestViewResizeAnimationOnLayout:Z

.field private mResetOwnScrollY:Z

.field private mScrollView:Landroid/view/ViewGroup;

.field private mScrolledToTopOnFirstDown:Z

.field private mScroller:Landroid/widget/OverScroller;

.field private mScrollingEnabled:Z

.field private mSidePaddings:I

.field private mSnappedBackChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private final mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;

.field private mSwipedOutViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipingInProgress:Z

.field private mTempInt2:[I

.field private mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

.field private mTopPadding:I

.field private mTopPaddingNeedsAnimation:Z

.field private mTopPaddingOverflow:F

.field private mTouchIsClick:Z

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedToPlaceOnTop:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackEventFromShadeLocked:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0305

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    new-instance v0, Lcom/android/systemui/ExpandHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, v7, v6}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ExpandHelper;->setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V

    new-instance v0, Lcom/android/systemui/SwipeHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "NOTIFICATION_SCROLL_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastChildYTranslation:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastChildYTranslation:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/DismissView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/ToggleSliderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/QconnectSfinderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/MultiSIMView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    return-object v0
.end method

.method private applyCurrentState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastChildYTranslation:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V

    :cond_1
    return-void
.end method

.method private clampPadding(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isEmergencyModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    move p1, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_1
.end method

.method private clampScrollPosition()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v0, v1, :cond_0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    :cond_0
    return-void
.end method

.method private customScrollTo(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    return-void
.end method

.method private dispatchDownEventToScroller(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I
    .locals 5

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    const/4 v1, -0x2

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method private fling(I)V
    .locals 14

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v12

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v13

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v11

    if-gez p1, :cond_1

    cmpl-float v0, v13, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    float-to-int v1, v13

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v13

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    const v10, 0x3fffffff    # 1.9999999f

    move v4, p1

    move v6, v5

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void

    :cond_1
    if-lez p1, :cond_2

    cmpl-float v0, v11, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v2, v5, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v11

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    goto :goto_0
.end method

.method private generateActivateEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    return-void
.end method

.method private generateAnimateEverythingEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    return-void
.end method

.method private generateChildAdditionEvents()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const-wide/16 v4, 0x168

    invoke-direct {v3, v0, v6, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;IJ)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    const-wide/16 v4, 0x1d0

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private generateChildHierarchyEvents()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildRemovalEvents()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildAdditionEvents()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generatePositionChangeEvents()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateSnapBackEvents()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDragEvents()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateTopPaddingEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateActivateEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDimmedEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateHideSensitiveEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateDarkEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateGoToFullShadeEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateViewResizeEvent()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAnimateEverythingEvent()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    return-void
.end method

.method private generateChildRemovalEvents()V
    .locals 6

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    :goto_1
    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildBelowTranlsationY(F)Landroid/view/View;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateDarkEvent()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    return-void
.end method

.method private generateDimmedEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    return-void
.end method

.method private generateDragEvents()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateGoToFullShadeEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    return-void
.end method

.method private generateHideSensitiveEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    return-void
.end method

.method private generatePositionChangeEvents()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateRemoveAnimation(Landroid/view/View;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_3

    if-nez v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :goto_0
    return v2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private generateSnapBackEvents()V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private generateTopPaddingEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    return-void
.end method

.method private generateViewResizeEvent()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;-><init>(Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    return-void
.end method

.method private getFirstChildBelowTranlsationY(F)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getIntrinsicHeight(Landroid/view/View;)I
    .locals 2

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getLayoutHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getMaxExpandHeight(Landroid/view/View;)I
    .locals 2

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method private getNotGoneIndex(Landroid/view/View;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne p1, v3, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getPositionInLinearLayout(Landroid/view/View;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    instance-of v3, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getRubberBandFactor(Z)F
    .locals 2

    const v0, 0x3eb33333    # 0.35f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v1, :cond_2

    const v0, 0x3e19999a    # 0.15f

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-eqz v1, :cond_3

    const v0, 0x3e570a3d    # 0.21f

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMaxExpandHeight(Landroid/view/View;)I

    move-result v2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int v6, v0, v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v3

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mIsHdpiModel:Z

    if-eqz v5, :cond_1

    move v5, v4

    :goto_0
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    return v4

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    sub-int v5, v2, v5

    goto :goto_0
.end method

.method private handleEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;->onEmptySpaceClicked(FF)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    new-instance v1, Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setClipChildren(Z)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0376

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0305

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setCallback(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0379

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c037a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c037b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c037c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabelHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c041b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBrightnessHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectViewHeight:I

    return-void
.end method

.method private isBelowLastNotification(FF)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v2, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getY()F

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->getY()F

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/DismissView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    move v0, v3

    :goto_1
    if-nez v0, :cond_4

    cmpl-float v5, p2, v1

    if-lez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/DismissView;->getX()F

    move-result v6

    sub-float v6, p1, v6

    sub-float v7, p2, v1

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/DismissView;->isOnEmptySpace(FF)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1
.end method

.method private isCurrentlyAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isInContentBounds(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "PanelView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NSSL isInContentBounds : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Top:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " event.getY() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " getHeight() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " getEmptyBottomMargin() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mTopPadding = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " getTop() = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private isRubberbanded(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return v0
.end method

.method private needsHeightAdaption()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_0
    return-void
.end method

.method private notifyOverscrollTopListener(FZ)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->onOverscrollTopChanged(FZ)V

    goto :goto_1
.end method

.method private onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInContentBounds : isScrollingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v1, 0x2

    if-ne v8, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v8, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v9, v1, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    const/4 v1, -0x1

    if-ne v11, v1, :cond_3

    const-string v1, "NotificationStackScrollLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid pointerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in onInterceptTouchEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v14, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v12, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v1, v14, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    if-le v15, v1, :cond_2

    if-le v15, v13, :cond_2

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v14, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToTop()Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initOrResetVelocityTracker()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v10, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

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

.method private onOverScrollFling(ZI)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    int-to-float v1, p2

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;->flingTopOverscroll(FZ)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    return-void
.end method

.method private onScrollTouch(Landroid/view/MotionEvent;)Z
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, v16

    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInContentBounds(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto :goto_1

    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    const-string v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    sub-int v19, v2, v27

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    sub-int v2, v25, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v26

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v28

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    move/from16 v0, v28

    if-le v0, v2, :cond_8

    move/from16 v0, v28

    move/from16 v1, v26

    if-le v0, v1, :cond_8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    if-lez v19, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    sub-int v19, v19, v2

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_9
    if-gez v19, :cond_b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollDown(I)F

    move-result v23

    :goto_4
    const/4 v2, 0x0

    cmpl-float v2, v23, v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    move/from16 v0, v23

    float-to-int v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    div-int/lit8 v10, v2, 0x2

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTouchSlop:I

    add-int v19, v19, v2

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollUp(II)F

    move-result v23

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldOverScrollFling(I)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    :cond_c
    :goto_5
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_c

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    if-le v2, v3, :cond_10

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v18

    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-eqz v2, :cond_e

    if-lez v21, :cond_f

    :cond_e
    move/from16 v0, v21

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->fling(I)V

    goto :goto_5

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrollFling(ZI)V

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    goto :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v15

    invoke-virtual/range {v9 .. v15}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    :cond_11
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->endDrag()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    goto/16 :goto_1

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDownX:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
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

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivePointerId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollDown(I)F
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    int-to-float v6, p1

    add-float v2, v0, v6

    cmpl-float v6, v0, v5

    if-lez v6, :cond_0

    invoke-virtual {p0, v2, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v6, v2, v5

    if-gez v6, :cond_2

    move v4, v2

    :goto_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v6, v6

    add-float v3, v6, v4

    cmpg-float v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v1

    sub-float v5, v1, v3

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    iput v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    :cond_1
    return v4

    :cond_2
    move v4, v5

    goto :goto_0
.end method

.method private overScrollUp(II)F
    .locals 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    int-to-float v5, p1

    sub-float v3, v1, v5

    cmpl-float v5, v1, v4

    if-lez v5, :cond_0

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    cmpg-float v5, v3, v4

    if-gez v5, :cond_1

    neg-float v4, v3

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    int-to-float v5, v5

    add-float v2, v5, v4

    int-to-float v5, p2

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v5, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    add-float v5, v0, v2

    int-to-float v6, p2

    sub-float/2addr v5, v6

    invoke-virtual {p0, v5, v7, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    const/4 v4, 0x0

    :cond_3
    return v4
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private requestAnimationOnViewResize()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedViewResizeAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    return-void
.end method

.method private requestChildrenUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdater:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenUpdateRequested:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method private setIsBeingDragged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0
.end method

.method private setIsExpanded(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setIsExpanded(Z)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMaxLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    return-void
.end method

.method private setOverScrollAmountInternal(FZZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    div-float v0, p1, v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->setOverScrollAmount(FZ)V

    if-eqz p2, :cond_1

    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_0
.end method

.method private setOverScrolledPixels(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private setTopPadding(IZ)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingNeedsAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_1
    return-void
.end method

.method private shouldOverScrollFling(I)Z
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrolledToTopOnFirstDown:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinTopOverScrollToEscape:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    if-lez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldScrollByKeyEvent(I)Z
    .locals 9

    const/16 v8, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderViewCollapsedHeight()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsContainerHeight()I

    move-result v7

    add-int v3, v6, v7

    const/16 v6, 0x14

    if-ne p1, v6, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_2

    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    if-le v2, v5, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v4, v6, v7

    :cond_0
    int-to-float v6, v4

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    :goto_1
    return v5

    :cond_1
    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_2

    int-to-float v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v6, 0x13

    if-ne p1, v6, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v8, :cond_5

    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    int-to-float v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    goto :goto_1

    :cond_4
    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_5

    int-to-float v6, v3

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v3

    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private springBack()V
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gtz v7, :cond_2

    move v3, v5

    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v7, v4, :cond_3

    move v2, v5

    :goto_1
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v3, :cond_4

    const/4 v1, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v7, v7

    int-to-float v0, v7

    iput v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDontReportNextOverScroll:Z

    :goto_2
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v6, v5}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v7, v4

    int-to-float v0, v7

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_2
.end method

.method private startAnimationToState()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateChildHierarchyEvents()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    goto :goto_0
.end method

.method private transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setLayoutHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setTopPadding(I)V

    return-void
.end method

.method private updateAnimationState(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAnimationState(ZLandroid/view/View;)V
    .locals 2

    instance-of v1, p2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_0
    return-void
.end method

.method private updateCarrierLabelView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabelHeight:I

    if-le v0, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabelHeight:I

    add-int/2addr v0, v2

    :cond_0
    const-string v2, "NotificationStackScrollLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierLabelView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setScrollY(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->startAnimationToState()V

    goto :goto_0
.end method

.method private updateContentHeight()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    if-eqz v2, :cond_0

    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v5

    :cond_0
    if-eqz v2, :cond_1

    instance-of v5, v0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int/2addr v2, v5

    :cond_1
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_3

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return-void
.end method

.method private updateNotificationAnimationStates()V
    .locals 5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updatePadding(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->shouldScaleDimmed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsDimmed:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5

    instance-of v3, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v0, v3, v4

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int v2, v3, v4

    int-to-float v3, v2

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    :cond_0
    return-void
.end method

.method private updateScrollStateForRemovedChild(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicHeight(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElements:I

    add-int v0, v3, v4

    add-int v1, v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gt v1, v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-ge v2, v3, :cond_0

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    goto :goto_0
.end method

.method private updateSpeedBump(Z)V
    .locals 4

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/SpeedBumpView;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/SpeedBumpView;->setInvisible()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    goto :goto_2
.end method


# virtual methods
.method public canChildBeBlocked(Landroid/view/View;)Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->canChildBeBlocked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3

    const v1, 0x7f0e03ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelExpandHelper()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->cancel()V

    return-void
.end method

.method public changeViewPosition(Landroid/view/View;I)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenChangingPositions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    return-void
.end method

.method public changeViewPositionNoAnimation(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    if-eq v0, p2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    :cond_0
    return-void
.end method

.method public clickNotificationLeftButton(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->clickNotificationLeftButton(Landroid/view/View;)V

    return-void
.end method

.method public clickNotificationRightButton(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->clickNotificationRightButton(Landroid/view/View;)V

    return-void
.end method

.method public computeScroll()V
    .locals 13

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v12

    if-ne v3, v11, :cond_0

    if-eq v4, v12, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v6

    if-gez v12, :cond_1

    if-gez v4, :cond_2

    :cond_1
    if-le v12, v6, :cond_3

    if-gt v4, v6, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v10

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMinimumVelocity:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-ltz v0, :cond_3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverflingDistance:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    :cond_3
    sub-int v1, v11, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedToPlaceOnTop:Z

    if-eqz v0, :cond_7

    move v2, v4

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxOverScroll:F

    float-to-int v8, v0

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->overScrollBy(IIIIIIIIZ)Z

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->postInvalidateOnAnimation()V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_6
    return-void

    :cond_7
    sub-int v2, v12, v4

    goto :goto_0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v2, 0x0

    int-to-long v4, p3

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p2

    move-wide v7, p4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    :goto_1
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :sswitch_0
    if-nez v0, :cond_0

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldScrollByKeyEvent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v2

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-lt v5, v2, :cond_5

    move v1, v3

    :goto_2
    if-eqz v1, :cond_2

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    if-eqz v5, :cond_3

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :sswitch_1
    if-nez v0, :cond_0

    const/16 v5, 0x13

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldScrollByKeyEvent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationRowToY:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    if-eqz v5, :cond_6

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mResetOwnScrollY:Z

    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v4, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public endDrag()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsBeingDragged(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->recycleVelocityTracker()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    :cond_1
    return-void
.end method

.method public expansionStateChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxScrollAfterExpand:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    :cond_0
    return-void
.end method

.method public generateAddAnimation(Landroid/view/View;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mFromMoreCardAdditions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_2
    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v5, v6

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    move v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v5

    add-float/2addr v5, v4

    return v5
.end method

.method public getBottomStackPeekSize()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    instance-of v8, v6, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v6, v8, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v8

    int-to-float v8, v8

    add-float v7, v2, v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v8

    int-to-float v8, v8

    add-float v0, v2, v8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    cmpl-float v8, p2, v7

    if-ltz v8, :cond_0

    cmpg-float v8, p2, v0

    if-gtz v8, :cond_0

    int-to-float v8, v4

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_0

    int-to-float v8, v5

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_0

    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0

    return-object p1
.end method

.method public getChildLocation(Landroid/view/View;)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    goto :goto_0
.end method

.method public getClosestChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 12

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTempInt2:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    int-to-float v10, v10

    sub-float v6, p2, v10

    const/4 v3, 0x0

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    instance-of v10, v8, Lcom/android/systemui/statusbar/StackScrollerDecorView;

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    if-ne v8, v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v10

    int-to-float v10, v10

    add-float v9, v2, v10

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v10

    int-to-float v10, v10

    add-float v0, v2, v10

    sub-float v10, v9, v6

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v11, v0, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpg-float v10, v5, v7

    if-gez v10, :cond_0

    move-object v3, v8

    move v7, v5

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method public getCollapseSecondCardPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    return v0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledTopPixels:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverScrolledBottomPixels:F

    goto :goto_0
.end method

.method public getDismissViewHeight()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/DismissView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPaddingBetweenElementsNormal:I

    add-int v0, v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getEmptyBottomMargin()I
    .locals 3

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mContentHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    sub-int v0, v1, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->needsHeightAdaption()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackSlowDownHeight:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getEmptyShadeViewHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFalsingThresholdFactor()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getHostView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getIntrinsicPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return v0
.end method

.method public getItemHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    return v0
.end method

.method public getLastChildNotGone()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLastChildYTranslation()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastChildYTranslation:F

    return v0
.end method

.method public getMinStackHeight()I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBrightnessHeight:I

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectViewHeight:I

    goto :goto_0
.end method

.method public getNotGoneChildCount()I
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    :cond_2
    return v2
.end method

.method public getNotificationTopPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    return v0
.end method

.method public getNotificationsTopY()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPeekHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapsedSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    return v0
.end method

.method public getTopPaddingOverflow()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    return v0
.end method

.method public goToFullShade(J)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeNeedsAnimation:Z

    iput-wide p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mGoToFullShadeDelay:J

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public hasNotification()Z
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    const-string v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasNotification()-C:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_2

    const-string v5, "NotificationStackScrollLayout"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasNotification()-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-N:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasNotification()-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-V:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToAddAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChildrenToRemoveAnimated:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAntiFalsingNeeded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v0

    return v0
.end method

.method public isBackEventFromShadeLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackEventFromShadeLocked:Z

    return v0
.end method

.method public isBeingDragged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    return v0
.end method

.method public isDismissViewNotGone()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDismissViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->isVisible()Z

    move-result v0

    return v0
.end method

.method public isFling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToBottom()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrolledToTop()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onBeginDrag(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->snapContentViews(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public onChildAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setBackEventFromShadeLocked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0e03ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onChildDismissed(Landroid/view/View;I)V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f0e03ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    const v1, 0x3131d

    :goto_1
    iput v1, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonClear:I

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mReasonSweep:Z

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public onChildSnappedBack(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->onDragFinished(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSnappedBackChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDragAnimPendingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSwipingInProgress(Z)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onExpansionStarted()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpansionChanging:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onExpansionStopped()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroupOverlay;->clear()V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedToPlaceOnTop:Z

    return-void
.end method

.method public onGoToKeyguard()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mEverythingNeedsAnimation:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isCurrentlyAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAllAnimation()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->applyCurrentState()V

    :cond_1
    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollPositionOnExpandInBottom(Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-nez v7, :cond_0

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iput v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    :cond_0
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHsView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :cond_1
    :goto_0
    return v6

    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v7, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v7, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->initDownStates(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v7, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_5
    const/4 v2, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    const/4 v3, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "NotificationStackScrollLayout"

    const-string v8, "do not intercept swipHelper "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-nez v3, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    const/4 v6, 0x0

    div-float v7, v4, v9

    add-float/2addr v7, v0

    float-to-int v7, v7

    float-to-int v8, v2

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setMaxLayoutHeight(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampScrollPosition()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestAnimationOnViewResize()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSidePaddings:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    invoke-static {v5, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChildren(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v5, :cond_4

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableView;->shouldSidePaddingAdded()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_1
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iput p2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->springBack()V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollX:I

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->invalidateParentIfNeeded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateChildren()V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOwnScrollY:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyOverscrollTopListener(FZ)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->customScrollTo(I)V

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollY:I

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mRequestViewResizeAnimationOnLayout:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-ne v8, v7, :cond_5

    :cond_3
    move v3, v7

    :goto_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    if-eqz v8, :cond_6

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDelegateToScrollView:Z

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-direct {p0, p1, p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->transformTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v8, :cond_8

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrollingEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v3, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v8, v6}, Lcom/android/systemui/ExpandHelper;->onlyObserveMovements(Z)V

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_8
    const/4 v4, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipingInProgress:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    if-nez v8, :cond_9

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    move-result v4

    :cond_9
    const/4 v2, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    if-nez v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    if-nez v8, :cond_a

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "NotificationStackScrollLayout"

    const-string v9, "do not touch swipHelper"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    if-nez v2, :cond_b

    if-nez v4, :cond_b

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_b
    move v6, v7

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v8, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateAddAnimation(Landroid/view/View;Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DismissView;->showClearButton()V

    :cond_0
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->notifyChildrenChanged(Landroid/view/ViewGroup;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mChangePositionInProgress:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Landroid/view/View;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateScrollStateForRemovedChild(Landroid/view/View;)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipedOutViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAnimationState(ZLandroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDVFSHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    return-void
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 5

    const/4 v4, 0x0

    add-int v2, p4, p2

    neg-int v3, p8

    add-int v0, p8, p6

    const/4 v1, 0x0

    if-le v2, v0, :cond_1

    move v2, v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v2, v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onOverScrolled(IIZZ)V

    return v1

    :cond_1
    if-ge v2, v3, :cond_0

    move v2, v3

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public refreshAnimStatus()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/SwipeHelper;->getSwipingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/SwipeHelper;->getSwipingView()Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0}, Lcom/android/systemui/ExpandHelper;->getExpandingView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_1
    return-void
.end method

.method public removeLongPressCallback()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    return-void
.end method

.method public resizeNotificationRow()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v4, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateKeyGuardState(Z)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resizeNotificationHeight()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mActivateNeedsAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateNotificationAnimationStates()V

    return-void
.end method

.method public setBackEventFromShadeLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBackEventFromShadeLocked:Z

    return-void
.end method

.method public setCarrierView(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCarrierLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    return-void
.end method

.method public setDark(ZZLandroid/graphics/PointF;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDark(Z)V

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkNeedsAnimation:Z

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->findDarkAnimationOriginIndex(Landroid/graphics/PointF;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDarkAnimationOriginIndex:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDimmed(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setDimmed(Z)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updatePadding(Z)V

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDimmedNeedsAnimation:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissAllInProgress:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/DismissView;->setDismissAllInProgress(Z)V

    return-void
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ExpandHelper;->setEnabled(Z)V

    return-void
.end method

.method public setHideSensitive(ZZ)V
    .locals 5

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v3

    if-eq p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    if-eqz p2, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAnimationsEnabled:Z

    if-eqz v3, :cond_1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHideSensitiveNeedsAnimation:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedsAnimation:Z

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public setHsView(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mHsView:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method public setInterceptDelegateEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mInterceptDelegateEnabled:Z

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mIntrinsicPadding:I

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-void
.end method

.method public setMultiSIMLayout(Lcom/android/systemui/statusbar/MultiSIMView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isRubberbanded(Z)Z

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZZ)V
    .locals 1

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStateAnimator:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmountInternal(FZZZ)V

    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getRubberBandFactor(Z)F

    move-result v0

    mul-float/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mOverscrollTopChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;

    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setQconnectSfinderView(Lcom/android/systemui/statusbar/QconnectSfinderView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setScrollPositionToTop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNeedToPlaceOnTop:Z

    return-void
.end method

.method public setScrollView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mScrollingEnabled:Z

    return-void
.end method

.method public setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setStackHeight(F)V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    cmpl-float v6, p1, v9

    if-lez v6, :cond_2

    move v6, v7

    :goto_0
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsExpanded(Z)V

    float-to-int v1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    sget-boolean v6, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v6, :cond_3

    move v4, v8

    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v6, v1, v6

    if-ge v6, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v6

    if-nez v6, :cond_4

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    move v3, v1

    :goto_2
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    if-eq v3, v6, :cond_1

    iput v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCurrentStackHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateAlgorithmHeightAndPadding()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    :cond_1
    return-void

    :cond_2
    move v6, v8

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v6, v0

    sub-int/2addr v6, v1

    mul-int/lit16 v6, v6, 0x96

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    add-int/2addr v8, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    div-int v4, v6, v7

    goto :goto_1

    :cond_4
    sub-int v6, v1, v0

    sub-int v5, v6, v4

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    sub-float/2addr v6, v7

    int-to-float v7, v0

    div-float v2, v6, v7

    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    int-to-float v6, v5

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mBottomStackPeekSize:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mCollapseSecondCardPadding:I

    add-int/2addr v8, v10

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v9

    :goto_3
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationY(F)V

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    sub-float v6, p1, v6

    float-to-int v3, v6

    goto :goto_2

    :cond_5
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPadding:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    goto :goto_3
.end method

.method public setToggleSliderView(Lcom/android/systemui/statusbar/ToggleSliderView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public snapContentViews(Landroid/view/View;Z)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeBlocked(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0, p2}, Lcom/android/systemui/SwipeHelper;->snapContentView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateDismissView(Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    if-eq v1, v0, :cond_0

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->cancelAnimation()V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->notifyHeightChangeListener(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->setInvisible()V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/DismissView;->setWillBeGone(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$4;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/DismissView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3
.end method

.method public updateIsSmallScreen(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mMaxLayoutHeight:I

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateIsSmallScreen(I)V

    return-void
.end method

.method public updateMultiSIMLayout(Z)V
    .locals 7

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMultiSIMLayout:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MultiSIMView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    const-string v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oldVisibility:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",newVisibility:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MultiSIMView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MultiSIMView;->cancelAnimation()V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/MultiSIMView;->setWillBeGone(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MultiSIMView;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/MultiSIMView;->setInvisible()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/MultiSIMView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/MultiSIMView;->setWillBeGone(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mDualSimLayout:Lcom/android/systemui/statusbar/MultiSIMView;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$7;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/MultiSIMView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3
.end method

.method public updateQconnectSfinderView(Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v3

    :goto_0
    if-eqz p1, :cond_3

    move v0, v2

    :goto_1
    if-eq v1, v0, :cond_1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->cancelAnimation()V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setWillBeGone(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setInvisible()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->setWillBeGone(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mQconnectSfinderView:Lcom/android/systemui/statusbar/QconnectSfinderView;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$6;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/QconnectSfinderView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3
.end method

.method public updateSpeedBumpIndex(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_0

    const/4 v1, 0x0

    const/4 p1, -0x1

    :cond_0
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mSpeedBumpView:Lcom/android/systemui/statusbar/SpeedBumpView;

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBump(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setSpeedBumpIndex(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSwipeProgress(Landroid/view/View;ZF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateToggleSliderView(Z)V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->willBeGone()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v3

    :goto_0
    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    if-eq v1, v0, :cond_0

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ToggleSliderView;->willBeGone()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ToggleSliderView;->cancelAnimation()V

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ToggleSliderView;->setWillBeGone(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateContentHeight()V

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->getVisibility()I

    move-result v1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ToggleSliderView;->setInvisible()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/ToggleSliderView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->setWillBeGone(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mToggleSliderView:Lcom/android/systemui/statusbar/ToggleSliderView;

    new-instance v4, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$5;-><init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/ToggleSliderView;->performVisibilityAnimation(ZLjava/lang/Runnable;)V

    goto :goto_3
.end method

.method public updateTopPadding(FIZZ)V
    .locals 7

    int-to-float v4, p2

    sub-float v4, p1, v4

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mNotificationTopPadding:I

    int-to-float v5, v5

    add-float v3, v4, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v2, v4, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getMinStackHeight()I

    move-result v0

    int-to-float v4, v0

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_0

    int-to-float v4, v0

    sub-float v1, v4, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v3, v4, v2

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    const-string v4, "NotificationStackScrollLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "stackHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p4, :cond_1

    float-to-int v4, v3

    :goto_1
    invoke-direct {p0, v4, p3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTopPadding(IZ)V

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mLastSetStackHeight:F

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    return-void

    :cond_0
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->mTopPaddingOverflow:F

    goto :goto_0

    :cond_1
    float-to-int v4, v3

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->clampPadding(I)I

    move-result v4

    goto :goto_1
.end method

.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;",
        "Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Recents_TaskStackView"


# instance fields
.field mAwaitingFirstLayout:Z

.field mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

.field mFocusedTaskIndex:I

.field mInflater:Landroid/view/LayoutInflater;

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

.field mPrevAccessibilityFocusedIndex:I

.field mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field mStack:Lcom/android/systemui/recents/model/TaskStack;

.field mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

.field mStackViewsAnimationDuration:I

.field mStackViewsClipDirty:Z

.field mStackViewsDirty:Z

.field mStartEnterAnimationCompleted:Z

.field mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

.field mStartEnterAnimationRequestedAfterLayout:Z

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTmpCoord:[F

.field mTmpMatrix:Landroid/graphics/Matrix;

.field mTmpRect:Landroid/graphics/Rect;

.field mTmpTaskViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTmpVisibleRange:[I

.field mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

.field mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field releaseMinPerformance:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v0, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFilterAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V

    new-instance v0, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    new-instance v0, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarDismissDozeDelaySeconds:I

    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    return-void
.end method

.method private updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_2

    move v3, v4

    :goto_0
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v2

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    sub-float v6, v1, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_1
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;F[IZ)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, -0x1

    const/4 v0, -0x1

    if-ge v5, v4, :cond_0

    move v2, v5

    :goto_0
    if-ge v2, v4, :cond_1

    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v5, v4, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    :cond_1
    const/4 v3, 0x0

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-ltz v2, :cond_7

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v7, p3, v8, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    iget-boolean v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v7, :cond_6

    if-gez v1, :cond_2

    move v1, v2

    :cond_2
    move v0, v2

    :cond_3
    if-eqz p5, :cond_4

    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationX:I

    iget v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v8, v8, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    :cond_4
    add-int/lit8 v7, v4, -0x1

    if-ne v2, v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x3f733333    # 0.95f

    iput v7, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    :cond_5
    move-object v3, v6

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_6
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    :goto_2
    if-ltz v2, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskViewTransform;->reset()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_8

    const/4 v7, 0x0

    aput v1, p4, v7

    const/4 v7, 0x1

    aput v0, p4, v7

    :cond_8
    const/4 v7, -0x1

    if-eq v1, v7, :cond_9

    const/4 v7, -0x1

    if-eq v0, v7, :cond_9

    const/4 v7, 0x1

    :goto_3
    return v7

    :cond_9
    const/4 v7, 0x0

    goto :goto_3
.end method


# virtual methods
.method clipTaskViews()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    return-void
.end method

.method clipTaskViews([I)V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v8, v0, -0x1

    if-ge v3, v8, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v8

    if-eqz v8, :cond_2

    move v4, v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v6

    :cond_1
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    const/4 v10, 0x0

    aput v10, v9, v12

    aput v10, v8, v11

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    invoke-static {v5, p0, v8, v11}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v7, p0, v8, v9}, Lcom/android/systemui/recents/misc/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    aget v9, v9, v12

    sub-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v13

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v1, v8

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpCoord:[F

    aget v9, v9, v11

    sub-float/2addr v8, v9

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    sub-float/2addr v8, v13

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v2, v8

    :cond_2
    if-eqz p1, :cond_3

    aget v8, p1, v12

    if-gt v8, v3, :cond_3

    aget v8, p1, v11

    if-ge v3, v8, :cond_3

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v8

    invoke-virtual {v8, v11, v11}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClip(II)V

    :cond_5
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    return-void
.end method

.method public computeRects(IILandroid/graphics/Rect;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    return-void
.end method

.method public computeScroll()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public destroyViewPool()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->destroyHeaderView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->dismiss()V

    return-void
.end method

.method public dismissFocusedTask()V
    .locals 4

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    goto :goto_0
.end method

.method public ensureFocusedTask()Z
    .locals 7

    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    :cond_0
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-gez v5, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    :cond_1
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public focusNextTask(ZZ)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-nez v2, :cond_1

    move v3, v4

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    :goto_1
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    add-int v1, v5, v0

    const/4 v5, -0x2

    if-ne v1, v5, :cond_2

    add-int/lit8 v1, v2, -0x1

    :cond_2
    if-ltz v1, :cond_4

    add-int/lit8 v5, v2, -0x1

    if-gt v1, v5, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1, v3, p2}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    if-ltz v1, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method focusTask(IZZ)V
    .locals 7

    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ne p1, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "Recents_TaskStackView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusTask is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-ge p1, v4, :cond_0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v4, v2}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float v0, v4, v5

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Z)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    if-ne v3, p1, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method public isTransformedTouchPointInView(FFLandroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method public onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAltTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V

    :cond_0
    return-void
.end method

.method onFirstLayout()V
    .locals 12

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v10, v10, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    sub-int v5, v9, v10

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v10, v10, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v11, v11, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    sub-int v4, v9, v10

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    iget-boolean v9, v6, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v9, :cond_1

    move-object v2, v6

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    if-eqz v2, :cond_2

    iget-object v9, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v9, v6, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    :goto_2
    iget-boolean v9, v6, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v7, v9, v3, v5}, Lcom/android/systemui/recents/views/TaskView;->prepareEnterRecentsAnimation(ZZI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    move v3, v8

    goto :goto_2

    :cond_3
    iget-boolean v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    iput-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    :cond_4
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v9, v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v8}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    return-void

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    invoke-virtual {p0, v9, v8, v10}, Lcom/android/systemui/recents/views/TaskStackView;->focusTask(IZZ)V

    goto :goto_3
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->progressToScrollRange(F)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v6, v6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v5, v0, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->computeRects(IILandroid/graphics/Rect;ZZ)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->synchronizeStackViewsWithModel()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v0, v4}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 6

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p1, v5, p2, p3}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->computeComponentsRemoved(Ljava/util/List;Ljava/lang/String;I)Ljava/util/HashSet;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->startDeleteTaskAnimation(Ljava/lang/Runnable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method onRecentsHidden()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    return-void
.end method

.method public onScrollChanged(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->postInvalidateOnAnimation()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->releaseMinPerformance:Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->performanceRelease()V

    goto :goto_0
.end method

.method public onStackExcludeFiltered(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    return-void
.end method

.method public onStackExcludeUnfiltered(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    return-void
.end method

.method public onStackFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;Lcom/android/systemui/recents/model/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Lcom/android/systemui/recents/model/Task;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onStackSplitFiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateFilteredView(Lcom/android/systemui/recents/model/TaskStack;)V

    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 3

    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStackTaskAdded Task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel()V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)V
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "Recents_TaskStackView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStackTaskRemoved Task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v9, v6}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v9, p2}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-lez v9, :cond_6

    move v4, v7

    :goto_0
    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getFrontMostTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v3

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    invoke-virtual {p0, v7, v9, v10}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    if-eqz v4, :cond_2

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v1

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v10

    sub-float v11, v1, v3

    add-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_2
    const/16 v9, 0xc8

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    if-eqz p3, :cond_3

    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p3}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v9, v9, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewEnterFromAppDuration:I

    invoke-virtual {v2, v8, v9}, Lcom/android/systemui/recents/views/TaskView;->fadeInActionButton(II)V

    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v5, 0x1

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v9}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    if-nez v9, :cond_7

    move v5, v7

    :cond_4
    :goto_1
    if-eqz v5, :cond_5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v7}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onAllTaskViewsDismissed()V

    :cond_5
    return-void

    :cond_6
    move v4, v8

    goto :goto_0

    :cond_7
    move v5, v8

    goto :goto_1
.end method

.method public onStackUnfiltered(Lcom/android/systemui/recents/model/TaskStack;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskStack;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTaskViewAppIconClicked(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3

    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewAppIconClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V

    :cond_0
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewAppInfoClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZ)V

    :cond_0
    const-string v0, "Recents_TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskViewClicked TaskView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v5

    const-string v7, "Recents_TaskStackView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTaskViewDismissed TaskView="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d02a2

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    iget-object v11, v11, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/android/systemui/recents/views/TaskView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v3}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    if-eqz v5, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, -0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/TaskView;->setFocusedTask(Z)V

    :cond_0
    return-void
.end method

.method public onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->folderTypeFeature(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isFolderOpened(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    goto :goto_0
.end method

.method public onTaskViewMoved(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;->onTaskViewMoved()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method onUserInteraction()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    return-void
.end method

.method public prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void
.end method

.method public bridge synthetic prepareViewToEnterPool(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToEnterPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 10

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v9

    if-gtz v9, :cond_4

    if-nez p3, :cond_4

    move v4, v8

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;)V

    iget-object v9, p1, Lcom/android/systemui/recents/views/TaskView;->mActionButtonView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    if-gtz v9, :cond_5

    iget v9, p1, Lcom/android/systemui/recents/views/TaskView;->lockButtonVisibility:I

    if-nez v9, :cond_5

    move v1, v8

    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/DozeTrigger;->hasTriggered()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationCompleted:Z

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->enableFocusAnimations()V

    :cond_1
    const/4 v3, -0x1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v7

    if-ge v5, v7, :cond_6

    move v3, v2

    :cond_2
    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    :cond_3
    :goto_3
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setLongTouchEnabled(Z)V

    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    return-void

    :cond_4
    move v4, v7

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {p0, p1, v3, v7}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez v4, :cond_8

    if-eqz v1, :cond_3

    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->requestLayout()V

    goto :goto_3
.end method

.method public bridge synthetic prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    check-cast p2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->prepareViewToLeavePool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method requestSynchronizeStackViewsWithModel()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->requestSynchronizeStackViewsWithModel(I)V

    return-void
.end method

.method requestSynchronizeStackViewsWithModel(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    goto :goto_0
.end method

.method requestUpdateStackViewsClip()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    :cond_0
    return-void
.end method

.method reset()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/ViewPool;->poolViewIterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->reset()V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->reset()V

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->resetTrigger()V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    return-void
.end method

.method resetFocusedTask()V
    .locals 4

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    return-void
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCb:Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;

    return-void
.end method

.method public setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    return-void
.end method

.method public setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    .locals 12

    const-wide/16 v10, 0x14a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    if-eq v3, p1, :cond_0

    if-eqz p2, :cond_1

    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-ne v4, v7, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getDim()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    const/16 v6, 0x4c

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    if-eq v4, v7, :cond_0

    iget-object v4, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    new-array v5, v9, [I

    iget v6, v3, Lcom/android/systemui/recents/views/TaskView;->mSavedDimAlpha:I

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, v3, Lcom/android/systemui/recents/views/TaskView;->mDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method setStack(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    return-void
.end method

.method public setStackInsetRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 6

    const-string v3, "Recents_TaskStackView"

    const-string v4, "startCloseAllAnimation is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews([I)V

    iget-boolean v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->toRight:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    sub-int v4, v0, v1

    mul-int/lit8 v4, v4, 0x21

    add-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    neg-int v3, v3

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->offscreenTranslation:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 10

    const/4 v6, 0x1

    const-string v5, "Recents_TaskStackView"

    const-string v7, "startEnterRecentsAnimation is getting called"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v5, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationRequestedAfterLayout:Z

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartEnterAnimationContext:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v5, :cond_3

    move-object v2, v3

    :cond_2
    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v5}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v1, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewIndex:I

    iput v0, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentStackViewCount:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_4

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v5, v3, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v6

    :goto_3
    iput-boolean v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskOccludesLaunchTarget:Z

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    iget-object v8, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->currentTaskTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v7, v8, v9}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    iget-object v5, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    new-instance v6, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 6

    const-string v3, "Recents_TaskStackView"

    const-string v4, "startExitToHomeAnimation is getting called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mViewRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    iput v3, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->offscreenTranslation:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Z)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "Recents_TaskStackView"

    const-string v8, "startLaunchTaskAnimation is getting called"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    if-ne v4, p1, :cond_0

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    invoke-virtual {v4, p2, v5, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v3, v5

    :goto_2
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6, v3, p3}, Lcom/android/systemui/recents/views/TaskView;->startLaunchTaskAnimation(Ljava/lang/Runnable;ZZZ)V

    goto :goto_1

    :cond_1
    move v3, v6

    goto :goto_2

    :cond_2
    return-void
.end method

.method synchronizeStackViewsWithModel()Z
    .locals 21

    const-string v2, "Recents_TaskStackView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "synchronizeStackViewsWithModel is called mStackViewsDirty"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpVisibleRange:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateStackTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;F[IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vis["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x1

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x0

    aget v7, v6, v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/DebugOverlayView;->setText(Ljava/lang/String;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    add-int/lit8 v10, v9, -0x1

    :goto_0
    if-ltz v10, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    const/4 v2, 0x1

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v2, v0, :cond_1

    const/4 v2, 0x0

    aget v2, v6, v2

    move/from16 v0, v16

    if-gt v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    aget v10, v6, v2

    :goto_2
    if-eqz v12, :cond_6

    const/4 v2, 0x1

    aget v2, v6, v2

    if-lt v10, v2, :cond_6

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2, v15, v15}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    if-lez v2, :cond_3

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->p:F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-gtz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;ILandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    if-eq v2, v11, :cond_4

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/recents/views/TaskStackView;->mPrevAccessibilityFocusedIndex:I

    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v7, v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(FFLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsAnimationDuration:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsDirty:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackViewsClipDirty:Z

    const/4 v2, 0x1

    :goto_4
    return v2

    :cond_7
    const/4 v2, 0x0

    goto :goto_4
.end method

.method updateMinMaxScroll(ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeMinMaxScroll(Ljava/util/ArrayList;ZZ)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    :cond_0
    return-void
.end method

.method public updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScroll(ZZZ)V

    return-void
.end method

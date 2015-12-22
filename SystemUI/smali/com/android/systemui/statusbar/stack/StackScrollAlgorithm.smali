.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;,
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;
    }
.end annotation


# static fields
.field private static final ACTIVATED_INVERSE_ALPHA:F = 0.74f

.field public static final DIMMED_SCALE:F = 0.95f

.field private static final LOG_TAG:Ljava/lang/String; = "StackScrollAlgorithm"

.field private static final MAX_ITEMS_IN_BOTTOM_STACK:I = 0x3

.field private static final MAX_ITEMS_IN_TOP_STACK:I = 0x3


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mContext:Landroid/content/Context;

.field private mExpandedOnStart:Z

.field private mFirstChildMaxHeight:I

.field private mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

.field private mInnerHeight:I

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsSmallScreen:Z

.field private mLayoutHeight:I

.field private mMaxNotificationHeight:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mRoundedRectCornerRadius:I

.field private mScaleDimmed:Z

.field private mStackScrollAlgorithmCallback:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mTopPadding:I

.field private mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mTopStackPeekSize:I

.field private mTopStackSlowDownLength:I

.field private mTopStackTotalSize:I

.field private mZBasicHeight:I

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 3

    iget v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    return-void
.end method

.method private clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 0

    return-void
.end method

.method private clampYTranslation(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    return-void
.end method

.method private findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

.method private findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v3

    int-to-float v9, v3

    add-float v10, v7, v9

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_1
    int-to-float v9, v9

    add-float v8, v10, v9

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v9, v9

    cmpg-float v9, v7, v9

    if-gez v9, :cond_7

    if-nez v5, :cond_3

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-gt v9, v10, :cond_3

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    sub-int v0, v9, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v1, v9, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    int-to-float v6, v9

    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotificationContainer()Z

    move-result v9

    if-nez v9, :cond_2

    int-to-float v9, v0

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    :goto_3
    iput v9, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    iput v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    :goto_4
    move v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    goto :goto_1

    :cond_1
    int-to-float v6, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v9

    goto :goto_3

    :cond_3
    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v9, v9

    cmpg-float v9, v8, v9

    if-gez v9, :cond_4

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    add-float/2addr v9, v11

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    goto :goto_4

    :cond_4
    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v9, v9

    sub-float/2addr v9, v7

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v10, v3

    int-to-float v10, v10

    div-float/2addr v9, v10

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    const/4 v9, 0x0

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    iget v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    add-float/2addr v9, v10

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    if-nez v5, :cond_5

    iput v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    :cond_5
    iput v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    :cond_6
    :goto_5
    return-void

    :cond_7
    add-int/lit8 v9, v5, -0x1

    iput v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    goto :goto_5
.end method

.method private getCollapsedSize(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 3

    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 8

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0379

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c037a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0305

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0306

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c036f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0370

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0378

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mIsMdpiModel:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x3

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0372

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0373

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0398

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c037c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v3, 0x1e0

    if-lt v0, v3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1
.end method

.method private isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMaxExpandHeightInitialized()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;FFF)V
    .locals 3

    const/4 v2, 0x0

    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    sub-float v0, p2, p3

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    :goto_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    sub-float v0, p2, p4

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    :goto_1
    return-void

    :cond_0
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    goto :goto_0

    :cond_1
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    goto :goto_1
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 17

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v12

    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    iget v0, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v8, v13, v14

    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v13, v13

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    mul-float v6, v13, v14

    add-float v7, v8, v6

    sget-boolean v13, Lcom/android/systemui/statusbar/Feature;->mSwipeBlockNotification:Z

    if-nez v13, :cond_0

    if-eqz v10, :cond_3

    :cond_0
    move v3, v6

    :cond_1
    :goto_1
    sub-float v13, v11, v8

    sub-float v13, v6, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v3, v13}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;FFF)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_2

    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    int-to-float v13, v13

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    mul-float/2addr v13, v14

    add-float v11, v8, v13

    move v9, v7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v13

    const/4 v14, 0x0

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_5

    const/4 v10, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sub-float v3, v7, v9

    const/4 v13, 0x0

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-eqz v13, :cond_1

    iget-boolean v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    if-eqz v13, :cond_4

    const/4 v4, 0x0

    :goto_3
    add-float/2addr v3, v4

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    int-to-float v13, v13

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    mul-float v4, v13, v14

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v2, :cond_7

    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    :goto_1
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mIsHdpiModel:Z

    if-eqz v9, :cond_3

    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    :goto_2
    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v8, :cond_6

    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v8, :cond_5

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_4
    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    goto :goto_2

    :cond_5
    const v9, 0x3f733333    # 0.95f

    goto :goto_4

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    goto :goto_3

    :cond_7
    return-void
.end method

.method private updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateFirstChildMaxSizeToMaxHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateInnerHeight()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    return-void
.end method

.method private updatePadding(Z)V
    .locals 6

    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    goto :goto_0
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v2, v3

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    int-to-float v2, v2

    sub-float v11, v12, v2

    const/4 v13, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    float-to-int v4, v2

    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v7

    const/4 v2, 0x0

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v6

    int-to-float v2, v6

    add-float v3, v20, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_1
    int-to-float v2, v2

    add-float v21, v3, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v2, v2

    sub-float v2, v20, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    add-float v8, v2, v3

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_0

    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    :cond_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_2
    int-to-float v2, v2

    add-float/2addr v2, v13

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    int-to-float v2, v6

    add-float v3, v13, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_3
    int-to-float v2, v2

    add-float v19, v3, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-gt v5, v2, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackScrollState$ViewState;F)V

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    int-to-float v3, v6

    add-float/2addr v2, v3

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    if-eqz v2, :cond_1

    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    sub-float v2, v11, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    iget v13, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object v14, v7

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    :cond_1
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    :goto_4
    if-nez v5, :cond_3

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    sub-int v3, v2, v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_5
    add-int/2addr v3, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_6
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotificationContainer()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v2, v2

    sub-float v3, v12, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableView;->shouldExpand()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_7
    int-to-float v2, v2

    add-float/2addr v2, v3

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getCollapsedSize(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    :cond_2
    const/4 v2, 0x1

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    :cond_3
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    if-nez v2, :cond_4

    const-string v2, "StackScrollAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to assign location for child "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    int-to-float v3, v6

    add-float v13, v2, v3

    move/from16 v20, v21

    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_8
    cmpl-float v2, v19, v11

    if-ltz v2, :cond_a

    cmpl-float v2, v13, v11

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    goto/16 :goto_4

    :cond_9
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object v14, v7

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    goto/16 :goto_4

    :cond_a
    const/16 v2, 0x8

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampYTranslation(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    goto/16 :goto_4

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    :cond_e
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStackScrollAlgorithmCallback:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    int-to-float v9, v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;->onLastChildYTranslationChanged(F)V

    :goto_8
    return-void

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStackScrollAlgorithmCallback:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    int-to-float v3, v3

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;->onLastChildYTranslationChanged(F)V

    goto :goto_8
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 5

    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    if-lt v3, p3, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    add-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    add-float v0, p2, v1

    const/16 v1, 0x10

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v2, p4

    sub-float/2addr v1, v2

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    return-void

    :cond_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x0

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    :cond_1
    :goto_1
    const/16 v1, 0x20

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    int-to-float v0, v1

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iput v3, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_1
.end method

.method private updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 5

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p2, p4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, p6

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    move v0, p6

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le p6, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    if-eqz v2, :cond_0

    add-float v2, p2, v1

    sub-float/2addr v2, p4

    int-to-float v3, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    iput v0, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    :cond_0
    add-float v2, p2, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-direct {p0, p5, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    const/16 v2, 0x8

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    return-void
.end method

.method private updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackScrollState$ViewState;F)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    add-int/lit8 v1, p3, -0x1

    add-int/lit8 v3, p2, -0x3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v0, v1, v3

    if-ltz v0, :cond_1

    iget-object v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    :goto_0
    int-to-float v1, v1

    add-float/2addr v1, p6

    iput v1, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    const/4 v1, 0x4

    iput v1, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    :goto_2
    iput p6, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    const/4 v1, 0x2

    iput v1, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    goto :goto_1

    :cond_2
    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_2
.end method

.method private updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v4

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    int-to-float v8, v3

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_2

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    int-to-float v10, v3

    sub-float v6, v8, v10

    const/high16 v10, 0x40400000    # 3.0f

    if-nez v3, :cond_1

    const/high16 v8, 0x40200000    # 2.5f

    :goto_1
    add-float v4, v10, v8

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    if-nez v3, :cond_0

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le v8, v10, :cond_0

    const v8, 0x3dcccccd    # 0.1f

    const v10, 0x3ff33333    # 1.9f

    mul-float/2addr v10, v6

    add-float v6, v8, v10

    :cond_0
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    sub-float v5, v8, v10

    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float v7, v8, v10

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    goto :goto_2

    :cond_3
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    iput v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    add-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v3

    invoke-direct {p0, p2, v0, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    return-void
.end method

.method public notifyChildrenChanged(Landroid/view/ViewGroup;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onExpansionStopped()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    :cond_0
    return-void
.end method

.method public refreshStackScrollState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStackScrollAlgorithmCallback:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmCallback;

    return-void
.end method

.method public setDimmed(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    return-void
.end method

.method public setTopPadding(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    return-void
.end method

.method public shouldScaleDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    return v0
.end method

.method public updateIsSmallScreen(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

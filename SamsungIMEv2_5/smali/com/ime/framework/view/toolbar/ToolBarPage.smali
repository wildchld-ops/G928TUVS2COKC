.class public Lcom/ime/framework/view/toolbar/ToolBarPage;
.super Landroid/widget/TextView;
.source "ToolBarPage.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# static fields
.field public static final ADJUST_TOOLBAR_PAGE_MAX_WIDTH:F = 1.0f

.field public static final TOOLBAR_PAGE_DISABLE:I = -0x1

.field public static final TOOLBAR_PAGE_ENABLE:I = 0x1

.field private static mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;


# instance fields
.field private mEnableStatus:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mRes:I

.field private mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

.field private mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Landroid/inputmethodservice/InputMethodService;

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method private configEnableStatus()V
    .locals 4

    const/4 v3, 0x1

    iput v3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getDisableItems()Ljava/util/Vector;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private configLayoutParams()V
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setGravity(I)V

    return-void
.end method

.method public static getEmptyPage()Lcom/ime/framework/view/toolbar/ToolBarPage;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    return-object v0
.end method

.method private getItemMeasuredWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getNormalPageWidth()I

    move-result v0

    return v0
.end method

.method private getNormalPageWidth()I
    .locals 12

    const/16 v11, 0x8

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v0

    invoke-virtual {v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getScrollViewWidth()I

    move-result v4

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v9}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f090799

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v6, v9

    if-lt v0, v11, :cond_1

    const/4 v5, 0x7

    const/high16 v2, 0x40f00000    # 7.5f

    :goto_0
    mul-int v9, v5, v6

    sub-int v8, v4, v9

    int-to-float v9, v8

    div-float/2addr v9, v2

    float-to-int v1, v9

    if-ge v0, v11, :cond_0

    int-to-float v9, v8

    rem-float/2addr v9, v2

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_0

    int-to-float v9, v1

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v9, v10

    float-to-int v1, v9

    :cond_0
    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarPage getNormalPageWidth measuredWidth : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scrollViewWidth : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " totalPageWidth: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move v5, v0

    int-to-float v2, v0

    goto :goto_0
.end method

.method private getPageNormalRes()I
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v1

    iget-object v4, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarIconsResArray()[[I

    move-result-object v3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v1, v4, :cond_1

    aget-object v4, v3, v0

    const/4 v5, 0x1

    aget v2, v4, v5

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPageRes()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mRes:I

    return v0
.end method

.method private getToolbarOrderListIndex(I)I
    .locals 4

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarOrderArray()[I

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    if-ne p1, v3, :cond_1

    aget v3, v2, v0

    if-ltz v3, :cond_1

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setDrawablePadding(I)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemMeasuredHeight()I

    move-result v2

    if-lt v2, v1, :cond_0

    sub-int v5, v2, v1

    div-int/lit8 v3, v5, 0x2

    :goto_0
    invoke-virtual {p0, v4, v3, v4, v4}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setPadding(IIII)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public static setEmptyItemPage(Lcom/ime/framework/view/toolbar/ToolBarPage;)V
    .locals 0

    sput-object p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    return-void
.end method

.method private updateItemStatusWithDragging(Lcom/ime/framework/view/toolbar/ToolBarPage;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->updateLastItemId(Lcom/ime/framework/view/toolbar/ToolBarPage;)V

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getDragItemPageIndex()I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarShadowEffectRes(I)I

    move-result v3

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-direct {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getPageRes()I

    move-result v6

    invoke-virtual {v5, v7, v6, v7, v7}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v5, v7}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setVisibility(I)V

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getEnableStatus()I

    move-result v2

    sget-object v5, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getEnableStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setEnableStatus(I)V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v5

    aget-object v0, v5, v1

    invoke-virtual {p1, v0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V

    invoke-virtual {p1, v7, v3, v7, v7}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    invoke-virtual {p1, v2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setEnableStatus(I)V

    sput-object p1, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    return-void
.end method

.method private updateLastItemId(Lcom/ime/framework/view/toolbar/ToolBarPage;)V
    .locals 7

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getLastItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v2

    move-object v3, v2

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getDragItemPageIndex()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->values()[Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v5

    aget-object v0, v5, v1

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    :cond_0
    :goto_0
    invoke-virtual {v4, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateLastItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v3

    goto :goto_0
.end method

.method private updateToolbarOrderList(Lcom/ime/framework/view/toolbar/ToolBarPage;)V
    .locals 11

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v9}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v7

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->getToolbarOrderArray()[I

    move-result-object v6

    array-length v9, v6

    new-array v8, v9, [I

    const/4 v5, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v9, v6

    if-ge v5, v9, :cond_0

    aget v9, v6, v5

    aput v9, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getToolbarOrderListIndex(I)I

    move-result v4

    invoke-virtual {v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getDragItemPageIndex()I

    move-result v0

    array-length v9, v6

    if-lt v4, v9, :cond_1

    const-string v9, "SamsungIME_UnifiedIME"

    const-string v10, "ToolBarPage updateToolbarOrderList()... enteredOrderIndex out of array length."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    aput v0, v8, v4

    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getToolbarOrderListIndex(I)I

    move-result v2

    array-length v9, v6

    if-lt v2, v9, :cond_2

    const-string v9, "SamsungIME_UnifiedIME"

    const-string v10, "ToolBarPage updateToolbarOrderList()... emptyItemOrderIndex out of array length."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v9

    aput v9, v8, v2

    invoke-static {v8}, Lcom/ime/framework/view/toolbar/ToolBarManager;->setToolbarOrderArray([I)V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarManager;->writeToolbarOrder()V

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getEnableStatus()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    return v0
.end method

.method public getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method public getItemMeasuredHeight()I
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09050d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090728

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method public initialize(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;ILcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    iput p2, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mRes:I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput-object p3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->configLayoutParams()V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->configEnableStatus()V

    invoke-virtual {p0, p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarStatus()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v0

    sget-object v1, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, p2, v2, v2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    invoke-direct {p0, p2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setDrawablePadding(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setText(I)V

    goto :goto_0
.end method

.method public itemIsEnable()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 13

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    instance-of v9, v8, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-nez v9, :cond_1

    :cond_0
    const/4 v5, 0x1

    :cond_1
    if-eqz p1, :cond_2

    instance-of v9, p1, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-eqz v9, :cond_2

    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-nez v9, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    const/4 v9, 0x0

    :goto_0
    return v9

    :cond_4
    move-object v1, v8

    check-cast v1, Lcom/ime/framework/view/toolbar/ToolBarPage;

    move-object v3, p1

    check-cast v3, Lcom/ime/framework/view/toolbar/ToolBarPage;

    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_5

    if-eqz v1, :cond_5

    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarPage onDrag()...dragItemPage id ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarPage action=="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarPage event (x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "SamsungIME_UnifiedIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ToolBarPage view="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(x="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",y="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    packed-switch v0, :pswitch_data_0

    :cond_7
    :goto_1
    :pswitch_0
    const/4 v9, 0x1

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v4

    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-direct {p0, v3}, Lcom/ime/framework/view/toolbar/ToolBarPage;->updateToolbarOrderList(Lcom/ime/framework/view/toolbar/ToolBarPage;)V

    invoke-direct {p0, v3}, Lcom/ime/framework/view/toolbar/ToolBarPage;->updateItemStatusWithDragging(Lcom/ime/framework/view/toolbar/ToolBarPage;)V

    goto :goto_1

    :pswitch_2
    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-direct {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getPageNormalRes()I

    move-result v6

    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v6, v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setOnDraggingFlag(Z)V

    goto :goto_1

    :pswitch_3
    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-direct {v9}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getPageNormalRes()I

    move-result v7

    sget-object v9, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEmptyPage:Lcom/ime/framework/view/toolbar/ToolBarPage;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setOnDraggingFlag(Z)V

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->updateToolBarPage(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getToolbarContainer()Lcom/ime/framework/view/toolbar/ToolBarContainer;

    move-result-object v1

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->sendAccessibilityEventToReadLabel(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getPageSavedWidth()I

    move-result v3

    if-gtz v3, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemMeasuredWidth()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setPageSavedWidth(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemMeasuredHeight()I

    move-result v0

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getLastItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getPageSavedWidth()I

    move-result v1

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v6}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090799

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {v5}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getPageSavedWidth()I

    move-result v6

    add-int v1, v6, v4

    goto :goto_1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iput p2, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mRes:I

    return-void
.end method

.method public setEnableStatus(I)V
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mEnableStatus:I

    :cond_0
    return-void
.end method

.method public setItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-virtual {v0, p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarPage;->mToolbarItemId:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    :cond_0
    return-void
.end method

.class public abstract Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;
.super Landroid/widget/RelativeLayout;
.source "AbstractToolbarPopupView.java"


# static fields
.field protected static final FLOAT_WINDOW_RATE:F = 1.0f

.field protected static final MARGIN_RATE:F = 0.15f


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private setBackground(Landroid/view/View;)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_2

    const-string v5, "SamsungIME_UnifiedIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setBackground() view: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const v5, 0x7f020043

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isSplitMode()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    int-to-float v5, v1

    mul-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, v9

    float-to-int v6, v6

    int-to-float v7, v3

    mul-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v8, v0

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1, v4, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setMargins(Landroid/view/View;ZLcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09079e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    sget-boolean v1, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMargins() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getKeyboardViewWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0
.end method


# virtual methods
.method public final adjustPointers(II)V
    .locals 12

    const/4 v11, 0x0

    move v3, p1

    const v9, 0x7f1000ff

    invoke-virtual {p0, v9}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v9, 0x7f100100

    invoke-virtual {p0, v9}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_0
    const v9, 0x7f02005c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {v7, v11, v11}, Landroid/widget/ImageView;->measure(II)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    sub-int v9, p1, v9

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getPaddingLeft()I

    move-result v10

    sub-int v3, v9, v10

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getVisibleContentView()Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;

    invoke-direct {v9, p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$2;-><init>(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ge v3, v9, :cond_9

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_1
    const/4 v8, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isHandwriteFSMode()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    sget-object v10, Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;->TOOLBAR_SELECTION_CONTROL:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    if-eq v9, v10, :cond_b

    if-eqz v7, :cond_5

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_6
    const v9, 0x7f02005b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090788

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v3, v11, v11, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    const v9, 0x7f020045

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_9
    add-int v9, v3, v0

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int v10, p2, v10

    if-le v9, v10, :cond_3

    iget v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v10, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    iput v9, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_a
    const v9, 0x7f020044

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_b
    if-eqz v7, :cond_7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isLandscape()Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090789

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_d
    invoke-virtual {v7, v3, v4, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_3
.end method

.method public build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "build()  popup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    new-instance v2, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;

    invoke-direct {v2, p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView$1;-><init>(Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;)V

    invoke-virtual {p0, v2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isFloating()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getVisibleContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->setMargins(Landroid/view/View;ZLcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getVisibleContentView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->setBackground(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected dismissPopupWindow()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method protected abstract getVisibleContentView()Landroid/view/View;
.end method

.method protected abstract isActive(Landroid/view/View;)Z
.end method

.method protected isFloating()Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isHandwriteFSMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwriteFSMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected final isLandscape()Z
    .locals 2

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSplitMode()Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

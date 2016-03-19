.class public Lcom/ime/framework/view/toolbar/ToolBarView;
.super Landroid/widget/LinearLayout;
.source "ToolBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;,
        Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;
    }
.end annotation


# instance fields
.field private mContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

.field private mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

.field private mDragItmeIdIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mToolbarItemSize:I

.field private mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

.field private mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

.field private mViewDownEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/view/toolbar/ToolBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ime/framework/view/toolbar/ToolBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ime/framework/view/toolbar/ToolBarView;I)I
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDragItmeIdIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/ime/framework/view/toolbar/ToolBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResUnPressed()V

    return-void
.end method

.method static synthetic access$600(Lcom/ime/framework/view/toolbar/ToolBarView;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method static synthetic access$602(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-object p1
.end method

.method static synthetic access$700(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/framework/view/toolbar/ToolBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/ime/framework/view/toolbar/ToolBarView;)Landroid/inputmethodservice/InputMethodService;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method private changeFocusWhenMoving(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V
    .locals 2

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "ToolBarView changeFocusWhenMoving()... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-void
.end method

.method private createSeparatorLine()Landroid/view/View;
    .locals 5

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME_UnifiedIME"

    const-string v4, "ToolBarView createSeparatorLine"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getToolbarSeparatorBg()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090799

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b7c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090780

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09077f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getBackgroundResource(Z)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarPressedBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {v1}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarNormalBg()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarView$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/toolbar/ToolBarView$1;-><init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    return-object v0
.end method

.method private getOnTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Lcom/ime/framework/view/toolbar/ToolBarView$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/toolbar/ToolBarView$2;-><init>(Lcom/ime/framework/view/toolbar/ToolBarView;)V

    return-object v0
.end method

.method private getSymbolActiveItem()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getSymbolInputMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getToolbarPageRes(ILcom/ime/framework/view/toolbar/ToolBarContainer;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarIconsResArray()[[I

    move-result-object v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne p1, v3, :cond_1

    aget-object v3, v2, v0

    const/4 v4, 0x1

    aget v1, v3, v4

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getToolbarSeparatorBg()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f020705

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-nez v1, :cond_1

    const v0, 0x7f020706

    goto :goto_0

    :cond_1
    const v0, 0x7f0200c6

    goto :goto_0
.end method

.method private setImageResUnPressed()V
    .locals 6

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildCount()I

    move-result v5

    if-gtz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/ime/framework/view/toolbar/ToolBarView;->getBackgroundResource(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-eqz v5, :cond_2

    move-object v3, v4

    check-cast v3, Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v3, v2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v6

    if-gez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildCount()I

    move-result v1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/ime/framework/view/toolbar/ToolBarView;->getBackgroundResource(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/ime/framework/view/toolbar/ToolBarView;->getBackgroundResource(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v5, Lcom/ime/framework/view/toolbar/ToolBarPage;

    if-eqz v6, :cond_3

    move-object v4, v5

    check-cast v4, Lcom/ime/framework/view/toolbar/ToolBarPage;

    invoke-virtual {v4}, Lcom/ime/framework/view/toolbar/ToolBarPage;->getItemId()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v4, v3}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startTextTemplate()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->startTextTemplateActivity()V

    return-void
.end method

.method private startTextTemplateActivity()V
    .locals 0

    return-void
.end method


# virtual methods
.method public createToolBarViews(ZLcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarItemsNum()I

    move-result v3

    const-string v6, "SamsungIME_UnifiedIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ToolBarPage createToolBarView tollbar itemNums = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarItemSize()I

    move-result v6

    iput v6, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarItemSize:I

    iget v6, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarItemSize:I

    if-le v3, v6, :cond_0

    iget v3, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarItemSize:I

    :cond_0
    iput-object p2, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v6, 0x8

    if-ne v1, v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03009d

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/toolbar/ToolBarPage;

    :goto_1
    invoke-virtual {p2, v0}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolBarVecValue(I)Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;->ordinal()I

    move-result v6

    invoke-direct {p0, v6, p2}, Lcom/ime/framework/view/toolbar/ToolBarView;->getToolbarPageRes(ILcom/ime/framework/view/toolbar/ToolBarContainer;)I

    move-result v4

    invoke-virtual {v5, v2, v4, p2}, Lcom/ime/framework/view/toolbar/ToolBarPage;->initialize(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;ILcom/ime/framework/view/toolbar/ToolBarContainer;)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ime/framework/view/toolbar/ToolBarPage;->setClickable(Z)V

    invoke-virtual {p0, v5}, Lcom/ime/framework/view/toolbar/ToolBarView;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03009c

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/view/toolbar/ToolBarPage;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v3, -0x1

    if-ne v0, v6, :cond_1

    invoke-virtual {p2, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->setLastItemId(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public getDragItemPageIndex()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDragItmeIdIndex:I

    return v0
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2

    const-string v0, "SamsungIME_UnifiedIME"

    const-string v1, "ToolBarView: initialize toolbar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    sget-object v0, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-void
.end method

.method public recycleVariables()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->removeAllViews()V

    return-void
.end method

.method public resetToolbarSymbolActiveState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    return-void
.end method

.method public updateToolBarView(ZLcom/ime/framework/view/toolbar/ToolBarContainer;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarView updateToolBarView()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p2, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mContainer:Lcom/ime/framework/view/toolbar/ToolBarContainer;

    iput-object v5, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    new-instance v1, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    invoke-direct {v1, p0, v5}, Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;-><init>(Lcom/ime/framework/view/toolbar/ToolBarView;Lcom/ime/framework/view/toolbar/ToolBarView$1;)V

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mDownDelayHandler:Lcom/ime/framework/view/toolbar/ToolBarView$DownDelayHandler;

    iput-boolean v4, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mViewDownEnable:Z

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/view/toolbar/ToolBarView;->createToolBarViews(ZLcom/ime/framework/view/toolbar/ToolBarContainer;)V

    invoke-static {}, Lcom/ime/framework/view/toolbar/ToolBarContainer;->getToolbarStatus()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResUnPressed()V

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarStatus:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    sget-object v2, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/view/toolbar/ToolBarView;->getSymbolActiveItem()Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mToolbarSymbolActive:Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;

    invoke-direct {p0, v1, v4}, Lcom/ime/framework/view/toolbar/ToolBarView;->setImageResource(Lcom/ime/framework/view/toolbar/ToolBarContainer$ToolBarItems;Z)V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/toolbar/ToolBarView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    :cond_2
    return-void
.end method

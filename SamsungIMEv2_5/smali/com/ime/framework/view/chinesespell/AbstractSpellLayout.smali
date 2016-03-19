.class public abstract Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractSpellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$1;,
        Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;
    }
.end annotation


# static fields
.field private static final LEFT_RIGHT_MARGIN:I = 0x1b

.field private static final TOP_BOTTOM_MARGIN:I = 0x8


# instance fields
.field private mFloatingWindow:Landroid/widget/PopupWindow;

.field private mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mSpellText:Ljava/lang/CharSequence;

.field private mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/ime/framework/view/chinesespell/AbstractSpellView;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private cancelShowing()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v0}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    :cond_0
    return-void
.end method

.method private dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private showSpellView()V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getViewController()Lcom/ime/framework/view/ViewController;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/view/ViewController;->isOneHandKeypadRightSet()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v4, v7, v7}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->measure(II)V

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v4, v6}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isFullLandMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->requestLayout()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v4, v6}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public getLengthOfSpellText()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSpellViewId()I
.end method

.method protected abstract getSpellViewLeftEdge()I
.end method

.method protected abstract getSpellViewTextSize()F
.end method

.method protected abstract getTextColor()I
.end method

.method public init()V
    .locals 6

    const/16 v5, 0x1b

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getSpellViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->getSpellViewTextSize()F

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1, v5, v4, v5, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public isSpellViewShowing()Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->isShown()Z

    move-result v1

    goto :goto_0
.end method

.method public setComposingImageShown(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractSpellLayout setComposingImageShown show : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSpellTextView.mShowCloudIcon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-boolean v3, v3, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-boolean v1, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iput-boolean v5, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iput-boolean v4, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-boolean v1, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iput-boolean v5, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->showSpellView()V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iput-boolean v4, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mShowCloudIcon:Z

    iget-object v1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, v1, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->mCloudHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->showSpellView()V

    goto :goto_0
.end method

.method public setSpellView(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSpellViewShown(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->cancelShowing()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getSelectedXt9PhraseLength()I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setComposingStr(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4, v5}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setComposingStr(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->cancelShowing()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v3}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->cancelShowing()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->showSpellView()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->cancelShowing()V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p1, :cond_8

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getSelectedXt9PhraseLength()I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setComposingStr(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->showSpellView()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4, v5}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setComposingStr(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->cancelShowing()V

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v4, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->showSpellView()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v3, v4}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->cancelShowing()V

    goto/16 :goto_0
.end method

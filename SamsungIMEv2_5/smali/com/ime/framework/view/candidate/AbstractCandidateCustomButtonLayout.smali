.class public abstract Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateCustomButtonLayout.java"


# instance fields
.field protected mFirstButton:Landroid/widget/Button;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field protected mSecondButton:Landroid/widget/Button;

.field private mShiftStateController:Lcom/ime/framework/common/ShiftStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init()V
    .locals 14

    const/4 v13, 0x7

    const/4 v8, 0x1

    const v12, 0x3f47ae14    # 0.78f

    const v11, 0x3f666666    # 0.9f

    const/4 v9, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v7

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v10, 0x8

    if-eq v7, v10, :cond_0

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-ne v7, v13, :cond_9

    :cond_0
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v7

    const/16 v10, 0x320

    if-ne v7, v10, :cond_9

    move v3, v8

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getFirstButtonId()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v7}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    const/16 v7, 0xe

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    const/16 v7, 0xf

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getMobileKeyboardSymPage()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    const v8, 0x7f0d02f9

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    new-instance v8, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;

    invoke-direct {v8, p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonListener(Landroid/view/View;)V

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Landroid/widget/Button;)I

    move-result v2

    if-eqz v3, :cond_3

    int-to-float v7, v2

    mul-float/2addr v7, v11

    float-to-int v2, v7

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    int-to-float v8, v2

    invoke-virtual {v7, v9, v8}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v7

    const/16 v8, 0x600

    if-ne v7, v8, :cond_4

    const-string v7, "@"

    iget-object v8, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v7

    if-eq v7, v13, :cond_4

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setIncludeFontPadding(Z)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    const/16 v8, 0x31

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setGravity(I)V

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getSecondButtonId()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setButtonListener(Landroid/view/View;)V

    if-eqz v3, :cond_6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v12

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v7, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Landroid/widget/Button;)I

    move-result v2

    if-eqz v3, :cond_7

    int-to-float v7, v2

    mul-float/2addr v7, v11

    float-to-int v2, v7

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    int-to-float v8, v2

    invoke-virtual {v7, v9, v8}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {p0, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void

    :cond_9
    move v3, v9

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getMobileKeyboardSymPage()I

    move-result v7

    if-ne v7, v8, :cond_b

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    const v8, 0x7f0d02fa

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    const v8, 0x7f0d02fb

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected abstract getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
.end method

.method protected abstract getButtonTypeface()Landroid/graphics/Typeface;
.end method

.method protected abstract getFirstButtonId()I
.end method

.method protected abstract getSecondButtonId()I
.end method

.method protected getTextFontSize(Landroid/widget/Button;)I
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v6

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v4, Landroid/graphics/RectF;

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    div-int/lit8 v7, v7, 0x5

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v7, v7

    invoke-direct {v4, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;I)I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Button;->getTextSize()F

    move-result v6

    int-to-float v7, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v1, v5

    :cond_2
    move v2, v1

    goto :goto_0
.end method

.method protected getTextFontSize(Ljava/lang/String;Landroid/graphics/RectF;I)I
    .locals 11

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v3, p1

    const/4 v1, 0x1

    if-lez p3, :cond_1

    move v1, p3

    :cond_0
    :goto_0
    int-to-float v8, v1

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v3, v8, v9, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v5, v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v4, v8

    cmpl-float v8, v7, v5

    if-lez v8, :cond_2

    cmpl-float v8, v6, v4

    if-lez v8, :cond_2

    :goto_1
    return v1

    :cond_1
    const/16 v1, 0x50

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    const-string v8, "DIOTEK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error! Candi FontSize is 0. please check the rect for lable - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p3

    goto :goto_1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    int-to-float v4, v2

    int-to-float v5, v1

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    add-float/2addr v4, v5

    int-to-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v1, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    :goto_1
    return v3

    :pswitch_1
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setButtonEnableOnEmailUrlMode(Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setButtonEnableOnMobileKeyboardSymMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public setButtonEnableOnMobileKeyboardUmlautCandidateMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected abstract setButtonListener(Landroid/view/View;)V
.end method

.method public setPrevNextButtonEnable(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mFirstButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/ime/implement/view/candidate/CandidateLayout;
.super Lcom/ime/framework/view/candidate/AbstractCandidateLayout;
.source "CandidateLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/ime/implement/view/candidate/CandidateLayout;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :goto_0
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/ime/implement/view/candidate/CandidateLayout;->setPadding(IIII)V

    return-void

    :cond_0
    const/4 v5, 0x7

    if-ne v1, v5, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method private getLeftButtonAreaWidth()I
    .locals 4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090737

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090743

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090738

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected getBackgroundResourceId()I
    .locals 3

    const v1, 0x7f0202ad

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x7f020006

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method protected getBottomPaddingSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09050f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090755

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getInputedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getLeftPaddingSize()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f080043

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getMaxWidth(Z)I
    .locals 11

    const v10, 0x7f090100

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v9, 0x7f080042

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v8, 0x7

    if-ne v4, v8, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f091027

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    sub-int/2addr v0, v8

    :cond_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    const/16 v8, 0x8

    if-ne v4, v8, :cond_6

    :try_start_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090ae0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    sub-int/2addr v0, v8

    :cond_4
    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8, v4}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v7

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingCandidateButtonOnEmailUrlMode()Z

    move-result v6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz v7, :cond_9

    iget-object v8, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v8}, Lcom/ime/framework/common/PrivateImeOptionsController;->getPrevNextTypeOfPrivateImeOptions()I

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v6, :cond_9

    if-nez v2, :cond_7

    if-eqz v5, :cond_9

    :cond_7
    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v0, v8

    :cond_8
    :goto_1
    move v1, v0

    goto/16 :goto_0

    :cond_9
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getLeftButtonAreaWidth()I

    move-result v8

    sub-int/2addr v0, v8

    :cond_b
    move v1, v0

    goto/16 :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPressedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getPreviewSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "SEC_ROBOTO_LIGHT_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f080044

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getFractionOrientedWidth(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method protected getSelecedBackgroundResourceId()I
    .locals 1

    const v0, 0x7f02001b

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    const v0, 0x7f0b0025

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 2

    const v1, 0x7f0900fd

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090519

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090511

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v1, 0x7f080045

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090728

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ROBOTO_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "SEC_ROBOTO_LIGHT_REGULAR"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getTopPaddingSize()I
    .locals 2

    iget-boolean v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mIsPopupCandidateLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09050e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090754

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0
.end method

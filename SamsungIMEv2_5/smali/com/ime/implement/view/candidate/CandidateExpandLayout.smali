.class public Lcom/ime/implement/view/candidate/CandidateExpandLayout;
.super Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.source "CandidateExpandLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const v9, 0x7f090742

    const v7, 0x7f090741

    const v8, 0x7f09011e

    const/16 v6, 0x8

    invoke-direct {p0, p1}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    :cond_0
    if-ne v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090516

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090514

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090515

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090738

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090747

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int v2, v5, v6

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090749

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int v3, v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v9, 0x7f090742

    const v8, 0x7f090741

    const v7, 0x7f09011e

    const/16 v6, 0x8

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getPaddingBottom()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    if-eq v1, v6, :cond_0

    const/4 v5, 0x7

    if-ne v1, v5, :cond_2

    :cond_0
    if-ne v1, v6, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090103

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090516

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090514

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090515

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5, v0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    :goto_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090749

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int v3, v5, v6

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090120

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v3, v5

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v2, v4, v3, v0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->setPadding(IIII)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getBackgroundResourceId()I
    .locals 3

    const v2, 0x7f0202ad

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    :cond_0
    return v2
.end method

.method protected getBottomPaddingSize()I
    .locals 5

    const v4, 0x7f090108

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090755

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

.method protected getCandidateLeftRightGapForOneHand()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903e1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getCandidateLineResourceId()I
    .locals 1

    const v0, 0x7f03000e

    return v0
.end method

.method protected getCandidateListLineResourceId()I
    .locals 1

    const v0, 0x7f0b0025

    return v0
.end method

.method protected getExpandScrollViewDividerLineRightPadding()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getExpandScrollViewRightPadding()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getFloatingKeyboardLeftEdge()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a53

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFloatingKeyboardRightEdge()I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090a54

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHighlightTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getInputedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getLeftPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 8

    const v7, 0x7f090101

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/4 v5, 0x7

    if-ne v1, v5, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f091027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v0

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardLeftEdge()I

    move-result v2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getFloatingKeyboardRightEdge()I

    move-result v3

    :try_start_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090a52

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableOneHandKeypad()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903ea

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0903eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    goto :goto_0
.end method

.method protected getOneHandKeyboardViewWidth()I
    .locals 3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903ea

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0903eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0
.end method

.method protected getPressedTextColor()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method protected getRightPaddingSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected getSplitResourceId()I
    .locals 1

    const v0, 0x7f0b0025

    return v0
.end method

.method protected getSuggestionFontSize()F
    .locals 5

    const v4, 0x7f0900fd

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090ae1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-float v2, v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    goto :goto_0
.end method

.method protected getSuggestionHeight()I
    .locals 5

    const v4, 0x7f0900fe

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09050d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090728

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0
.end method

.method protected getSuggestionTypeface()Landroid/graphics/Typeface;
    .locals 4

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ROBOTO_REGULAR"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "SEC_ROBOTO_LIGHT_REGULAR"

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v0, v2, v3}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_0
.end method

.method protected getTextColor()I
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getTopPaddingSize()I
    .locals 5

    const v4, 0x7f090107

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0909fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090754

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/view/candidate/CandidateExpandLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0
.end method

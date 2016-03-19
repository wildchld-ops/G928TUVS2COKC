.class public Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractCandidateUmlautButtonLayout.java"


# instance fields
.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v1

    const/16 v2, 0x320

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateUmlautButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

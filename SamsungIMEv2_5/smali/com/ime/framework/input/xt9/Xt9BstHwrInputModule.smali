.class public Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9BstHwrInputModule.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mCurrentCompsing:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->onKeyDownUpHandle(I)V

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->clearAllStrokes()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->finishComposing(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method private processEnterKey()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->sendEnterKeyHandle()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->clearCandidateList()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0
.end method

.method private processSpaceKey()V
    .locals 15

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v13, v14, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v6, :cond_2

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v7, :cond_2

    move v10, v11

    :goto_0
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v8

    if-eqz v10, :cond_7

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_7

    if-nez v8, :cond_7

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13, v12}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-nez v1, :cond_3

    const/4 v3, 0x0

    :goto_1
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-le v13, v0, :cond_4

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    :goto_2
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13, v5, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    if-eqz v4, :cond_0

    invoke-interface {v4, v2, v11}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_6

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v11, v2, v13}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v9

    if-lez v9, :cond_5

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    move v10, v12

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_3

    :cond_6
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13, v12}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->clearCandidateList()V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->finishComposing(Z)V

    goto :goto_3

    :cond_7
    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->clearCandidateList()V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->finishComposing(Z)V

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    if-eqz v8, :cond_1

    const/16 v11, 0x3e

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->onKeyDownUpHandle(I)V

    goto :goto_3
.end method


# virtual methods
.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->initComposingBuffer()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseDHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCurrentCompsing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->initComposingBuffer()V

    goto :goto_0
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initCandidates(Ljava/util/ArrayList;)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 3

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->autoPeriod(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x2c

    if-ne p1, v2, :cond_3

    const p1, 0xff0c

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->processSymbolicKey(I[I)V

    goto :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v6, :cond_1

    sget-object v6, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->TAG:Ljava/lang/String;

    const-string v7, "pickSuggestionManually() mInputManager is null."

    invoke-static {v6, v7}, Landroid/bluetooth/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/engine/bsthwr/HWManager;->clearAllStrokes()V

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-super {p0, p1, p2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    invoke-interface {v3, p2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->setCurrentEngineIndex(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isBstHwrCandidates()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v6

    invoke-interface {v6, p2}, Lcom/ime/framework/engine/InputEngineManager;->prepareNormalPredictByXT9(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1, p2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    instance-of v6, v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v6, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->clearCandidateList()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    invoke-interface {v6, v7, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_6
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateChineseFullStopCharacter()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7, v9}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v8, -0x1

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    if-eqz p2, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, p2, v7}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v5

    if-lez v5, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setIsBstHwrCandidates(Z)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :goto_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/engine/InputEngineManager;->setCurrentEngineIndex(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public predictionWord()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    return v1
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    return v1
.end method

.method protected processSymbolicKey(I[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    new-array v0, v5, [I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->processEnterKey()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->processSpaceKey()V

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputCharSequence(Ljava/lang/CharSequence;)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->setComposingText()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->initComposingBuffer()V

    const/16 v2, 0x2026

    if-ne p1, v2, :cond_6

    const-string v2, "\u2026\u2026"

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_6
    int-to-char v2, p1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

.class public Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyChineseInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 14

    const/4 v13, 0x0

    const/16 v12, 0x43

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->resetPredictionWord()V

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v8, -0x5

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getIsSpellViewBackSpace()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v5, v0}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :goto_1
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v5, v0}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processContactDecoding(Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processCloudDecoding(Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    if-nez v3, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v7, v8, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6, v10}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :goto_3
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->hasPrevNextButton()Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->onKeyDownUpHandle(I)V

    :cond_9
    :goto_4
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v13, v0}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_c
    :goto_5
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->onKeyDownUpHandle(I)V

    goto :goto_5

    :cond_e
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    invoke-interface {v7, v8, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v13, v9}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto/16 :goto_2
.end method

.method private processEnterKey()V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->removeDivChar([C)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v7, v6}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v7, v6}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v6}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->sendEnterKeyHandle()V

    goto :goto_1
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->resetPredictionWord()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposingWithoutInit()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v15

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getCurrentChineseModeMaxLength()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->showMaxInputNumberToast()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_b

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    :cond_3
    :goto_1
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v14}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_e

    const/4 v7, 0x0

    if-eqz v13, :cond_4

    if-eqz v11, :cond_4

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    :cond_4
    if-lez v10, :cond_5

    if-eqz v7, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, -0x5

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v8, :cond_7

    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v14, v2}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getWordInfoSequence()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mWordSequenceData:Ljava/util/ArrayList;

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mWordSequenceData:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setWordCandidateData(Ljava/util/ArrayList;)V

    :cond_9
    if-eqz v13, :cond_10

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x1

    invoke-interface {v1, v13, v2}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :goto_5
    if-eqz v8, :cond_0

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processContactDecoding(Ljava/lang/String;)I

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCloudLinkFeatureStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processCloudDecoding(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v10

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v10

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v13

    goto/16 :goto_2

    :cond_e
    if-gtz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, -0x5

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_5
.end method

.method private processSpaceKey()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v13}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v12

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v10, :cond_e

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v14, 0x7a68484b

    if-eq v13, v14, :cond_0

    if-eqz v4, :cond_0

    const/4 v13, 0x1

    invoke-interface {v4, v10, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x1

    invoke-interface {v13, v10, v14}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v14, v15, v13}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v10

    if-lez v9, :cond_5

    if-eqz v6, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v14, 0x7a68434e

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v14, 0x7a685457

    if-ne v13, v14, :cond_4

    :cond_3
    if-nez v12, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13, v11}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x1

    invoke-interface {v13, v11, v14}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x1

    invoke-interface {v13, v10, v14}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    if-eqz v4, :cond_6

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    invoke-interface {v4, v3, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    if-eqz v6, :cond_c

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v15, -0x1

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v3, v14}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v8

    if-lez v8, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :goto_3
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v13

    if-eqz v13, :cond_a

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_a

    if-ltz v1, :cond_a

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_a

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    const/4 v14, 0x1

    invoke-interface {v4, v13, v14}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    :cond_a
    const/4 v13, 0x1

    invoke-interface {v4, v10, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    :cond_b
    const/4 v13, 0x1

    invoke-interface {v4, v10, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_3

    :cond_e
    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v13

    if-eqz v13, :cond_13

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v13

    if-nez v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v1

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_10

    if-ltz v1, :cond_10

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v1, v13, :cond_10

    invoke-virtual {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidates()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13, v5, v3}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    if-eqz v4, :cond_f

    const/4 v13, 0x1

    invoke-interface {v4, v3, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_f
    if-eqz v3, :cond_12

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-lez v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v14, 0x0

    invoke-interface {v3, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v3, v14}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v8

    if-lez v8, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    goto :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    const/16 v13, 0x3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_3
.end method

.method private removeDivChar([C)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-char v1, v0, v2

    const/16 v5, 0x27

    if-eq v1, v5, :cond_0

    if-nez v4, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    return-object v4
.end method


# virtual methods
.method public closing()V
    .locals 3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    return-void
.end method

.method public isPredictionWord()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 4

    const/16 v3, -0x7a

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, -0x3f

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getSyllableDelimiter()I

    move-result p1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v2, 0x7a68484b

    if-ne v1, v2, :cond_2

    const/16 v1, 0x41

    if-lt p1, v1, :cond_2

    const/16 v1, 0x5a

    if-gt p1, v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_5

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processSingleTap(I[I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    :goto_1
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mLastKeyCode:I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne p1, v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->getSyllableDelimiter()I

    move-result p1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_6

    const p1, 0xff0c

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processSymbolicKey(I[I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v3, v4, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v0, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v6, v4}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    invoke-static {p1}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_3
    return-void

    :cond_4
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 15

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v7, 0x0

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    move/from16 v11, p1

    if-eqz v4, :cond_6

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v12

    if-eqz v12, :cond_1

    if-lez v11, :cond_1

    add-int/lit8 v11, v11, -0x1

    :cond_1
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getContactCandidateUpdate()Z

    move-result v12

    if-eqz v12, :cond_2

    if-lez v11, :cond_2

    add-int/lit8 v11, v11, -0x1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->isItCloudOrContactIndex(I)Z

    move-result v12

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p2

    invoke-interface {v12, v11, v0}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v7

    :cond_3
    :goto_1
    if-eqz v3, :cond_8

    if-eqz v4, :cond_d

    if-eqz v8, :cond_c

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_c

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->isItCloudOrContactIndex(I)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v8

    if-lez v7, :cond_7

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v10

    iget v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v13, 0x7a68434e

    if-eq v12, v13, :cond_4

    iget v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v13, 0x7a685457

    if-ne v12, v13, :cond_5

    :cond_4
    if-nez v10, :cond_5

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12, v9}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v9, v13}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v8, v13}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p2

    invoke-interface {v12, v11, v0}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v7

    goto :goto_1

    :cond_7
    const/4 v12, 0x1

    invoke-interface {v3, v8, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_8
    :goto_2
    if-eqz v4, :cond_9

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v2

    instance-of v12, v2, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v12, :cond_9

    move-object v1, v2

    check-cast v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_9
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    if-eqz v4, :cond_10

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_a
    :goto_3
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->updateChineseFullStopCharacter()V

    if-eqz v4, :cond_b

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v14, -0x1

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_b
    if-eqz p2, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_12

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-interface {v12, v0, v13}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v6

    if-lez v6, :cond_11

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2

    :cond_d
    if-eqz v8, :cond_f

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_f

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v8

    if-lez v7, :cond_e

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v13, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v8, v13}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v12, 0x1

    invoke-interface {v3, v8, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_2

    :cond_f
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_2

    :cond_10
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_3

    :cond_11
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0

    :cond_12
    iget-object v12, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_0
.end method

.method public predictionWord()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    return v2
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    return v2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 12

    const/16 v8, 0xa

    if-ne p1, v8, :cond_1

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processEnterKey()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v8, 0x20

    if-ne p1, v8, :cond_2

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processSpaceKey()V

    goto :goto_0

    :cond_2
    const/4 v8, -0x5

    if-ne p1, v8, :cond_4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v8

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    const/16 v8, -0x3eb

    if-ne p1, v8, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_7
    const/4 v5, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v7

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    :cond_9
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_d

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v9, v10, v8}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    move-result v4

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v5

    if-lez v4, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "TABLET_MODE"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b

    iget v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v9, 0x7a68434e

    if-eq v8, v9, :cond_a

    iget v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputLanguage:I

    const v9, 0x7a685457

    if-ne v8, v9, :cond_b

    :cond_a
    if-nez v7, :cond_b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v6}, Lcom/ime/framework/engine/InputEngineManager;->getPhoneticSpellGroup(Ljava/util/ArrayList;)I

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x1

    invoke-interface {v8, v6, v9}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_b
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x1

    invoke-interface {v8, v5, v9}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->commitText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->clearCandidateList()V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v9, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v10, -0x1

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v1, v9}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v3

    if-lez v3, :cond_f

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_d
    :goto_2
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->commitText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_f
    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2

    :cond_10
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->finishComposing(Z)V

    int-to-char v8, p1

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v8, p0, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setAddStrokeCallBackOnHWREngine()V
    .locals 0

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

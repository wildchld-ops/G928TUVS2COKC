.class public Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 13

    const/16 v12, 0x43

    const/16 v11, 0x19

    const/4 v8, -0x5

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v4, ""

    const-string v5, ""

    if-eqz v1, :cond_1

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v9, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    if-nez v5, :cond_1

    const-string v5, ""

    :cond_1
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    const-string v6, ""

    if-eqz v1, :cond_2

    invoke-interface {v1, v10}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    if-eq v7, v9, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isBeforeTraceInput()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_7

    :cond_3
    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-le v7, v9, :cond_6

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processReCaptureForXT9(I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    if-eqz v2, :cond_e

    if-eqz v3, :cond_e

    if-eqz v0, :cond_e

    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_10

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sec.chaton"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_14

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_12

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_12

    :cond_11
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    :cond_12
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_13
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getDeleteCount()I

    move-result v7

    if-eq v7, v9, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_15
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_1
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposingWithoutInit()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mLastKeyCode:I

    if-ne v4, p1, :cond_1

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-nez v2, :cond_3

    :goto_2
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    iget-boolean v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v3, 0x5dc

    invoke-virtual {p0, v2, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    const/4 v11, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v10

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v10, :cond_0

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    :cond_1
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_2
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_e

    const/4 v0, 0x1

    new-array v7, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    new-array v6, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v12

    if-eqz v12, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    invoke-interface {v0, v1, v2, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v11, 0x1

    :cond_a
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_b
    if-eqz v11, :cond_14

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :goto_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_c

    if-eqz v11, :cond_c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    :cond_c
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez v11, :cond_16

    :cond_d
    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto/16 :goto_3

    :cond_15
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_16
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    if-eqz v11, :cond_18

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_0

    :cond_18
    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 14

    int-to-char v10, p1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isEnableAutoCorrection(C)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v4, 0x1

    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->wordSeparatorPretreatment(I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, -0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_2
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_3

    const/16 v10, 0x20

    if-ne p1, v10, :cond_3

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_3
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v6, :cond_6

    const/16 v10, 0x20

    if-ne p1, v10, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v9, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v3

    const/4 v10, 0x0

    invoke-interface {v2, v3, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v11, v12, v10}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v10, 0x1

    invoke-interface {v2, v0, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    const/4 v9, 0x1

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v0, :cond_b

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v0, v11}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v8

    if-lez v8, :cond_a

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_6
    :goto_1
    const/16 v10, 0xa

    if-ne p1, v10, :cond_c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->sendEnterKeyHandle()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_b
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    goto :goto_1

    :cond_c
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p0 .. p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_2

    :cond_d
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->refreshContextBuffer(ZZ)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v7, :cond_e

    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_e
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposingWithoutInit()V

    int-to-char v10, p1

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v10

    if-eqz v10, :cond_f

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, p1}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9WithoutIndex(I)I

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_5

    move v2, v3

    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    if-ne v5, v3, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setPredictionWord(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_9

    :cond_2
    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_1
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x20

    if-ne p1, v3, :cond_3

    iget v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    if-eq v3, v6, :cond_4

    :cond_3
    iput v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    :cond_4
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mLastKeyCode:I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1, v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_5
    move v2, v4

    goto :goto_0

    :cond_6
    if-ne v0, v3, :cond_8

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processMultiTap(I[I)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsKorMode:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v3

    if-nez v3, :cond_b

    :cond_a
    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->autoPeriod(I)V

    goto :goto_1

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_2
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

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/common/InputManager;->setXt9NextWordPrediction(Z)V

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-eqz v6, :cond_1

    if-ltz p1, :cond_0

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v5, v6, p1

    invoke-interface {v9, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v4

    const/4 v8, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    if-nez v4, :cond_e

    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const v19, 0x7fffffff

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v19

    add-int/lit8 v14, v19, -0x1

    :goto_1
    if-ltz v14, :cond_2

    invoke-interface {v3, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isLetter(C)Z

    move-result v19

    if-nez v19, :cond_b

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosNextText:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosPrevText:I

    move/from16 v19, v0

    if-nez v19, :cond_c

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-interface {v9, v0, v7}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosPrevText:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosNextText:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v12, 0x1

    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIgnorePredictionWord:Z

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v19

    if-eqz v19, :cond_5

    const/4 v8, 0x1

    :cond_5
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz p2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v19

    if-eqz v19, :cond_6

    if-eqz v15, :cond_6

    const-string v19, " "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->isThaiAcceptable()Z

    move-result v19

    if-nez v19, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->setComposingText()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPickSuggestionIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v19

    if-lez v19, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPickSuggestionIndex:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_8
    :goto_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    :cond_9
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    if-eqz v8, :cond_a

    const-string v19, " "

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v12, :cond_a

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPickSuggestionIndex:I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v20, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_1

    :cond_c
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v19, v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosNextText:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosPrevText:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mPosNextText:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    if-nez v4, :cond_f

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIgnorePredictionWord:Z

    goto/16 :goto_3

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_4

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v4, v0, :cond_4

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mIgnorePredictionWord:Z

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    goto/16 :goto_4
.end method

.method protected processSymbolicKey(I[I)V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->clearCandidateList()V

    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    const/16 v1, -0x3eb

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->initComposingBuffer()V

    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
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

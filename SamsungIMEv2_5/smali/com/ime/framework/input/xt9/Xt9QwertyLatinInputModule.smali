.class public Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private isLetterFrontOfCursor()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 14

    const/16 v13, 0x19

    const/4 v12, -0x1

    const/4 v11, -0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v4, ""

    const-string v5, ""

    if-eqz v1, :cond_3

    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isBeforeTraceInput()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    if-le v7, v10, :cond_9

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isBeforeTraceInput()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v7

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processReCaptureForXT9(I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setComposingText()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v13}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :cond_6
    :goto_2
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processContactDecoding(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    const/16 v7, 0x43

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_a

    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/16 v8, 0x40

    if-lt v7, v8, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isBeforeTraceInput()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->predictionWord()Z

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v13}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_2

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v13}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v12}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    if-eqz v0, :cond_f

    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_e

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v7

    if-nez v7, :cond_e

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_e
    const/16 v7, 0x43

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_2

    :cond_f
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    :cond_10
    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v8, 0x76690000

    if-ne v7, v8, :cond_11

    if-eqz v4, :cond_11

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v1, v10, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_11
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getDeleteCount()I

    move-result v7

    const/16 v8, 0x14

    if-le v7, v8, :cond_12

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v7

    if-nez v7, :cond_12

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v7

    invoke-interface {v1, v7, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_12
    const/16 v7, 0x43

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_16

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isRecapture()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_14

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "\'-#_"

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v12, :cond_14

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_14

    const-string v7, "\'-#_"

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v12, :cond_14

    :cond_13
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_2

    :cond_14
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_15
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    iput-boolean v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsRecapturingProcessed:Z

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getDeleteCount()I

    move-result v7

    if-eq v7, v10, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_17
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_18
    iput v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    iput v9, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    goto/16 :goto_2
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposingWithoutInit()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    iput-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_3

    move v0, v3

    :goto_0
    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-nez v3, :cond_5

    :goto_2
    return-void

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isThaiAcceptable(Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_6
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setComposingText()V

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v4, 0x19

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleChar(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/common/InputManager;->getLabelFromCurrentView(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_2
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getSecondaryChar(I)I

    move-result v4

    int-to-char v1, v4

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    :cond_3
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 12

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    const/4 v9, 0x0

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isEnableAutoCorrection(C)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    :cond_0
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_1
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_15

    const/4 v0, 0x1

    new-array v7, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_9

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    new-array v6, v0, [Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v11

    if-eqz v11, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    aget-boolean v0, v6, v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v8, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->wordSeparatorPretreatment(I)Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v10

    const/16 v0, -0xff

    if-eq v10, v0, :cond_6

    int-to-char v0, v10

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_6
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_7
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    invoke-interface {v0, v1, v2, v7}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->wordSeparatorPretreatment(I)Z

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_d

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v9, 0x1

    :goto_3
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_e

    if-nez v9, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_26

    if-eqz v9, :cond_26

    :cond_f
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :cond_10
    :goto_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v9, :cond_11

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    :cond_11
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_12

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_12

    int-to-char v0, p1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_12
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isThaiAcceptable()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_13
    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v1, 0x76690000

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processVietnameseTone(IZ)V

    :cond_14
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_27

    if-eqz v9, :cond_27

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    :goto_5
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isContactLinkFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processContactDecoding(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    const/16 v1, 0x40

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    const/16 v0, 0x40

    iput v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    :cond_16
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->selectWordInList(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_17
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_19
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_1a
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    if-lez v0, :cond_22

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsRecapturingProcessed:Z

    if-nez v0, :cond_22

    :cond_1b
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_1c
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_1d
    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/16 v1, 0x40

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_1e
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_1f
    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_25

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_20

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    :goto_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processReCaptureForXT9(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->makeCompoingTextCursoroWrod()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    goto/16 :goto_1

    :cond_20
    int-to-char v0, p1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_6

    :cond_21
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_1

    :cond_22
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_23
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_24
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v0

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_25
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearAction()V

    goto/16 :goto_3

    :cond_26
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isAvailablePrediction()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez v9, :cond_10

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_4

    :cond_27
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isAvailablePrediction()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_5

    :cond_28
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_29

    if-eqz v9, :cond_29

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setComposingText()V

    goto/16 :goto_5

    :cond_29
    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2a

    iget v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    :cond_2a
    :goto_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_5

    :cond_2b
    int-to-char v0, p1

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_7
.end method

.method private processWordSeparator(I[I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v12

    iget v12, v12, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v3, v12, 0xff0

    move/from16 v0, p1

    int-to-char v12, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isEnableAutoCorrection(C)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->getXt9AutoReplacementCondition()Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v6, 0x1

    :goto_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v6, :cond_7

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->wordSeparatorPretreatment(I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v12

    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    const/16 v12, 0x20

    move/from16 v0, p1

    if-ne v0, v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v5

    const/4 v12, 0x0

    invoke-interface {v4, v5, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v13, v14, v12}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v12, 0x1

    invoke-interface {v4, v1, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    const/4 v11, 0x1

    :cond_3
    if-eqz v11, :cond_4

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v1, v13}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v10

    if-lez v10, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_4
    :goto_2
    const/16 v12, 0xa

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->sendEnterKeyHandle()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosPrevText:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_1

    const/16 v12, 0x20

    move/from16 v0, p1

    if-ne v0, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-nez v12, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual/range {p0 .. p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v12

    if-eqz v12, :cond_10

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    const/16 v12, 0x20

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_5

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v12

    if-eqz v12, :cond_d

    if-eqz v9, :cond_d

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v4, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_d
    move/from16 v0, p1

    int-to-char v12, v0

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const/16 v12, 0x20

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v12}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/ime/framework/engine/InputEngineManager;->isTreatedAsLetter(I)Z

    move-result v12

    if-nez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9WithoutIndex(I)I

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->doNextWordPrediction(Z)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setContactCandidateUpdate(Z)V

    goto/16 :goto_3

    :cond_10
    const/16 v12, 0x10

    if-eq v3, v12, :cond_11

    const/16 v12, 0x20

    if-ne v3, v12, :cond_12

    :cond_11
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_12
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->refreshContextBuffer(Z)I

    goto :goto_5
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public getSecondaryChar(I)I
    .locals 7

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v3

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isAcuteAccentState()Z

    move-result v0

    move v2, p1

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v1

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x6b610000

    if-ne v5, v6, :cond_0

    if-nez v3, :cond_5

    :cond_0
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x656c0000

    if-ne v5, v6, :cond_1

    if-nez v0, :cond_5

    :cond_1
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x6c760000

    if-ne v5, v6, :cond_2

    if-nez v0, :cond_5

    :cond_2
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x61720000

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_5

    :cond_3
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x66610000

    if-ne v5, v6, :cond_4

    if-nez v3, :cond_5

    :cond_4
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x75720000

    if-ne v5, v6, :cond_6

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v1, p1}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v4

    const/16 v5, -0xff

    if-eq v4, v5, :cond_6

    move v2, v4

    :cond_6
    return v2
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v0

    const/4 v2, 0x1

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v7, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_8

    move v3, v4

    :goto_0
    if-eqz v2, :cond_2

    const v6, 0x656e4742

    if-eq v0, v6, :cond_0

    const v6, 0x656e5553

    if-ne v0, v6, :cond_9

    :cond_0
    const/16 v6, 0x69

    if-ne p1, v6, :cond_9

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->isLetterFrontOfCursor()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v4}, Lcom/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    :cond_2
    :goto_1
    iput-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIgnorePredictionWord:Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_3

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mPosNextText:I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_10

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v7, :cond_10

    :cond_4
    if-eqz v1, :cond_5

    const/4 v6, 0x7

    if-eq v1, v6, :cond_5

    const/16 v6, 0x8

    if-ne v1, v6, :cond_e

    :cond_5
    iget-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v4}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v0, p1}, Lcom/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    :goto_2
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x20

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    if-eq v4, v7, :cond_7

    :cond_6
    iput v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mStateCandidate:I

    :cond_7
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mLastKeyCode:I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_8
    move v3, v5

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/ime/framework/engine/InputEngineManager;->setActiveWordStatusChangable(Z)V

    goto :goto_1

    :cond_a
    iget-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_b

    const/high16 v4, 0x74680000

    if-ne v0, v4, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    goto :goto_2

    :cond_b
    iget-boolean v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v4, :cond_d

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->isLaggingModeLanguage(I)Z

    move-result v4

    if-eqz v4, :cond_d

    const/high16 v4, 0x6b6f0000

    if-ne v0, v4, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    :cond_c
    invoke-direct {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleChar(I)V

    goto :goto_2

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    :cond_e
    if-ne v1, v4, :cond_f

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTap(I[I)V

    goto :goto_2

    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    goto :goto_2

    :cond_10
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSingleTap(I[I)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->autoPeriod(I)V

    goto :goto_2

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v1

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_5
    const/16 v1, -0x3eb

    if-ne p1, v1, :cond_6

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_8
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

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

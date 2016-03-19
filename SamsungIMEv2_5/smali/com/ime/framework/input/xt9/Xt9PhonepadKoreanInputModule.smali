.class public Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9PhonepadKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 12

    const/16 v11, 0x43

    const/16 v10, 0x19

    const/4 v9, -0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v2, ""

    const-string v3, ""

    if-eqz v0, :cond_3

    invoke-interface {v0, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :cond_2
    if-nez v3, :cond_3

    const-string v3, ""

    :cond_3
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mStateCandidate:I

    if-ne v5, v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isBeforeTraceInput()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isBeforeTraceInput()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isRecapture()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v5

    if-le v5, v7, :cond_8

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processReCaptureForXT9(I)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setComposingText()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v10}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :cond_7
    :goto_2
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v6, 0x5dc

    invoke-virtual {p0, v5, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v10}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v10}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v6, -0x1

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto :goto_2

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    :cond_d
    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputLanguage:I

    const/high16 v6, 0x76690000

    if-ne v5, v6, :cond_e

    if-eqz v2, :cond_e

    invoke-static {v2}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v5, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_e
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->getDeleteCount()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_f

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.chaton"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v5

    invoke-interface {v0, v5, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isRecapture()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_11

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_2

    :cond_11
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_12
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->getDeleteCount()I

    move-result v5

    if-eq v5, v7, :cond_14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_14
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_2
.end method

.method private processMultiTap(I[I)V
    .locals 13

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    const/4 v6, 0x0

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    move v0, v3

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v10

    const/4 v11, 0x4

    if-ge v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_1

    if-nez v5, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v10

    if-eqz v10, :cond_0

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_1
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v10

    const/16 v11, 0x40

    if-lt v10, v11, :cond_2

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_2
    :goto_0
    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_11

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_11

    const/4 v10, 0x5

    if-ge v9, v10, :cond_c

    const/4 v10, 0x1

    new-array v2, v10, [Z

    const/4 v10, 0x1

    new-array v1, v10, [Z

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v8

    if-eqz v8, :cond_7

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v10

    const/16 v11, 0x40

    if-ge v10, v11, :cond_6

    if-nez v5, :cond_5

    const/4 v10, 0x4

    if-lt v9, v10, :cond_6

    :cond_5
    if-eqz v5, :cond_2

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsMultiTapSymbol:Z

    if-eqz v10, :cond_2

    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsMultiTapSymbol:Z

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    aget-boolean v10, v1, v10

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->selectWordInList(I)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_8

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_8
    if-eqz v5, :cond_b

    const/4 v10, 0x4

    if-ge v9, v10, :cond_b

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v10

    if-eqz v10, :cond_9

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_b
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v11, -0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_c
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v10}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v6, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearAction()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->resetPredictionWord()V

    :cond_d
    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setComposingText()V

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setTimeoutComposingLength(I)V

    if-eq v0, v3, :cond_e

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_e
    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_f

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v10

    if-eqz v10, :cond_1b

    :cond_f
    if-eqz v6, :cond_1b

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v11, 0x19

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    :cond_10
    :goto_3
    const/4 v10, 0x4

    if-lt v9, v10, :cond_3

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v11, 0x5dc

    invoke-virtual {p0, v10, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_1

    :cond_11
    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_16

    if-eqz v5, :cond_16

    const/4 v10, 0x4

    if-ge v9, v10, :cond_16

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v10

    if-eqz v10, :cond_12

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_12
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_13
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    :cond_14
    :goto_4
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v11, "USE_TOGGLE_NUMBER_INPUT"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_15

    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-nez v10, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :cond_15
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearAction()V

    goto/16 :goto_2

    :cond_16
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v10

    if-eqz v10, :cond_18

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->selectWordInList(I)V

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v10}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v10

    if-eqz v10, :cond_17

    const/16 v10, 0x20

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v10}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v10

    if-eqz v10, :cond_17

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_17
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_4

    :cond_18
    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_19

    const/4 v10, 0x4

    if-ge v9, v10, :cond_19

    :cond_19
    const/4 v10, 0x4

    if-lt v9, v10, :cond_1a

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    const-string v7, ""

    if-eqz v4, :cond_1a

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v5, :cond_1a

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->getTimeoutComposingLength()I

    move-result v10

    if-lez v10, :cond_1a

    if-eqz v7, :cond_1a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1a

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_1a

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    int-to-short v11, v11

    const/4 v12, 0x1

    invoke-interface {v10, v7, v11, v12}, Lcom/ime/framework/engine/InputEngineManager;->doRecaptureForXt9(Ljava/lang/String;SZ)I

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->updateSelectList()I

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_1a
    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v11, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v11

    invoke-interface {v10, p1, v11}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_4

    :cond_1b
    iget-boolean v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v10, :cond_1c

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v11, 0x19

    invoke-interface {v10, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_3

    :cond_1c
    const/4 v10, 0x4

    if-ge v9, v10, :cond_10

    iget-object v10, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v11, 0x5dc

    invoke-virtual {p0, v10, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_3
.end method

.method private processSingleTap(I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "IS_KEY_LONGPRESS"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v3

    const/4 v9, -0x1

    if-nez v6, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Lcom/ime/framework/input/ComposingTextManager;->codePointAt(I)I

    move-result v9

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->wordSeparatorPretreatment(I)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v8, :cond_4

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->getLastWordDividerIndex()I

    move-result v5

    const/4 v13, 0x0

    invoke-interface {v4, v5, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    invoke-interface {v14, v15, v13}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    const/4 v13, 0x1

    invoke-interface {v4, v1, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    const/4 v12, 0x1

    :cond_3
    if-eqz v12, :cond_4

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v1, v14}, Lcom/ime/framework/engine/InputEngineManager;->getPredictWord(Ljava/lang/CharSequence;Ljava/util/ArrayList;)I

    move-result v11

    if-lez v11, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_4
    :goto_0
    const/16 v13, 0xa

    move/from16 v0, p1

    if-ne v0, v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->sendEnterKeyHandle()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v13}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v13}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual/range {p0 .. p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x4

    if-eq v3, v13, :cond_b

    const/4 v13, 0x2

    if-ne v3, v13, :cond_c

    :cond_b
    const/16 v13, 0x20

    invoke-static {v13}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v13

    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v14, "SETTINGS_DEFAULT_NEXTWORDPREDICTION"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v13

    if-eqz v13, :cond_14

    if-eqz v8, :cond_14

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    const/16 v13, 0x20

    invoke-static {v13}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v4, v13, v14}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v13

    if-eqz v13, :cond_f

    if-eqz v10, :cond_f

    const-string v13, " "

    invoke-virtual {v10, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v4, v13, v14}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_f
    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_10

    if-eqz v6, :cond_11

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_11

    :cond_10
    move/from16 v0, p1

    int-to-char v13, v0

    invoke-static {v13}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v13

    if-eqz v13, :cond_12

    const/16 v13, 0x20

    invoke-static {v13}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v13}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_12
    invoke-static {v9}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_13

    const/16 v13, 0x20

    move/from16 v0, p1

    if-ne v0, v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v13}, Lcom/ime/framework/common/InputManager;->resetMultiTap()V

    :cond_13
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v13, :cond_6

    const-string v13, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v13, :cond_6

    const-string v13, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v14, -0x1

    if-ne v13, v14, :cond_6

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->doNextWordPrediction(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->initialize()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setPredictionWord(Z)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v8, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_7

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "PHONE_POPUP_NUMBER_INPUT"

    invoke-interface {v6, v7, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_b

    if-eqz v3, :cond_b

    :cond_3
    if-nez v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processSingleTap(I[I)V

    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x20

    if-ne p1, v4, :cond_5

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mStateCandidate:I

    if-eq v4, v8, :cond_6

    :cond_5
    iput v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mStateCandidate:I

    :cond_6
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mLastKeyCode:I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "PHONE_POPUP_NUMBER_INPUT"

    invoke-interface {v4, v6, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_7
    move v3, v5

    goto :goto_0

    :cond_8
    if-eq v0, v4, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processMultiTap(I[I)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    array-length v4, p2

    if-lez v4, :cond_4

    aget p1, p2, v5

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v4

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "PHONE_POPUP_NUMBER_INPUT"

    invoke-interface {v4, v6, v5}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_c

    int-to-char v4, p1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x19

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setComposingText()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/common/InputManager;->isChnDomain(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->setComposingText()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->clearCandidateList()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->resetTimeoutComposingLength()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_6
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

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

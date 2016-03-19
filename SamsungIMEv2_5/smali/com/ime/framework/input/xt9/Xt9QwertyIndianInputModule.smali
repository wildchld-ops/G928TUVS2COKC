.class public Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9QwertyIndianInputModule.java"


# instance fields
.field private mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    invoke-static {}, Lcom/ime/framework/input/IndianInputModule;->getInstance()Lcom/ime/framework/input/IndianInputModule;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 13

    const/16 v12, 0x43

    const/16 v11, 0x19

    const/4 v10, 0x0

    const/4 v9, -0x5

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->clearCandidateList()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v4, ""

    if-eqz v1, :cond_2

    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :cond_2
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setDeleteCount(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v6

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mStateCandidate:I

    if-nez v6, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v8, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isBeforeTraceInput()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isRecapture()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processReCaptureForXT9(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setComposingText()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v11}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v3

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    if-eqz v2, :cond_b

    if-eqz v3, :cond_b

    if-eqz v0, :cond_b

    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_a

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    :cond_c
    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_d

    if-eqz v4, :cond_d

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v1, v8, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_d
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isCHAT_ON()Z

    move-result v6

    if-nez v6, :cond_e

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v1, v6, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_f

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isRecapture()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->postRecaptureWordXT9Message()V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mLastKeyCode:I

    if-ne v5, p1, :cond_5

    move v0, v3

    :goto_0
    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    :cond_1
    :goto_1
    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasOneChar()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isThaiAcceptable(Z)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setComposingText()V

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v4, 0x19

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :goto_2
    return-void

    :cond_5
    move v0, v4

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_2
.end method

.method private processSingleTap(I[I)V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->clearCandidateList()V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    const/4 v2, 0x1

    new-array v9, v2, [Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3

    const/4 v2, 0x1

    new-array v8, v2, [Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v16

    if-eqz v16, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    invoke-interface {v2, v3, v4, v9}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_17

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isThaiAcceptable()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputLanguage:I

    const/high16 v3, 0x76690000

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processVietnameseTone(IZ)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1a

    if-eqz v15, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setComposingText()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isRecapture()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mStateCandidate:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processReCaptureForXT9(I)V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v3}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v3}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v3

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    int-to-char v2, v0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_13
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->clearAction()V

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isAvailablePrediction()Z

    move-result v2

    if-nez v2, :cond_19

    if-nez v15, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->isAvailablePrediction()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setComposingText()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v3, 0x19

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto/16 :goto_0

    :cond_1b
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v10

    if-eqz v13, :cond_1d

    if-eqz v14, :cond_1d

    if-eqz v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-eqz v12, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_0

    :cond_1d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 7

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_0
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    invoke-static {v4}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->sendEnterKeyHandle()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v3}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_6
    int-to-char v3, p1

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->doNextWordPrediction(Z)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/ime/framework/input/IndianInputModule;->init(Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/ime/framework/common/InputManager;I)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p2}, Lcom/ime/framework/input/IndianInputModule;->handleRegionalCharacter([I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/ime/framework/input/IndianInputModule;->init(Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;Lcom/ime/framework/common/InputManager;I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x20

    if-ne p1, v0, :cond_4

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    :cond_4
    invoke-virtual {p0, p1, p2, v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public onCharacterKey(I[IZ)V
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->setPredictionWord(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v9, :cond_8

    move v3, v4

    :goto_0
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v2, v9, :cond_4

    :cond_2
    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_e

    if-eqz v3, :cond_e

    :cond_4
    if-nez v1, :cond_c

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-nez v6, :cond_9

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputLanguage:I

    invoke-static {v6, p1}, Lcom/ime/framework/util/Utils;->isMultitapKey(II)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x20

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mStateCandidate:I

    if-eq v4, v9, :cond_7

    :cond_6
    iput v5, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mStateCandidate:I

    :cond_7
    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mLastKeyCode:I

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    return-void

    :cond_8
    move v3, v5

    goto :goto_0

    :cond_9
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_a

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_1

    :cond_a
    if-eqz p2, :cond_b

    array-length v6, p2

    if-le v6, v4, :cond_b

    const/4 v0, 0x0

    :goto_2
    array-length v6, p2

    if-ge v0, v6, :cond_5

    aget v6, p2, v0

    new-array v7, v4, [I

    aget v8, p2, v0

    aput v8, v7, v5

    invoke-direct {p0, v6, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_c
    if-ne v1, v4, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTap(I[I)V

    goto :goto_1

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_e
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSingleTap(I[I)V

    :cond_f
    :goto_3
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->autoPeriod(I)V

    goto :goto_1

    :cond_10
    if-eqz p2, :cond_11

    const/16 v6, 0x2e

    if-eq p1, v6, :cond_11

    array-length v6, p2

    if-lez v6, :cond_11

    const/4 v0, 0x0

    :goto_4
    array-length v6, p2

    if-ge v0, v6, :cond_f

    aget v6, p2, v0

    new-array v7, v4, [I

    aget v8, p2, v0

    aput v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSymbolicKey(I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processSymbolicKey(I[I)V

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4

    const/16 v3, 0x20

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->clearCandidateList()V

    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    if-ne p1, v3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_2
    const/4 v1, -0x5

    if-ne p1, v1, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_5
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

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

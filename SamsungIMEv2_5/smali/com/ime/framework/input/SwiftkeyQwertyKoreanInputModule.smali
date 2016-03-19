.class public Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyKoreanInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 15

    const/16 v14, 0x14

    const/4 v13, -0x5

    const/16 v12, 0x43

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v11, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsBackspacePressed:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->clearCandidateList()V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v6, ""

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v6, " "

    :cond_2
    :goto_1
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->resetPredictionWord()V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v8

    invoke-interface {v8}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v8

    invoke-virtual {v8, v13, v11}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-le v8, v11, :cond_7

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v8

    if-nez v8, :cond_7

    if-lez v7, :cond_5

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v3, v11, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2

    const-string v6, ""

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v13}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->deleteLastJamoInComposing()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v13}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_9

    if-lez v7, :cond_a

    :cond_9
    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setPredictionWord(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getDeleteCount()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v3, v8, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v8, 0xc8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposingWithoutInit()V

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequence(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->deleteLastJamoInComposing()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v2

    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    if-eqz v2, :cond_10

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getDeleteCount()I

    move-result v8

    if-le v8, v14, :cond_f

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_f

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v3, v8, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getDeleteCount()I

    move-result v8

    if-le v8, v14, :cond_11

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_11

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v3, v8, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    move v7, v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v13, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    const/16 v2, 0x40

    if-lt v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->clearCandidateList()V

    if-eqz v12, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v12, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v15}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v9}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_2
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    const/4 v14, 0x1

    :goto_1
    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const-string v1, " "

    const/4 v2, 0x1

    invoke-interface {v12, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v17

    const/16 v1, -0xff

    move/from16 v0, v17

    if-eq v0, v1, :cond_5

    move/from16 v0, v17

    int-to-char v1, v0

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_5
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->resetPredictionWord()V

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->resetPredictionWord()V

    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSuggestionDelay()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->resetPredictionWord()V

    :cond_a
    :goto_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_15

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v11}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    :goto_3
    if-eq v7, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->removeMessageForMSG_KEY_SENT_TEXT_BY_INPUTCONNECTION()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SENT_TEXT_BY_INPUTCONNECTION"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_b
    invoke-interface {v12}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->cancelPreviewTrace()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isRequiredSendingKeyCode()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_f
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v10, v1, 0x7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v10, v2}, Lcom/ime/framework/input/InputController;->sendDownUpKeyEvent(II)V

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v1

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move/from16 v0, p1

    int-to-char v2, v0

    invoke-virtual {v1, v9, v2}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addKeyCode(Ljava/lang/StringBuilder;C)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v1

    if-gez v1, :cond_11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->deleteLastJamoInComposing()V

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    goto/16 :goto_2

    :cond_12
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->appendJamoInComposing(I)V

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v1

    if-gez v1, :cond_11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->deleteLastJamoInComposing()V

    goto :goto_5

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    goto/16 :goto_3

    :cond_15
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSuggestionDelay()V

    goto/16 :goto_3
.end method

.method private processWordSeparator(I[I)V
    .locals 12

    const/16 v11, 0x20

    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->clearCandidateList()V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    new-array v0, v6, [I

    int-to-char v8, p1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isEnableAutoCorrection(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    if-lez v8, :cond_4

    move v3, v6

    :goto_1
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2, v0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    :goto_2
    const/16 v8, 0xa

    if-ne p1, v8, :cond_7

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->sendEnterKeyHandle()V

    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_3
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v6

    if-lt v6, v10, :cond_0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_1

    :cond_5
    const-string v8, ""

    iput-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v7, v9}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8, v1}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-static {v11}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_9
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposingWithoutInit()V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, ".,?!-/:;)]}\u061b\u060c\u061f\u06d4\u0964\u0589\u055c\u058a.\u055e\u17d4\u17d6"

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_c

    :cond_b
    invoke-static {v11}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :goto_3
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_d

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_d
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v6

    if-lt v6, v10, :cond_0

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public closing()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<SwiftkeyQwertyKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<SwiftkeyQwertyKoreanInputModule> commitText-(1) - Utils.getUsedTime() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/util/Utils;->getUsedTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setPredictionWord(Z)V

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_8

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_8

    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    move v1, v3

    :goto_1
    const/4 v5, -0x5

    if-ne p1, v5, :cond_1

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, ""

    iput-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    :cond_2
    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsBackspacePressed:Z

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    if-eqz v1, :cond_a

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_a

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_2
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isEnableRevertToTextRange(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->revertToTextRange()V

    :cond_5
    iput p1, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mLastKeyCode:I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setVerbatimToEngine()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isAutoReplaced()Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_6
    :goto_3
    invoke-virtual {v5, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setIsAutoReplaced(Z)V

    iput-boolean v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsTraceInput:Z

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_7
    return-void

    :cond_8
    move v2, v4

    goto :goto_0

    :cond_9
    move v1, v4

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsKorMode:Z

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSingleTap(I[I)V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->autoPeriod(I)V

    goto :goto_2

    :cond_c
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_d

    if-ne v0, v6, :cond_d

    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/util/Utils;->isKoreanLetter(C)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSingleTap(I[I)V

    goto :goto_4

    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processSymbolicKey(I[I)V

    goto :goto_4

    :cond_e
    move v3, v4

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v6

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    if-ltz p1, :cond_0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    aget-object v5, v6, p1

    invoke-interface {v8, v5}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v3

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    if-nez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v18

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_c

    const v18, 0xfffc

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    :goto_1
    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    move/from16 v18, v0

    add-int/lit8 v19, v17, 0x1

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosNextText:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const/4 v12, 0x1

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v18

    if-eqz v18, :cond_4

    if-nez v13, :cond_4

    const/4 v11, 0x1

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v18

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v18

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setPredictionWord(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_7

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setComposingText()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isEnableAutoCorrection()Z

    move-result v18

    if-eqz v18, :cond_14

    if-nez v14, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getIndexOfInputBuffer()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    add-int/lit8 p1, p1, -0x1

    :cond_8
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->clearCandidateList()V

    if-eqz p2, :cond_15

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v18

    if-lez v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    const-string v18, ".,;!?\u061b\u060c\u061f"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :cond_9
    :goto_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->doNextWordPrediction(Z)V

    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v18

    if-nez v18, :cond_a

    const-string v18, " "

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v12, :cond_a

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v8, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    :cond_b
    invoke-interface {v8}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->setVerbatimToEngine()V

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosPrevText:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPosNextText:I

    goto/16 :goto_0

    :cond_c
    const/16 v17, -0x1

    goto/16 :goto_1

    :cond_d
    const-string v18, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mStateCandidate:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    if-nez v3, :cond_3

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto/16 :goto_3

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getIndexOfInputBuffer()I

    move-result v18

    if-lez v18, :cond_13

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getIndexOfInputBuffer()I

    move-result p1

    :cond_11
    :goto_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    :cond_12
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getIndexOfInputBuffer()I

    move-result v18

    move/from16 v0, p1

    move/from16 v1, v18

    if-gt v0, v1, :cond_11

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    :cond_13
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    :cond_14
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->selectWordInList(I)V

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_4
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processWordSeparator(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    const/16 v2, 0x20

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x5

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_5
    const/16 v2, -0x3eb

    if-ne p1, v2, :cond_6

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->updateSuggestionDelay()V

    :cond_7
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_8
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->initComposingBuffer()V

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateSuggestion()V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x9

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const-string v5, ""

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v5, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->isEnableAutoCorrection()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsTraceInput:Z

    if-nez v5, :cond_6

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v2}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v3}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    move-object v2, v3

    :cond_5
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/SuggestionSpan;

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v7, v9

    const/4 v8, 0x4

    invoke-direct {v5, v6, v7, v8}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    const/16 v7, 0x11

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v4, v0, v11}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_6
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mIsBackspacePressed:Z

    if-eqz v5, :cond_7

    const-string v5, ""

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v11, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

.class public Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyIndianInputModule.java"


# instance fields
.field private mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    invoke-static {}, Lcom/ime/framework/input/IndianInputModule;->getInstance()Lcom/ime/framework/input/IndianInputModule;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 15

    const/4 v14, 0x0

    const/16 v13, 0x43

    const/4 v10, -0x5

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsBackspacePressed:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearCandidateList()V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v8, v9, v11}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v5, ""

    if-eqz v2, :cond_3

    invoke-interface {v2, v12, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_3

    const-string v5, ""

    :cond_3
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v7

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v8, :cond_5

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v8, v9, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->resetPredictionWord()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v8

    invoke-interface {v8}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v8

    invoke-virtual {v8, v10, v12}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_6
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_13

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    if-le v8, v12, :cond_a

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v8

    if-nez v8, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v14}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    invoke-interface {v2, v12, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_8
    if-eqz v5, :cond_1b

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v10}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/ime/framework/input/IndianInputModule;->isConsonant(II)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-static {v12}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    :goto_3
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v8, v6, -0x1

    invoke-static {v8, v6}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setComposingText()V

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_b
    invoke-virtual {p0, v14}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getDeleteCount()I

    move-result v8

    const/16 v9, 0xa

    if-le v8, v9, :cond_d

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_d

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v2, v8, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x2b

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x2b

    const-wide/16 v10, 0x12c

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initWordDividerIndexList()V

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->Utorrent_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-ne v8, v9, :cond_12

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v8

    if-nez v8, :cond_11

    invoke-interface {v2, v12, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposingWithoutInit()V

    :cond_f
    if-lez v7, :cond_10

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v11}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    :cond_10
    invoke-virtual {p0, v14}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    :cond_11
    if-eqz v2, :cond_e

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const-string v8, ""

    invoke-interface {v2, v8, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v13}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    :cond_13
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v3

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v4

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    if-eqz v3, :cond_16

    if-eqz v4, :cond_16

    if-eqz v1, :cond_16

    if-eqz v2, :cond_14

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_14
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getDeleteCount()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_15

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_15

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v2, v8, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v13}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_2

    :cond_16
    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getDeleteCount()I

    move-result v8

    const/16 v9, 0x14

    if-le v8, v9, :cond_17

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v8

    sget-object v9, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v8, v9, :cond_17

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getLastWordDividerIndex()I

    move-result v8

    invoke-interface {v2, v8, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_17
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initWordDividerIndexList()V

    if-eqz v5, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUnicodeIdentifierPart(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_18
    invoke-interface {v2, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_19

    invoke-interface {v2, v12, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_2

    :cond_19
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const-string v8, ""

    invoke-interface {v2, v8, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    :cond_1a
    invoke-virtual {p0, v13}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_2

    :cond_1b
    invoke-static {v11}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    goto/16 :goto_3
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ""

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearCandidateList()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    const/4 v13, 0x1

    :goto_0
    const/16 v18, 0x0

    if-eqz v11, :cond_4

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->selectWordInList(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v22

    const/16 v1, -0xff

    move/from16 v0, v22

    if-eq v0, v1, :cond_2

    move/from16 v0, v22

    int-to-char v1, v0

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_2
    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->resetPredictionWord()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->cancelPreviewTrace()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v1

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->resetPredictionWord()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->cancelPreviewTrace()V

    goto :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->resetPredictionWord()V

    :cond_8
    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_22

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    if-nez v1, :cond_22

    if-eqz v16, :cond_1f

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V

    :goto_3
    if-eqz v18, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestion()V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->cancelPreviewTrace()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v8}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    const/16 v21, 0x0

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v21

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v21, :cond_a

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v20

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->selectWordInList(I)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-nez v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputLanguage:I

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/ime/framework/input/IndianInputModule;->isDependentVowel(II)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v2}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v2

    move/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/ime/framework/input/IndianInputModule;->isSpecialVowel(II)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ime/framework/input/IndianInputModule;->isHalant(I)Z

    move-result v1

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ime/framework/input/IndianInputModule;->isNuktaSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    int-to-char v1, v0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    if-gtz v20, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    if-nez v1, :cond_b

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->containsEmoticons(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v15, 0x1

    goto/16 :goto_4

    :cond_11
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    if-nez v1, :cond_b

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v11, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/input/IndianInputModule;->getHBScrpt(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    if-eqz v19, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, " "

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_12
    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    const/16 v16, 0x1

    goto/16 :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_14
    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_15

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v10, v1, :cond_16

    aget v1, p2, v10

    int-to-char v1, v1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_15
    move/from16 v0, p1

    int-to-char v1, v0

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_16
    if-eqz v15, :cond_1a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :cond_17
    :goto_6
    if-eqz v15, :cond_18

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    if-nez v1, :cond_18

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    const/16 v16, 0x1

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_19

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v1

    if-nez v1, :cond_19

    sget-object v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v2, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearAction()V

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    if-lez v1, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v1

    if-nez v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v1

    if-gez v1, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, p1

    invoke-interface {v1, v0, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v1

    if-gez v1, :cond_17

    if-eqz p2, :cond_1e

    move-object/from16 v0, p2

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1e

    const/4 v10, 0x0

    :goto_7
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v10, v1, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_1e
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->deleteCharAt(I)V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setComposingText()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isNumeric()Z

    move-result v1

    if-nez v1, :cond_20

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    goto/16 :goto_3

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    :cond_22
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v7

    if-eqz v12, :cond_24

    if-eqz v14, :cond_24

    if-eqz v7, :cond_24

    if-eqz v11, :cond_23

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_23
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_1

    :cond_24
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 13

    const/16 v12, 0x20

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearCandidateList()V

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v9, v10, v8}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    new-array v0, v7, [I

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    int-to-char v9, p1

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->isEnableAutoCorrection(C)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    if-lez v9, :cond_6

    move v4, v7

    :goto_2
    if-eqz v4, :cond_7

    iget-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsTraceInput:Z

    if-nez v9, :cond_7

    invoke-virtual {p0, v3, v0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->isAutoReplaced()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_3
    :goto_3
    if-ne p1, v12, :cond_4

    invoke-static {v8}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    :cond_4
    const/16 v9, 0xa

    if-ne p1, v9, :cond_f

    invoke-static {v8}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->sendEnterKeyHandle()V

    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_5
    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    move v4, v8

    goto :goto_2

    :cond_7
    const-string v9, ""

    iput-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_8
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v10, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v10

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_9
    :goto_4
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_3

    :cond_a
    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v10, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v10

    sget-object v11, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    goto :goto_4

    :cond_b
    iget-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_3

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_c
    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v10, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v10}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v10

    sget-object v11, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_d
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-eqz v9, :cond_e

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_e
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    int-to-char v10, p1

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_10
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_11
    iget-boolean v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v9, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_12

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3, v7, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_12
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    int-to-char v7, p1

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v7}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_13
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method private updateAutoCorrectionSuggestion(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const-string v3, ""

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {p1, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsTraceInput:Z

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeyAT()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasWWWdot()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasKeydot()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Landroid/text/SpannableString;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/SuggestionSpan;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/String;

    const-string v6, ""

    aput-object v6, v5, v7

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v0, v3, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v2, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->closing()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/IndianInputModule;->validCharToProcess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/ime/framework/input/IndianInputModule;->init(Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/ime/framework/common/InputManager;I)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0}, Lcom/ime/framework/input/IndianInputModule;->getLangScriptId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p2}, Lcom/ime/framework/input/IndianInputModule;->handleRegionalCharacter([I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/IndianInputModule;->isIndianFunctionKey(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIndianInputModule:Lcom/ime/framework/input/IndianInputModule;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v0, p0, v1, p1}, Lcom/ime/framework/input/IndianInputModule;->init(Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;Lcom/ime/framework/common/InputManager;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    if-ne p1, v0, :cond_3

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setCombinationAvailable(Z)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowMax(I)V

    invoke-static {v2}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    :cond_3
    invoke-virtual {p0, p1, p2, v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->onCharacterKey(I[IZ)V

    goto :goto_0
.end method

.method public onCharacterKey(I[IZ)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setPredictionWord(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getSecondaryChar(I)I

    move-result p1

    :cond_0
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v5

    if-nez v5, :cond_7

    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1
    move v1, v3

    :goto_1
    const/4 v5, -0x5

    if-ne p1, v5, :cond_2

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsBackspacePressed:Z

    if-eqz v5, :cond_3

    :cond_2
    const-string v5, ""

    iput-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    :cond_3
    iput-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsBackspacePressed:Z

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v1, :cond_9

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsTraceOn:Z

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v5

    if-le v5, v6, :cond_9

    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSingleTap(I[I)V

    :goto_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mLastKeyCode:I

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->isAutoReplaced()Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_6
    :goto_3
    invoke-virtual {v5, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setIsAutoReplaced(Z)V

    return-void

    :cond_7
    move v2, v4

    goto :goto_0

    :cond_8
    move v1, v4

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSingleTap(I[I)V

    :goto_4
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    :cond_a
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->autoPeriod(I)V

    goto :goto_2

    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processSymbolicKey(I[I)V

    goto :goto_4

    :cond_c
    move v3, v4

    goto :goto_3
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    if-eqz v5, :cond_1

    if-ltz p1, :cond_0

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, p1

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    aget-object v4, v5, p1

    invoke-interface {v7, v4}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mStateCandidate:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    if-nez v2, :cond_2

    const-string v16, "com.samsung.android.email.composer"

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v16

    invoke-static/range {v16 .. v16}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v16

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    :goto_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    const/4 v10, 0x1

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v16

    if-eqz v16, :cond_3

    if-nez v11, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setPredictionWord(Z)V

    :cond_4
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_5

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->setComposingText()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->selectWordInList(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearCandidateList()V

    if-eqz p2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    const-string v16, ".,;!?\u061b\u060c\u061f"

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :cond_6
    :goto_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->doNextWordPrediction(Z)V

    if-eqz v6, :cond_7

    const-string v16, " "

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v10, :cond_7

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_a

    const v16, 0xfffc

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    :goto_4
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    move/from16 v16, v0

    add-int/lit8 v17, v15, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosPrevText:I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mPosNextText:I

    goto/16 :goto_1

    :cond_a
    const/4 v15, -0x1

    goto :goto_4

    :cond_b
    const-string v16, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_3
.end method

.method protected processSymbolicKey(I[I)V
    .locals 8

    const/16 v7, 0x20

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const-string v3, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processWordSeparator(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0xa

    if-eq p1, v3, :cond_2

    if-ne p1, v7, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v3, -0x5

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_5
    const/16 v3, -0x3eb

    if-ne p1, v3, :cond_6

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateSuggestionDelay()V

    :cond_7
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputLanguage:I

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_9
    if-eqz p2, :cond_a

    array-length v3, p2

    if-le v3, v6, :cond_a

    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_b

    aget v3, p2, v0

    int-to-char v3, v3

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    int-to-char v3, p1

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateSuggestion()V
    .locals 4

    const/16 v3, 0x9

    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->updateAutoCorrectionSuggestion(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mIsBackspacePressed:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

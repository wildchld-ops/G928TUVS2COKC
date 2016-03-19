.class public Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 11

    const/16 v10, 0x12c

    const/16 v9, 0x43

    const/4 v8, -0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearCandidateList()V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->resetPredictionWord()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v4

    invoke-virtual {v4, v8, v7}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_3
    iget-boolean v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v4

    if-le v4, v7, :cond_5

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setComposingText()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v8}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_7

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_7

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposingWithoutInit()V

    :cond_8
    if-lez v3, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    :cond_9
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initComposingBuffer()V

    iget v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-ne v4, v5, :cond_b

    if-eqz v1, :cond_b

    invoke-static {v1}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v4, v7}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->getDeleteCount()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v4

    sget-object v5, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v4, v5, :cond_c

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->getLastWordDividerIndex()I

    move-result v4

    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initWordDividerIndexList()V

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    if-nez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    new-array v8, v2, [I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    const/16 v16, 0x1

    :goto_1
    const/16 v18, 0x0

    if-eqz p2, :cond_2

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mLastKeyCode:I

    const/4 v3, 0x0

    aget v3, p2, v3

    if-ne v2, v3, :cond_2

    const/16 v17, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_3
    :goto_2
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_10

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_4
    if-eqz v19, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->resetPredictionWord()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_1

    :cond_9
    if-eqz v19, :cond_a

    if-eqz v17, :cond_a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_2

    :cond_a
    if-eqz v19, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isLastActionIsTraceOrPick()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->resetPredictionWord()V

    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x76690000

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processVietnameseTone(IZ)V

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setComposingText()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mNeedSkipPrediction:Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestionDelay()V

    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mNeedSkipPrediction:Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->cancelPreviewTrace()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v23

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74720000

    if-eq v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x617a0000

    if-ne v2, v3, :cond_16

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_18

    if-eqz v19, :cond_18

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosNextText:I

    if-lez v2, :cond_1f

    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :cond_14
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearAction()V

    goto/16 :goto_3

    :cond_15
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_8
    goto :goto_5

    :cond_17
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    if-gtz v23, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosNextText:I

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-ne v2, v3, :cond_13

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    const/4 v13, 0x0

    const-string v24, ""

    if-nez v23, :cond_13

    if-eqz v15, :cond_13

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v13

    invoke-interface {v15}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v12, 0x0

    if-eqz v13, :cond_1b

    iget-object v2, v13, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b

    iget v2, v13, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-ltz v2, :cond_1b

    iget v2, v13, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v3, v13, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v12, v2, v3

    iget-object v2, v13, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    iget v4, v13, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v20, v2, -0x1

    :goto_9
    if-ltz v20, :cond_1a

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1a
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    :goto_a
    const-string v2, ""

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    if-lt v12, v0, :cond_1e

    sub-int v2, v12, v25

    invoke-interface {v15, v2, v12}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->addStringToTouchHistory(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 v18, 0x1

    :cond_1b
    invoke-interface {v15}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_6

    :cond_1c
    add-int/lit8 v20, v20, -0x1

    goto :goto_9

    :cond_1d
    const-string v24, ""

    goto :goto_a

    :cond_1e
    const/4 v2, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_b

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-ne v2, v3, :cond_21

    const/16 v2, -0x3a

    move/from16 v0, p1

    if-ne v0, v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_7

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-lez v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v2

    if-lez v2, :cond_14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_27

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v9, p2

    array-length v0, v9

    move/from16 v21, v0

    const/4 v14, 0x0

    :goto_c
    move/from16 v0, v21

    if-ge v14, v0, :cond_26

    aget v10, v9, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74720000

    if-eq v2, v3, :cond_22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x617a0000

    if-ne v2, v3, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result v2

    int-to-char v2, v2

    :goto_d
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_23
    int-to-char v2, v10

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_d

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_25

    int-to-char v2, v10

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    :goto_f
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_25
    int-to-char v2, v10

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    goto :goto_f

    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, v26

    invoke-interface {v2, v0}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    :cond_27
    if-nez v18, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    goto/16 :goto_7

    :cond_28
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    goto/16 :goto_7

    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v3, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto/16 :goto_4
.end method

.method private processSingleTap(I[I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initComposingBuffer()V

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/sidesync/SideSyncManager;->newInstance(Landroid/content/Context;)Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v0

    iget v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v2, 0x74720000

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v2, 0x617a0000

    if-ne v1, v2, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :goto_1
    return-void

    :cond_5
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSource()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :goto_2
    goto :goto_0

    :cond_7
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result p1

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_9
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 11

    const/16 v10, 0x20

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearCandidateList()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v6, v7, v9}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    new-array v0, v8, [I

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initComposingBuffer()V

    :cond_2
    const/16 v6, 0xa

    if-ne p1, v6, :cond_4

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->sendEnterKeyHandle()V

    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v6

    if-eqz v6, :cond_6

    if-ne p1, v10, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p0, v2, v6, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_6
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ne p1, v10, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    if-nez v3, :cond_7

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_7
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :goto_1
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-ne p1, v10, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v3

    if-nez v3, :cond_a

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    iget v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const/high16 v7, 0x66720000

    if-eq v6, v7, :cond_d

    iget v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const v7, 0x66724341

    if-eq v6, v7, :cond_d

    iget v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    const v7, 0x66724652

    if-ne v6, v7, :cond_12

    :cond_d
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_e
    :goto_2
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    if-eqz v6, :cond_f

    const-string v6, ".,?!-/:;)]}\u061b\u060c\u061f\u06d4\u0964\u0589\u055c\u058a.\u055e\u17d4\u17d6"

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_10

    :cond_f
    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_10
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_11
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_12
    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_e

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2
.end method


# virtual methods
.method public cancelPreviewTrace()V
    .locals 0

    return-void
.end method

.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->closing()V

    return-void
.end method

.method public consumeUpdateSuggestionDelay()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->cancelUpdateSuggestionDelay()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    :cond_0
    return-void
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    if-eq v0, v6, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_0
    move v3, v6

    :goto_0
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setPredictionWord(Z)V

    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_7

    move v4, v6

    :goto_1
    iget-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_1
    move v2, v6

    :goto_2
    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    :cond_3
    if-eqz v3, :cond_9

    iget-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    iget-object v7, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v7

    xor-int/2addr v6, v7

    if-eqz v6, :cond_9

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_4

    array-length v6, p2

    if-lez v6, :cond_4

    aget p1, p2, v5

    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->updateShiftState()V

    :goto_4
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->isEnableRevertToTextRange(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->revertToTextRange()V

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mLastKeyCode:I

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1, v4}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    return-void

    :cond_6
    move v3, v5

    goto :goto_0

    :cond_7
    move v4, v5

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processSingleTap(I[I)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->consumeUpdateSuggestionDelay()V

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->autoPeriod(I)V

    goto :goto_4
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v2

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mStateCandidate:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosPrevText:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    const v16, 0xfffc

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    :goto_1
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosPrevText:I

    move/from16 v16, v0

    add-int/lit8 v17, v15, 0x1

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosPrevText:I

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosPrevText:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosNextText:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosPrevText:I

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPosNextText:I

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_f

    const/4 v10, 0x1

    :cond_3
    :goto_2
    const/4 v12, 0x1

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mStateCandidate:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v16

    if-eqz v16, :cond_6

    if-nez v11, :cond_6

    const/4 v6, 0x1

    :cond_6
    if-eqz p2, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v16

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setPredictionWord(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    move/from16 v16, v0

    const/high16 v17, 0x66720000

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    move/from16 v16, v0

    const v17, 0x66724341

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputLanguage:I

    move/from16 v16, v0

    const v17, 0x66724652

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_9
    :goto_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->setComposingTextWithoutBatch(Landroid/view/inputmethod/InputConnection;)V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->selectWordInList(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearCandidateList()V

    if-eqz p2, :cond_11

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

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

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->getCurrentLanguageID()I

    move-result v16

    const/high16 v17, 0x74680000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposingForThai(Ljava/lang/CharSequence;)V

    :goto_5
    if-eqz v6, :cond_b

    const-string v16, " "

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v10, :cond_b

    const/16 v16, 0x0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_b
    if-eqz v12, :cond_d

    if-eqz p2, :cond_c

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_c

    const-string v16, ".,;!?\u061b\u060c\u061f"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v16

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_d
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->doNextWordPrediction(Z)V

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_e
    const/4 v15, -0x1

    goto/16 :goto_1

    :cond_f
    const-string v16, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_10
    if-eqz p2, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-lez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string v16, " "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public previewTrace(IZ)V
    .locals 0

    return-void
.end method

.method protected processSymbolicKey(I[I)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x20

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processWordSeparator(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0xa

    if-eq p1, v2, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v2, -0x5

    if-ne p1, v2, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    invoke-static {p1}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_7
    int-to-char v2, p1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-boolean v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;->updateSuggestion()V

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public toUpperCaseOfTurkish(I)I
    .locals 1

    const/16 v0, 0x69

    if-ne p1, v0, :cond_0

    const/16 v0, 0x49

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x131

    if-ne p1, v0, :cond_1

    const/16 p1, 0x130

    move v0, p1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

.class public Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyQwertyLatinInputModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private composingForLao(I)I
    .locals 6

    const/16 v5, 0xeb6

    const/16 v4, 0xeb5

    const/16 v3, 0xeb4

    const/16 v2, 0xeb1

    const/16 v1, 0xeab

    const/16 v0, 0xecd

    if-ne p1, v0, :cond_1

    const/16 v0, 0xecd

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec8

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v0, 0xebb

    if-ne p1, v0, :cond_2

    const/16 v0, 0xebb

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0

    :cond_2
    const/16 v0, 0xeb3

    if-ne p1, v0, :cond_3

    const/16 v0, 0xec9

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xeb3

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_4

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0

    :cond_4
    if-ne p1, v4, :cond_5

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0

    :cond_5
    if-ne p1, v1, :cond_6

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xebc

    goto :goto_0

    :cond_6
    if-ne p1, v2, :cond_7

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0

    :cond_7
    if-ne p1, v5, :cond_8

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0

    :cond_8
    const/16 v0, 0xeb7

    if-ne p1, v0, :cond_0

    const/16 v0, 0xeb7

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    const/16 p1, 0xec9

    goto :goto_0
.end method

.method private hasEmoji(Ljava/lang/StringBuilder;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->containsEmoticons(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isAcceptableIndoChina(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableIndochina(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableIndochina(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v1, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableIndochina(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableIndochina(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_5
    const-string v2, ""

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableIndochina(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isAcceptableThai(I)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManager;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-virtual {p0, v2, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->checkAcceptableThai(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_2

    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isNotSpaceFrontOfCursor()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v0, :cond_2

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method private processBackSpaceKey()V
    .locals 15

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setMaxlengthReached(Z)V

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsBackspacePressed:Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    :cond_2
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v6, ""

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v6, " "

    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getDeleteCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v11

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_5

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v12

    invoke-interface {v12}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v12

    const/4 v13, -0x5

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_5
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v12, :cond_1c

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1c

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_1c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_10

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v12

    if-nez v12, :cond_10

    if-lez v11, :cond_9

    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initComposingBuffer()V

    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->onKeyDownUpHandle(I)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    const-string v6, ""

    :cond_7
    iget-boolean v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v12, :cond_3

    sget-object v12, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_8

    sget-object v12, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    add-int/lit8 v13, v8, -0x1

    invoke-virtual {v12, v13, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v12}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    goto/16 :goto_1

    :cond_9
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v12

    if-nez v12, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v12

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    iget v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v13, 0x6d794d4d

    if-ne v12, v13, :cond_f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v2

    add-int/lit8 v12, v8, -0x1

    invoke-static {v12, v8}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    packed-switch v2, :pswitch_data_0

    :cond_c
    :goto_2
    iget-boolean v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v12, :cond_d

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\u200b"

    const-string v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v12, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_d
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :goto_3
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v12}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :pswitch_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v7

    const/16 v12, 0x200b

    if-ne v7, v12, :cond_e

    add-int/lit8 v12, v8, -0x1

    invoke-static {v12, v8}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    goto :goto_2

    :cond_e
    add-int/lit8 v12, v8, -0x1

    invoke-static {v12, v8}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    const-string v12, "\u1031"

    invoke-static {v12}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_f
    add-int/lit8 v12, v8, -0x1

    invoke-static {v12, v8}, Lcom/ime/framework/input/ComposingTextManager;->delete(II)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    goto :goto_3

    :cond_10
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_12

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isEmptyComposingSpan()Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v13, -0x5

    invoke-interface {v12, v13}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_11
    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v12}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->deleteLastTouchPoint()V

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-gtz v12, :cond_13

    if-lez v11, :cond_14

    :cond_13
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setPredictionWord(Z)V

    :cond_14
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0xa

    if-le v12, v13, :cond_15

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v12, v13, :cond_15

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v12, 0xc8

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_15
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initWordDividerIndexList()V

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->Utorrent_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-ne v12, v13, :cond_1a

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v12

    if-nez v12, :cond_19

    if-eqz v3, :cond_19

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_16
    :goto_4
    iget v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v13, 0x6d794d4d

    if-ne v12, v13, :cond_17

    if-eqz v3, :cond_17

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_1

    :cond_17
    :goto_5
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposingWithoutInit()V

    :cond_18
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequence(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_19
    if-eqz v3, :cond_16

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const-string v12, ""

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_4

    :cond_1a
    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_4

    :pswitch_1
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_17

    const-string v12, "\u200b"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_5

    :cond_1b
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const-string v12, "\u1031"

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_5

    :cond_1c
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v4

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    iget-object v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    if-eqz v4, :cond_1f

    if-eqz v5, :cond_1f

    if-eqz v1, :cond_1f

    if-eqz v3, :cond_1d

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_1d
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_1e

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v12, v13, :cond_1e

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initWordDividerIndexList()V

    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0

    :cond_1f
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initComposingBuffer()V

    iget v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v13, 0x76690000

    if-ne v12, v13, :cond_20

    iget-boolean v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-nez v12, :cond_20

    if-eqz v6, :cond_20

    invoke-static {v6}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_20

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v12

    if-eqz v12, :cond_20

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_20
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getDeleteCount()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_22

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v12

    sget-object v13, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v12, v13, :cond_22

    if-eqz v3, :cond_21

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getLastWordDividerIndex()I

    move-result v12

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_21
    :goto_6
    iget v12, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v13, 0x6d794d4d

    if-ne v12, v13, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    packed-switch v12, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_2
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "\u200b"

    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_23

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_22
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initWordDividerIndexList()V

    const/16 v12, 0x43

    invoke-virtual {p0, v12}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_6

    :cond_23
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const-string v12, "\u1031"

    const/4 v13, 0x1

    invoke-interface {v3, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1031
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1031
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1031
        :pswitch_2
    .end packed-switch
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processSingleTap(I[I)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-nez v12, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/4 v15, 0x1

    :goto_1
    const/16 v21, 0x0

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    const/high16 v3, 0x656e0000

    if-ne v2, v3, :cond_6

    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableAutoCorrection()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "i"

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "I"

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getSymbolKeyCode()I

    move-result v24

    const/16 v2, -0xff

    move/from16 v0, v24

    if-eq v0, v2, :cond_3

    move/from16 v0, v24

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_3
    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    :cond_5
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    if-lez v23, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceOn:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestionDelay()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->cancelPreviewTrace()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    :cond_b
    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x76690000

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processVietnameseTone(IZ)V

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-eqz v2, :cond_d

    if-eqz v21, :cond_36

    :cond_d
    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->hasEmoji(Ljava/lang/StringBuilder;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2, v3}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v2, v11}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addNewText(Ljava/lang/StringBuilder;)V

    :goto_5
    if-eqz v21, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestion()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->cancelPreviewTrace()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    invoke-static {v2}, Lcom/ime/framework/util/Utils;->isIndoChineseLanguage(I)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v3, 0x6d794d4d

    if-ne v2, v3, :cond_11

    :cond_f
    invoke-direct/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAcceptableThai(I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAcceptableIndoChina(I)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    goto/16 :goto_0

    :cond_11
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->resetPredictionWord()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->clearCandidateList()V

    const/16 v2, 0x40

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    const/16 v20, 0x1

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_13

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setVietnameseTelexComposing()V

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74720000

    if-ne v2, v3, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_TURKISH_KEYBOARD_TYPE"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v25

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_15

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_23

    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    :cond_16
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    int-to-char v3, v0

    invoke-static {v2, v3}, Lcom/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    :cond_17
    :goto_8
    if-eqz v9, :cond_2e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_19

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKeyWithoutBuild(ILandroid/graphics/PointF;)I

    :cond_19
    if-eqz v9, :cond_1a

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-eq v2, v3, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    const/16 v3, 0x40

    if-lt v2, v3, :cond_33

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_1b

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v3, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->clearAction()V

    goto/16 :goto_4

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v13

    const/16 v22, 0x0

    if-eqz v13, :cond_1d

    iget-object v0, v13, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    :cond_1d
    if-gtz v23, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-eq v2, v3, :cond_1e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    invoke-static {v2}, Lcom/ime/framework/util/Utils;->isIndoChineseLanguage(I)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v22, :cond_1f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    const-string v2, "com.android.chrome"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-nez v2, :cond_13

    if-nez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v11}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    const/16 v3, 0x40

    if-lt v2, v3, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpacePreferenceOn()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_21

    if-lez v23, :cond_22

    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-nez v2, :cond_22

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpacePreferenceOn()Z

    move-result v2

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_6

    :cond_23
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_24
    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v2

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x617a0000

    if-ne v2, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->toUpperCaseOfTurkish(I)I

    move-result p1

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v3, 0x656c0000

    if-ne v2, v3, :cond_27

    const/16 v2, 0x3c2

    move/from16 v0, p1

    if-eq v0, v2, :cond_16

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    :cond_28
    goto/16 :goto_7

    :cond_29
    const/16 v2, 0x30

    move/from16 v0, p1

    if-lt v0, v2, :cond_2b

    const/16 v2, 0x39

    move/from16 v0, p1

    if-gt v0, v2, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isRequiredSendingKeyCode()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_2a
    add-int/lit8 v2, p1, -0x30

    add-int/lit8 v8, v2, 0x7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v8, v3}, Lcom/ime/framework/input/InputController;->sendDownUpKeyEvent(II)V

    goto/16 :goto_8

    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v3, 0x6d794d4d

    if-ne v2, v3, :cond_2c

    invoke-direct/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAcceptableIndoChina(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v3, 0x7a314d4d

    if-ne v2, v3, :cond_17

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputString(Ljava/lang/StringBuilder;)I

    goto/16 :goto_8

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-lez v2, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_9

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    if-lez v2, :cond_30

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_30

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/16 v2, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_9

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v3, 0x7a314d4d

    if-eq v2, v3, :cond_18

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v18

    if-nez v18, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    int-to-char v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addKeyCode(Ljava/lang/StringBuilder;C)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x0

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move/from16 v0, p1

    int-to-char v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->addTouchPoint(Ljava/lang/StringBuilder;Landroid/graphics/PointF;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_9

    :cond_33
    invoke-static {v11}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/StringBuilder;)V

    const/16 v19, 0x1

    goto/16 :goto_a

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    goto/16 :goto_5

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_36
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v10

    if-eqz v14, :cond_38

    if-eqz v17, :cond_38

    if-eqz v10, :cond_38

    if-eqz v12, :cond_37

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_37
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    goto/16 :goto_0

    :cond_38
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v2, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    goto/16 :goto_0

    :cond_39
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method private processWordSeparator(I[I)V
    .locals 11

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    new-array v0, v8, [I

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    const/4 v4, 0x0

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v9, 0x6d794d4d

    if-ne v8, v9, :cond_2

    const/16 v8, 0x20

    if-ne p1, v8, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v4, 0x1

    :cond_2
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x76690000

    if-ne v8, v9, :cond_8

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_1
    int-to-char v8, p1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableAutoCorrection(C)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v8

    if-lez v8, :cond_9

    const/4 v5, 0x1

    :goto_2
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_e

    if-eqz v5, :cond_a

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceInput:Z

    if-nez v8, :cond_a

    invoke-virtual {p0, v3, v0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAutoReplaced()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_5
    :goto_3
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    int-to-char v9, p1

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    :cond_6
    :goto_4
    const/16 v8, 0xa

    if-ne p1, v8, :cond_12

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->sendEnterKeyHandle()V

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_7
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_8
    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_b
    const-string v8, ""

    iput-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v9, -0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_c
    :goto_5
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_3

    :cond_d
    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v9

    sget-object v10, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    goto :goto_5

    :cond_e
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    :cond_f
    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    sget-object v9, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->needToKeyLearning(Ljava/lang/StringBuilder;)Z

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v9}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getOriginalTouchKeys()Ljava/util/LinkedList;

    move-result-object v9

    sget-object v10, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-interface {v8, v9, v10}, Lcom/ime/framework/engine/InputEngineManager;->updateKeyPressModeling(Ljava/util/LinkedList;Ljava/lang/StringBuilder;)V

    :cond_10
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v8}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-eqz v8, :cond_11

    sget-object v8, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_11
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    int-to-char v9, p1

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->setIntentionalEvent(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_13
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    const/16 v8, 0x20

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_14
    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x66720000

    if-eq v8, v9, :cond_15

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v9, 0x66724341

    if-eq v8, v9, :cond_15

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v9, 0x66724652

    if-ne v8, v9, :cond_1a

    :cond_15
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_16

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_16
    :goto_6
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    if-eqz v4, :cond_1b

    const-string v8, ""

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    :goto_7
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    if-eqz v8, :cond_17

    const-string v8, ".,?!-/:;)]}\u061b\u060c\u061f\u06d4\u0964\u0589\u055c\u058a.\u055e\u17d4\u17d6"

    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_18

    :cond_17
    const/16 v8, 0x20

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_18
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :goto_8
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_19
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v8

    const/4 v9, 0x3

    if-lt v8, v9, :cond_0

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_1a
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v8, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_16

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_6

    :cond_1b
    int-to-char v8, p1

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto :goto_7

    :cond_1c
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_8
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

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, p1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    const-string v3, ""

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    invoke-virtual {p1, v7, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableAutoCorrection()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceInput:Z

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p1, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCachedLearnAfterAutoCorrection:Ljava/lang/String;

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    sget-object v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v2, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->closing()V

    return-void
.end method

.method public onCharacterKey(I[I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->isVietnameseTelexEnable()Z

    move-result v8

    iput-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setPredictionWord(Z)V

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getSecondaryChar(I)I

    move-result p1

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getShiftState()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x6c6f0000

    if-ne v8, v9, :cond_0

    invoke-direct {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->composingForLao(I)I

    move-result p1

    :cond_0
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v8

    if-le v8, v10, :cond_11

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v8

    if-nez v8, :cond_11

    move v3, v6

    :goto_0
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_1
    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceOn:Z

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v8}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v8

    if-le v8, v10, :cond_12

    move v4, v6

    :goto_1
    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v9, 0x7a314d4d

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    invoke-static {v0, p1, v8}, Lcom/ime/framework/input/Indochina/MyanmarTyping;->getMyanmarCode(Landroid/view/inputmethod/InputConnection;IZ)I

    move-result p1

    :cond_2
    sput-boolean v7, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->IS_PLUS_MYANMAR:Z

    :cond_3
    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x6b6d0000

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const-string v5, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_2
    if-nez v5, :cond_4

    const-string v5, ""

    :cond_4
    const/16 v8, 0x17d0

    if-ne p1, v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x17c9

    if-ne v8, v9, :cond_5

    invoke-static {v5, p1}, Lcom/ime/framework/common/InputSequenceCheck;->adjustKhmerPosition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    invoke-interface {v0, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    :cond_6
    const/16 v8, 0x2c

    if-ne p1, v8, :cond_8

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v8

    if-eqz v8, :cond_8

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x61720000

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x66610000

    if-eq v8, v9, :cond_7

    iget v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v9, 0x75720000

    if-ne v8, v9, :cond_8

    :cond_7
    const/16 p1, 0x60c

    :cond_8
    const/4 v8, -0x5

    if-ne p1, v8, :cond_9

    iget-boolean v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsBackspacePressed:Z

    if-eqz v8, :cond_a

    :cond_9
    const-string v8, ""

    iput-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mVerbatimBeforeAutoCorrection:Ljava/lang/String;

    :cond_a
    iput-boolean v7, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsBackspacePressed:Z

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v1, :cond_d

    :cond_c
    if-nez v4, :cond_d

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v8

    if-eqz v8, :cond_14

    if-ne v1, v10, :cond_14

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v8

    if-eqz v8, :cond_14

    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSingleTap(I[I)V

    if-eqz v4, :cond_e

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8}, Lcom/ime/framework/engine/InputEngineManager;->updateShiftState()V

    :cond_e
    :goto_3
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableRevertToTextRange(I)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->revertToTextRange()V

    :cond_f
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setVerbatimToEngine()V

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mLastKeyCode:I

    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    if-nez v3, :cond_10

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isAutoReplaced()Z

    move-result v9

    if-eqz v9, :cond_16

    :cond_10
    :goto_4
    invoke-virtual {v8, p1, v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setIsAutoReplaced(Z)V

    iput-boolean v3, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsTraceInput:Z

    return-void

    :cond_11
    move v3, v7

    goto/16 :goto_0

    :cond_12
    move v4, v7

    goto/16 :goto_1

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_14
    iget-object v8, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v8, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSingleTap(I[I)V

    :goto_5
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->autoPeriod(I)V

    goto :goto_3

    :cond_15
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processSymbolicKey(I[I)V

    goto :goto_5

    :cond_16
    move v6, v7

    goto :goto_4
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v7

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-eqz v7, :cond_1

    if-ltz p1, :cond_0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, p1

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v6, v7, p1

    invoke-interface {v9, v6}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v3

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    if-nez v3, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_f

    const v19, 0xfffc

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    move/from16 v19, v0

    add-int/lit8 v20, v18, 0x1

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/4 v13, 0x1

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v19

    if-eqz v19, :cond_4

    if-nez v14, :cond_4

    const/4 v12, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    if-nez v3, :cond_5

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    move/from16 v0, v19

    if-eq v8, v0, :cond_6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v19

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setPredictionWord(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    move/from16 v19, v0

    const/high16 v20, 0x66720000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    move/from16 v19, v0

    const v20, 0x66724341

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    move/from16 v19, v0

    const v20, 0x66724652

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    :cond_7
    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_8

    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_8
    :goto_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static/range {p2 .. p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableAutoCorrection()Z

    move-result v19

    if-eqz v19, :cond_18

    if-nez v15, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getIndexOfInputBuffer()I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_13

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    add-int/lit8 p1, p1, -0x1

    :cond_9
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->clearCandidateList()V

    if-eqz p2, :cond_19

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_19

    const-string v19, ".,;!?\u061b\u060c\u061f"

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->isEnableAutoCorrection()Z

    move-result v19

    if-eqz v19, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v19

    if-eqz v19, :cond_1a

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lcom/ime/framework/engine/InputEngineManager;->addStringToTouchHistory(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_6
    if-eqz v12, :cond_c

    const-string v19, " "

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    if-eqz v13, :cond_c

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_c
    if-eqz v15, :cond_e

    if-eqz p2, :cond_d

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_d

    const-string v19, ".,;!?\u061b\u060c\u061f"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-interface/range {v19 .. v20}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_e
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->doNextWordPrediction(Z)V

    invoke-interface {v9}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setVerbatimToEngine()V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosPrevText:I

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPosNextText:I

    goto/16 :goto_0

    :cond_f
    const/16 v18, -0x1

    goto/16 :goto_1

    :cond_10
    const-string v19, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_3

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_11
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mStateCandidate:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    if-nez v3, :cond_3

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_12
    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    if-eqz v16, :cond_8

    const-string v19, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-interface {v9, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto/16 :goto_4

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getIndexOfInputBuffer()I

    move-result v19

    if-lez v19, :cond_17

    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getIndexOfInputBuffer()I

    move-result p1

    :cond_15
    :goto_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    goto/16 :goto_4

    :cond_16
    const/16 v19, 0x1

    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getIndexOfInputBuffer()I

    move-result v19

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_15

    add-int/lit8 p1, p1, -0x1

    goto :goto_7

    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    goto/16 :goto_4

    :cond_18
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mPickSuggestionIndex:I

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->selectWordInList(I)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method protected processSymbolicKey(I[I)V
    .locals 11

    const/16 v10, 0x20

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v5}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    :cond_1
    const-string v5, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processWordSeparator(I[I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v5, 0xa

    if-eq p1, v5, :cond_4

    if-ne p1, v10, :cond_5

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_5
    const/4 v5, -0x5

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v5

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_7
    const/16 v5, -0x3eb

    if-ne p1, v5, :cond_8

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_8
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateSuggestionDelay()V

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-nez v5, :cond_a

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isZawgyiChar(I)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_a
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsVietnameseTelexInput:Z

    if-eqz v5, :cond_e

    const-string v5, "769,768,777,771,803"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setVietnameseTelexComposing()V

    :cond_b
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, p1

    invoke-static {v5, v6}, Lcom/ime/framework/input/Telex/Telex;->join(Ljava/lang/StringBuilder;C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    :cond_c
    :goto_1
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_d
    iget-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_2

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_e
    iget v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x66720000

    if-eq v5, v6, :cond_f

    iget v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const v6, 0x66724652

    if-eq v5, v6, :cond_f

    iget v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputLanguage:I

    const/high16 v6, 0x6e6c0000

    if-ne v5, v6, :cond_14

    :cond_f
    invoke-static {p1}, Lcom/ime/framework/common/InputSequenceCheck;->isFreanchAccentType(I)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_11

    invoke-interface {v1, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    :goto_2
    if-nez v3, :cond_10

    const-string v3, ""

    :cond_10
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_c

    invoke-static {v3, p1}, Lcom/ime/framework/common/InputSequenceCheck;->convertFrenchAccentedCharacter(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_c

    move p1, v0

    aput v0, p2, v7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/ime/framework/engine/InputEngineManager;->replaceKey(ILandroid/graphics/PointF;)I

    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->setComposingText()V

    goto :goto_1

    :cond_11
    const-string v3, ""

    goto :goto_2

    :cond_12
    if-eqz v1, :cond_13

    invoke-interface {v1, v8, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_13
    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v5, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_15
    int-to-char v5, p1

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public updateSuggestion()V
    .locals 4

    const/16 v3, 0x9

    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->updateAutoCorrectionSuggestion(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mIsBackspacePressed:Z

    if-eqz v1, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

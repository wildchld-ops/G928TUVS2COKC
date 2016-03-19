.class public Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;
.super Lcom/ime/framework/input/xt9/AbstractXt9InputModule;
.source "Xt9PhonepadJapaneseInputModule.java"


# static fields
.field private static final JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule$1;

    invoke-direct {v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule$1;-><init>()V

    sput-object v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;-><init>()V

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 12

    const/16 v11, 0x43

    const/16 v7, 0x19

    const/4 v10, -0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v3, ""

    const-string v4, ""

    if-eqz v2, :cond_3

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    if-nez v4, :cond_3

    const-string v4, ""

    :cond_3
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_a

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->size(I)I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mStateCandidate:I

    if-ne v6, v8, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isBeforeTraceInput()Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-le v6, v8, :cond_8

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isBeforeTraceInput()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v0

    invoke-static {v8, v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_1

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v7, -0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    :cond_b
    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputLanguage:I

    const/high16 v7, 0x76690000

    if-ne v6, v7, :cond_c

    if-eqz v3, :cond_c

    invoke-static {v3}, Lcom/ime/framework/common/InputSequenceCheck;->normalizedNFD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v2, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_c
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->getDeleteCount()I

    move-result v6

    const/16 v7, 0x14

    if-le v6, v7, :cond_d

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.chaton"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v6

    invoke-interface {v2, v6, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v11}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_e

    :cond_e
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    goto/16 :goto_0
.end method

.method private processMultiTap(I[I)V
    .locals 17

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mLastKeyCode:I

    const/4 v3, 0x0

    aget v3, p2, v3

    if-ne v2, v3, :cond_0

    const/4 v13, 0x1

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_12

    const/4 v2, 0x1

    new-array v9, v2, [Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getXt9Version()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_a

    const/4 v2, 0x1

    new-array v8, v2, [Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeStoredTrace([Z[Z)S

    move-result v16

    if-eqz v16, :cond_5

    :goto_1
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mLastKeyCode:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_4

    const/4 v13, 0x1

    :goto_2
    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    aget-boolean v2, v8, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    if-eqz v14, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->processStoredTrace(B)S

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    invoke-interface {v2, v3, v4, v9}, Lcom/ime/framework/engine/InputEngineManager;->isAutoAcceptBeforeTrace([Landroid/graphics/PointF;I[Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_b
    if-eqz v14, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtTrace()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v5}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->resetPredictionWord()V

    goto/16 :goto_1

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v2}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    const/4 v15, 0x1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearAction()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->resetPredictionWord()V

    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputLanguage:I

    const/high16 v3, 0x76690000

    if-ne v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processVietnameseTone(IZ)V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v3, 0x5dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_17

    if-eqz v14, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_14

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_4
    if-gt v11, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, -0x5

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mPosNextText:I

    if-nez v2, :cond_15

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setXt9Recapture(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_1c

    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    :goto_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processReCaptureForXT9(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mStateCandidate:I

    :cond_15
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isUsingToggleNumberInput()Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-nez v2, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getFirstChar()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearAction()V

    goto/16 :goto_3

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->selectWordInList(I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isAutoSpaceOn()Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v2, :cond_1a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v2, :cond_14

    if-eqz v13, :cond_1b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_7
    if-gt v11, v10, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, -0x5

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v3

    move/from16 v0, p1

    invoke-interface {v2, v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto/16 :goto_5

    :cond_1c
    move/from16 v0, p1

    int-to-char v2, v0

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    goto/16 :goto_6
.end method

.method private processReplaceKey(I)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v8}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    invoke-interface {v2, v7, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getlastRomajicount()I

    move-result v0

    invoke-static {v7, v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v6, -0x5

    invoke-interface {v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v4, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7, v8}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    iget-boolean v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v6, 0x19

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->updateCandidates(I)V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->hasInputSequence()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isKeyLongpressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    iget-boolean v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ime/framework/trace/KeyboardTrace;->getTouchPoint(I)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_1
.end method

.method private processWordSeparator(I[I)V
    .locals 11

    const/16 v10, -0x3ea

    const/16 v7, 0x20

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-ne p1, v7, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    new-array v7, v8, [I

    aput v10, v7, v9

    invoke-interface {v6, v10, v7}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v8}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/16 v6, 0xa

    if-ne p1, v6, :cond_c

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {v9}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor(I)I

    move-result v7

    invoke-interface {v6, v9, v7}, Lcom/ime/framework/engine/InputEngineManager;->deleteChar(II)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gez v6, :cond_5

    :cond_3
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    :goto_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->updateSuggestionDelay()V

    :cond_4
    :goto_2
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->doNextWordPrediction(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v2

    if-ltz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    :cond_7
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    :cond_8
    :goto_3
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_9
    invoke-static {v8}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->sendEnterKeyHandle()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_b
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2

    :cond_c
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v6

    if-eqz v6, :cond_e

    if-ne p1, v7, :cond_e

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsKorMode:Z

    if-nez v6, :cond_4

    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_f
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v4, :cond_10

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v1, v8, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_10
    int-to-char v6, p1

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v7}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v6}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_11
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v1, v3

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-nez p2, :cond_2

    move-object v1, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :pswitch_0
    sget-object v2, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x107
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->closing()V

    return-void
.end method

.method protected commitText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    .locals 8

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mStateCandidate:I

    if-ne v6, v4, :cond_0

    iget v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mPosNextText:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_0
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setPredictionWord(Z)V

    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v6

    if-le v6, v7, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v6}, Lcom/ime/framework/trace/KeyboardTrace;->isSymbolAndSpace()Z

    move-result v6

    if-nez v6, :cond_9

    move v3, v4

    :goto_0
    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v6, :cond_3

    if-nez v3, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    :cond_4
    if-nez v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processSingleTap(I[I)V

    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getXt9Recapture()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x20

    if-ne p1, v4, :cond_6

    iget v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mStateCandidate:I

    if-eq v4, v7, :cond_7

    :cond_6
    iput v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mStateCandidate:I

    :cond_7
    const/16 v4, -0x104

    if-eq p1, v4, :cond_8

    iput p1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mLastKeyCode:I

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v4, p1, v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    invoke-static {v5}, Lcom/ime/framework/repository/InputStatus;->setFlagPhonepadPopupNumberInput(Z)V

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setBeforeTraceInput(Z)V

    return-void

    :cond_9
    move v3, v5

    goto :goto_0

    :cond_a
    if-eq v0, v4, :cond_b

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processMultiTap(I[I)V

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isDynamicKDB()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    aget p1, p2, v5

    goto :goto_1

    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->isNumericCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v4

    if-nez v4, :cond_f

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isPhonepadPopupNumberInput()Z

    move-result v4

    if-eqz v4, :cond_e

    int-to-char v4, p1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_f
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 5

    const/16 v4, 0x19

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Lcom/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getExactCharSequence(Ljava/lang/StringBuilder;)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    invoke-static {v3}, Lcom/ime/framework/repository/InputStatus;->setFlagInputNumberOnComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected processSymbolicKey(I[I)V
    .locals 4

    const/16 v3, 0x20

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    const-string v1, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->clearCandidateList()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_3
    const/4 v1, -0x5

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_4
    const/16 v1, -0x107

    if-ne p1, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processReplaceKey(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v1, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    :cond_7
    int-to-char v1, p1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

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

.method public updateSuggestionDelay()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    iget-object v0, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->buildSuggestions(I)V

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

.method public wordSeparatorPretreatment(I)Z
    .locals 11

    const/16 v10, 0xa

    const/16 v9, -0x3ea

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p1, v10, :cond_1

    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputLanguage:I

    const/high16 v8, 0x6b6f0000

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/16 v7, 0x20

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v7

    new-array v6, v6, [I

    aput v9, v6, v5

    invoke-interface {v7, v9, v6}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v6}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v6, v5}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v6, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v2}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    new-array v0, v6, [I

    aput v5, v0, v5

    int-to-char v7, p1

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->isEnableAutoCorrection(C)Z

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mIsTraceOn:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v7}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v7

    if-le v7, v10, :cond_7

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    :cond_5
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v8, v0, v5

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v8, v0, v5

    invoke-interface {v7, v1, v8}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1, v3}, Lcom/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrectionByTrace(Ljava/lang/CharSequence;Landroid/view/inputmethod/InputConnection;)Z

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v5, v0, v5

    invoke-interface {v7, v5}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_6
    :goto_1
    move v5, v6

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrection()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v7

    if-lez v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionCount()I

    move-result v7

    if-lez v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v8, v0, v5

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    aget v7, v0, v5

    if-lez v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v0, v5

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/engine/InputEngineManager;->getCharSequence(Ljava/lang/StringBuilder;I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->setComposingText()V

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v5, v0, v5

    invoke-interface {v7, v5}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    :cond_9
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->finishComposing(Z)V

    goto :goto_1

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputSequenceCount()I

    move-result v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v8, v0, v5

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->processWhenPickSuggestionManually(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    aget v8, v0, v5

    invoke-interface {v7, v8}, Lcom/ime/framework/engine/InputEngineManager;->doNoteWordDoneForXt9(I)I

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->getBestCandidate()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget v5, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mPosPrevText:I

    iget v7, p0, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;->mPosNextText:I

    invoke-static {v1, v5, v7, v3}, Lcom/ime/framework/input/autoCorrection/AutoCorrection;->doAutoCorrection(Ljava/lang/CharSequence;IILandroid/view/inputmethod/InputConnection;)Z

    goto :goto_1
.end method

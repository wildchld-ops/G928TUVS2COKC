.class public Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;
.super Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.source "SwiftkeyPhonepadJapaneseInputModule.java"


# static fields
.field private static final JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;
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

.field private static final JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;
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

.field private static final JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;
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

    new-instance v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$1;

    invoke-direct {v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$1;-><init>()V

    sput-object v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    new-instance v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$2;

    invoke-direct {v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$2;-><init>()V

    sput-object v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_DAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    new-instance v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$3;

    invoke-direct {v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$3;-><init>()V

    sput-object v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_HANDAKUTEN_REPLACE_TABLE:Ljava/util/HashMap;

    new-instance v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$4;

    invoke-direct {v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule$4;-><init>()V

    sput-object v0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_CAPITAL_REPLACE_TABLE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;-><init>()V

    return-void
.end method

.method private AddVerbatimForRecapture(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentInputBuffer(Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void
.end method

.method private commitSelectedTextAndUpdateComposing(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return-void
.end method

.method private processBackSpaceKey()V
    .locals 9

    const/16 v8, 0x43

    const/4 v7, -0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {p0, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->resetPredictionWord()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/input/InputController;->getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    move-result-object v3

    invoke-virtual {v3, v7, v6}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v3

    if-le v3, v6, :cond_5

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v7}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v6, v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-static {v6, v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v7}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_7

    if-lez v2, :cond_8

    :cond_7
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setPredictionWord(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getDeleteCount()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_9

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_9

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposingWithoutInit()V

    :cond_a
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequence(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getDeleteCount()I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_c

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v3

    sget-object v4, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v3, v4, :cond_c

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getLastWordDividerIndex()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v8}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto/16 :goto_0
.end method

.method private processForwardDelete()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setDeleteCount(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->resetPredictionWord()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getDeleteCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v2

    sget-object v3, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->CHATON_PACKAGE_NAME:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-eq v2, v3, :cond_4

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->getFirstWordDividerIndex()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initWordDividerIndexList()V

    const/16 v2, 0x70

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->onKeyDownUpHandle(I)V

    goto :goto_1
.end method

.method private processMultiTap(I[I)V
    .locals 12

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v10, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const/4 v9, 0x1

    new-array v0, v9, [I

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v7

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    array-length v9, p2

    if-lez v9, :cond_1

    iget v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mLastKeyCode:I

    const/4 v10, 0x0

    aget v10, p2, v10

    if-ne v9, v10, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->cancelPreviewTrace()V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getSelectedNumOfText()I

    move-result v8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    if-gtz v8, :cond_3

    iget v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosNextText:I

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_4
    invoke-static {p1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    if-eqz v6, :cond_6

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10}, Lcom/ime/framework/engine/InputEngineManager;->replaceKey(ILandroid/graphics/PointF;)I

    move-result v9

    if-gez v9, :cond_5

    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v10, 0x5dc

    invoke-virtual {p0, v9, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_0

    :cond_6
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v10, 0x0

    invoke-interface {v9, p1, v10}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(ILandroid/graphics/PointF;)I

    move-result v9

    if-gez v9, :cond_5

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v3

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v5

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v1

    if-eqz v3, :cond_9

    if-eqz v5, :cond_9

    if-eqz v1, :cond_9

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-interface {v2, v9, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_8
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :goto_2
    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v10, 0x5dc

    invoke-virtual {p0, v9, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v9}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_2
.end method

.method private processReplaceKey(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :cond_3
    invoke-static {v6, v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->deleteLastStringToTouchHistory()V

    new-instance v3, Lcom/ime/framework/input/StrSegment;

    invoke-direct {v3, v2}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/ime/framework/input/StrSegment;)V

    invoke-static {v6}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    goto :goto_0
.end method

.method private processSingleTap(I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    :cond_1
    invoke-static {p1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->inputKey(I)I

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setComposingText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    return-void
.end method

.method private processWordSeparator(I[I)V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    if-eq p1, v8, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->doRecaptureWord(Z)V

    :cond_1
    const/4 v1, 0x1

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    new-array v0, v7, [I

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    if-ne p1, v8, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-ne p1, v8, :cond_8

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->sendEnterKeyHandle()V

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :goto_1
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    :goto_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gez v4, :cond_6

    :cond_5
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    :goto_3
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setComposingText()V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_1

    :cond_8
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->isTimerRunning(Lcom/ime/framework/input/InputModule$Timer;)Z

    move-result v4

    if-eqz v4, :cond_a

    if-ne p1, v9, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    int-to-char v4, p1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {p0, v10}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    int-to-char v4, p1

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private replaceShiftVoice(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

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
    sget-object v2, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->JP_FULL_HIRAGANA_REPLACE_TABLE:Ljava/util/HashMap;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x107
        :pswitch_0
    .end packed-switch
.end method

.method private setVerbatirmsInPrediction()V
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatirmsInPrediction(Ljava/util/ArrayList;)V

    return-void

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v0}, Lcom/ime/framework/engine/InputEngineManager;->hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/engine/InputEngineManager;->fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const v2, 0xfffc

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setIndexOfInputBuffer(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1, v3, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public cancelPreviewTrace()V
    .locals 0

    return-void
.end method

.method public closing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->closing()V

    return-void
.end method

.method public endMultitapTimer()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0}, Lcom/ime/framework/input/InputModule$Timer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/InputModule$Timer;->setRunning(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mTimmerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mLastKeyCode:I

    goto :goto_0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCharacterKey(I[I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setPredictionWord(Z)V

    iput-boolean v6, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->bSymbolMultitapKeyPressed:Z

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4, p1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, ""

    if-eqz v0, :cond_2

    invoke-interface {v0, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-interface {v4, v5}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v4}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_3
    if-eq v1, v7, :cond_4

    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTap(I[I)V

    if-eqz p2, :cond_5

    array-length v4, p2

    if-lez v4, :cond_5

    aget p1, p2, v6

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setVerbatimToEngine()V

    const/16 v4, -0x104

    if-eq p1, v4, :cond_0

    iput p1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mLastKeyCode:I

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processSingleTap(I[I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processSymbolicKey(I[I)V

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->autoPeriod(I)V

    goto :goto_1
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 13

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isAutoCompletitionInput()Z

    move-result v6

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v7

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getCompletions()[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    if-ltz p1, :cond_0

    array-length v11, v3

    if-ge p1, v11, :cond_0

    aget-object v2, v3, p1

    invoke-interface {v5, v2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v11, v8, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/16 v12, 0xa

    if-ne v11, v12, :cond_1

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v11, v8}, Lcom/ime/framework/view/AbstractKeyboardView;->invalidateKey(Lcom/ime/framework/view/Keyboard$Key;)V

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    iget-object v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getCandidateviewStatus()I

    move-result v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mStateCandidate:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    if-nez v0, :cond_4

    iget v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosPrevText:I

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    const v11, 0xfffc

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    :goto_2
    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    iget v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosPrevText:I

    add-int/lit8 v12, v10, 0x1

    sub-int/2addr v11, v12

    iput v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosPrevText:I

    :cond_3
    iget v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosPrevText:I

    iget v12, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosNextText:I

    invoke-interface {v5, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    const/4 v11, 0x0

    iput v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosPrevText:I

    const/4 v11, 0x0

    iput v11, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPosNextText:I

    :cond_4
    if-eqz p2, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v11

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-eq v11, v12, :cond_5

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setPredictionWord(Z)V

    :cond_5
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    invoke-static {p2}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setComposingText()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v5, v11, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteBlockText()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestionDelay()V

    :goto_3
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_0

    :cond_6
    const/4 v10, -0x1

    goto :goto_2

    :cond_7
    iput p1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mPickSuggestionIndex:I

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->selectWordInList(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setVerbatirmsInPrediction()V

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->doNextWordPrediction(Z)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public previewTrace(IZ)V
    .locals 0

    return-void
.end method

.method public processLeftKeyEvent(I[I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/ime/framework/input/ComposingTextManagerForJapanese;

    invoke-direct {v0}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Lcom/ime/framework/input/StrSegment;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v2}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/ime/framework/input/StrSegment;)V

    const/4 v1, -0x1

    invoke-static {v4, v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    return-void
.end method

.method protected processMultiTapSymbolicKey(I[I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_4

    iget v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mLastKeyCode:I

    aget v4, p2, v0

    if-ne v3, v4, :cond_3

    move v2, v0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget v3, p2, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move v1, v0

    :cond_4
    if-le v1, v5, :cond_0

    iget v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mLastKeyCode:I

    aget v4, p2, v2

    if-ne v3, v4, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->deleteLastChar()V

    :goto_2
    int-to-char v3, p1

    invoke-static {v3}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->append(I)Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setComposingText()V

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->stopTimer(Lcom/ime/framework/input/InputModule$Timer;)V

    iput-boolean v5, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->bSymbolMultitapKeyPressed:Z

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    const/16 v4, 0x5dc

    invoke-virtual {p0, v3, v4}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->startTimer(Lcom/ime/framework/input/InputModule$Timer;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    goto :goto_2
.end method

.method protected processSymbolicKey(I[I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/ime/framework/common/SymbolCountManagerImpl;->getInstance()Lcom/ime/framework/common/SymbolCountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v2}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->clearCandidateList()V

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    const-string v2, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v2, 0xa

    if-eq p1, v2, :cond_1

    const/16 v2, 0x20

    if-ne p1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processWordSeparator(I[I)V

    goto :goto_0

    :cond_2
    const/4 v2, -0x5

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processBackSpaceKey()V

    goto :goto_0

    :cond_3
    const/16 v2, -0x3eb

    if-ne p1, v2, :cond_4

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processForwardDelete()V

    goto :goto_0

    :cond_4
    const/16 v2, -0x107

    if-ne p1, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processReplaceKey(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

    :cond_6
    iget-object v2, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->processMultiTapSymbolicKey(I[I)V

    goto :goto_0

    :cond_7
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->initComposingBuffer()V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    int-to-char v2, p1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->updateSuggestion()V

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

.method public updateSuggestion()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    invoke-direct {p0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->setVerbatirmsInPrediction()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->AddVerbatimForRecapture(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateViewStatus()V

    invoke-super {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestionDelay()V

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 0

    return-void
.end method

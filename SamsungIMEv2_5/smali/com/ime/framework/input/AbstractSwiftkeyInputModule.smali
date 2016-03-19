.class public abstract Lcom/ime/framework/input/AbstractSwiftkeyInputModule;
.super Lcom/ime/framework/input/AbstractInputModule;
.source "AbstractSwiftkeyInputModule.java"


# static fields
.field protected static mCommitHistory:Ljava/lang/StringBuilder;


# instance fields
.field protected bSymbolMultitapKeyPressed:Z

.field protected mCurrentWord:Ljava/lang/StringBuilder;

.field protected mHandler:Landroid/os/Handler;

.field protected mIsBackspacePressed:Z

.field private mLimitLengthOfFlowTouchHistory:I

.field private mLimitLengthOfFlowTouchHistoryCHN:I

.field private mLimitLengthOfPreviewFlowCandidate:I

.field protected mNeedSkipPrediction:Z

.field private mPreviewCandidate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSamplingRateFlowTouchHistory:I

.field private mSkipLimitationCountFlowTouchHistory:I

.field protected mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCommitHistory:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputModule;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentWord:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsBackspacePressed:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    const/16 v0, 0x23

    iput v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfPreviewFlowCandidate:I

    const/16 v0, 0x15e

    iput v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistory:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistoryCHN:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSamplingRateFlowTouchHistory:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSkipLimitationCountFlowTouchHistory:I

    new-instance v0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$1;-><init>(Lcom/ime/framework/input/AbstractSwiftkeyInputModule;)V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    new-instance v0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$2;

    invoke-direct {v0, p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule$2;-><init>(Lcom/ime/framework/input/AbstractSwiftkeyInputModule;)V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mMultitap:Lcom/ime/framework/input/InputModule$Timer;

    return-void
.end method

.method private getLastEmojiIndex(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x2

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKhmerNeedCombineWithCOENGCommittedText(I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v5, 0x17d2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lcom/ime/framework/common/InputSequenceCheck;->isKhmerConsonant(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    return v2

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method private setText(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->finishComposing(Z)V

    invoke-static {p1}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->append(C)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0}, Lcom/ime/framework/input/autospace/AutoSpaceController;->disableSetUpAutoSpace()V

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v1, 0x6b6f0000

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setPredictionWord(Z)V

    return-void
.end method


# virtual methods
.method protected addCurrentTextToCandidate(Ljava/util/ArrayList;Ljava/lang/StringBuilder;)V
    .locals 9
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

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const v4, 0xfffc

    if-eq v3, v4, :cond_0

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, ""

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setIndexOfInputBuffer(I)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    if-ne v0, v7, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMultiWordAdded()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v6, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {p2}, Lcom/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lcom/ime/framework/util/Utils;->isEmojiCharacter(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->getLastEmojiIndex(Ljava/util/ArrayList;)I

    move-result v1

    if-eq v1, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eq v0, v7, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p1, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected appendChunjiinInComposing(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return-void
.end method

.method protected appendJamoInComposing(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    :cond_1
    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsTraceOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->cancelTrace()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    :cond_2
    return-void
.end method

.method public cancelUpdateSequenceAndSuggestionDelayForRecapture()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public cancelUpdateSuggestionDelay()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected checkAcceptableIndochina(Ljava/lang/String;I)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v7, 0x7a314d4d

    if-ne v6, v7, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_0
    :goto_0
    invoke-static {p2, v1, v0}, Lcom/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v4

    :goto_1
    return v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v7, 0x6d794d4d

    if-ne v6, v7, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_4
    :goto_2
    invoke-static {p2, v1, v0}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->isBurmeseAcceptable(III)Z

    move-result v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_6
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6d0000

    if-ne v6, v7, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_7
    :goto_3
    invoke-static {v0, v1, v2, v3}, Lcom/ime/framework/common/InputSequenceCheck;->checkMaximumSubConsonant(IIII)Z

    invoke-static {p2, v0, v1, v2}, Lcom/ime/framework/common/InputSequenceCheck;->checkRepeatSubConsonant(IIII)Z

    invoke-static {p2, v0, v1}, Lcom/ime/framework/common/InputSequenceCheck;->isKhmerAcceptale(III)Z

    move-result v4

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v9, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_a

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    invoke-direct {p0, p2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->isKhmerNeedCombineWithCOENGCommittedText(I)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_1

    :cond_c
    iget v4, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v6, 0x6c6f0000

    if-ne v4, v6, :cond_e

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :cond_d
    invoke-static {p2, v1}, Lcom/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v4

    goto/16 :goto_1

    :cond_e
    move v4, v5

    goto/16 :goto_1
.end method

.method protected checkAcceptableThai(Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v3, 0x74680000

    if-ne v2, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p2, v0}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiComposable(II)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public commitTextAndInitComposing(Ljava/lang/CharSequence;)V
    .locals 12

    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isKoreaLanguage()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xff8b

    if-eq v10, v11, :cond_0

    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const v11, 0xff9a

    if-ne v10, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_2
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v3, 0x1

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x76690000

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x74680000

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x6c6f0000

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v11, 0x7a314d4d

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v11, 0x6d794d4d

    if-eq v10, v11, :cond_3

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x6b6d0000

    if-ne v10, v11, :cond_f

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_c

    const-string v6, ""

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_4

    const-string v6, ""

    :cond_4
    const-string v1, ""

    const/4 v7, 0x0

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v11, 0x6d794d4d

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v11, 0x7a314d4d

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x6b6d0000

    if-ne v10, v11, :cond_7

    :cond_5
    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :cond_7
    if-eqz v6, :cond_8

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    sparse-switch v10, :sswitch_data_0

    :cond_8
    :goto_1
    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x6b6d0000

    if-ne v10, v11, :cond_b

    const-string v0, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_a

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10, v7, v8, v9}, Lcom/ime/framework/common/InputSequenceCheck;->checkMaximumSubConsonant(IIII)Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11, v7, v8}, Lcom/ime/framework/common/InputSequenceCheck;->checkRepeatSubConsonant(IIII)Z

    if-eqz v4, :cond_14

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11, v7}, Lcom/ime/framework/common/InputSequenceCheck;->isKhmerAcceptale(III)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v4, 0x1

    :cond_b
    :goto_2
    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x76690000

    if-ne v10, v11, :cond_c

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Lcom/ime/framework/common/InputSequenceCheck;->isVietameseTone(I)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v10, v11}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_c
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_e

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v11, 0x6c6f0000

    if-ne v10, v11, :cond_e

    const-string v6, ""

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v2, v10, v11}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_d

    const-string v6, ""

    :cond_d
    const/4 v10, 0x0

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v4

    :cond_e
    if-eqz v3, :cond_f

    iget v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v11, 0x6d794d4d

    if-ne v10, v11, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v2, v10}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->applyTypingRule(Landroid/view/inputmethod/InputConnection;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    :cond_f
    if-eqz v4, :cond_10

    if-eqz v5, :cond_10

    if-eqz v3, :cond_10

    const/4 v10, 0x1

    invoke-interface {v2, p1, v10}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_10
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_11
    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->clear()V

    const/4 v10, 0x0

    invoke-static {v10}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_12
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v10, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v10}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0

    :sswitch_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/ime/framework/common/InputSequenceCheck;->isThaiAcceptable(II)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11}, Lcom/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v4, 0x1

    :goto_3
    goto/16 :goto_1

    :cond_13
    const/4 v4, 0x0

    goto :goto_3

    :sswitch_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11, v7}, Lcom/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v5

    goto/16 :goto_1

    :sswitch_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v10, v11, v7}, Lcom/ime/framework/input/Indochina/BurmeseTyping;->isBurmeseAcceptable(III)Z

    move-result v3

    goto/16 :goto_1

    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6c6f0000 -> :sswitch_0
        0x6d794d4d -> :sswitch_2
        0x74680000 -> :sswitch_0
        0x7a314d4d -> :sswitch_1
    .end sparse-switch
.end method

.method protected deleteLastJamoInComposing()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->splitHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/ime/framework/engine/InputEngineManager;->joinHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManager;->append(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public endMultitapTimer()V
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/input/AbstractInputModule;->endMultitapTimer()V

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    goto :goto_0
.end method

.method public getSecondaryChar(I)I
    .locals 9

    iget-object v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v4

    iget-object v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isAcuteAccentState()Z

    move-result v0

    move v3, p1

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "SETTINGS_BULGARIAN_KEYBOARD_TYPE"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x6b610000

    if-ne v6, v7, :cond_0

    if-nez v4, :cond_b

    :cond_0
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x656c0000

    if-ne v6, v7, :cond_1

    if-nez v0, :cond_b

    :cond_1
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x6c760000

    if-ne v6, v7, :cond_2

    if-nez v0, :cond_b

    :cond_2
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x61720000

    if-ne v6, v7, :cond_3

    if-nez v4, :cond_b

    :cond_3
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x66610000

    if-ne v6, v7, :cond_4

    if-nez v4, :cond_b

    :cond_4
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x75720000

    if-ne v6, v7, :cond_5

    if-nez v4, :cond_b

    :cond_5
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x74680000

    if-ne v6, v7, :cond_6

    if-nez v4, :cond_b

    :cond_6
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x6b6d0000

    if-ne v6, v7, :cond_7

    if-nez v4, :cond_b

    :cond_7
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x6c6f0000

    if-ne v6, v7, :cond_8

    if-nez v4, :cond_b

    :cond_8
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v7, 0x7a314d4d

    if-ne v6, v7, :cond_9

    if-nez v4, :cond_b

    :cond_9
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const v7, 0x6d794d4d

    if-ne v6, v7, :cond_a

    if-nez v4, :cond_b

    :cond_a
    iget v6, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v7, 0x62670000

    if-ne v6, v7, :cond_c

    if-eqz v4, :cond_c

    const/4 v6, 0x1

    if-eq v1, v6, :cond_c

    :cond_b
    invoke-virtual {v2, p1}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v5

    const/16 v6, -0xff

    if-eq v5, v6, :cond_c

    move v3, v5

    :cond_c
    return v3
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize()V
    .locals 2

    invoke-super {p0}, Lcom/ime/framework/input/AbstractInputModule;->initialize()V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSwiftKeyKeyLearningManager:Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;

    invoke-virtual {v0}, Lcom/ime/framework/input/swiftkey/SwiftkeyKeyLearningManager;->clearTouchPoints()V

    return-void
.end method

.method public isEmojiLMLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->isEmojiLMLoaded()Z

    move-result v0

    return v0
.end method

.method public isLaoAcceptable(I)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->getCurrentLanguageID()I

    move-result v7

    const/high16 v8, 0x6c6f0000

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v5

    :cond_0
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    :cond_1
    :goto_1
    move v0, p1

    iget-object v5, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getInstance()Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/ime/framework/input/secondarykey/SecondaryKeyManager;->getSecondaryKey(I)I

    move-result v0

    :cond_2
    invoke-static {v0, v2}, Lcom/ime/framework/common/InputSequenceCheck;->isLaoAcceptable(II)Z

    move-result v5

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method protected isRequiredSendingKeyCode()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/repository/PackageStatus;->getPackageName()Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    move-result-object v1

    sget-object v2, Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;->OPERATOR_USA_ATT_MYATT:Lcom/ime/framework/repository/PackageStatus$PACKAGE_NAME;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/input/AbstractInputModule;->isSwiftPhonepadInput()Z

    move-result v0

    return v0
.end method

.method public isZawgyiAcceptable(I)Z
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->getCurrentLanguageID()I

    move-result v8

    const v9, 0x7a314d4d

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v6

    :cond_0
    invoke-interface {v1, v7, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    :cond_1
    :goto_1
    const/4 v8, 0x2

    invoke-interface {v1, v8, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    :cond_2
    :goto_2
    move v0, p1

    invoke-static {v0, v2, v3}, Lcom/ime/framework/common/InputSequenceCheck;->isZawgyiAcceptable(III)Z

    move-result v6

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v8, v7, :cond_2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method protected makeComposingText(Landroid/view/inputmethod/InputConnection;IZ)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "IS_RECAPTURING"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v2, v3

    if-lt v1, p2, :cond_0

    sub-int v2, v1, p2

    invoke-interface {p1, v2, v1}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    :goto_0
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    if-lt v1, p2, :cond_2

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    if-lt v2, p2, :cond_2

    iget-object v2, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    sub-int/2addr v3, p2

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-interface {v2, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return-void

    :cond_0
    invoke-interface {p1, p2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setComposingText()V

    goto :goto_1
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 12

    const v11, 0x66724652

    const v10, 0x66724341

    const/high16 v9, 0x66720000

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v7, :cond_e

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v7}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->isEnableAutoCorrection(C)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ko"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eq v2, v5, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_2
    move v3, v5

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    :cond_3
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->clearCandidateList()V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v8, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v7, v8, v6}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;Z)I

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    new-array v0, v5, [I

    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->getActiveIndex([I)I

    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v1, v0, v7}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->doAutoCorrection(Landroid/view/inputmethod/InputConnection;[II)Z

    :cond_4
    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    :cond_5
    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-eq v7, v9, :cond_6

    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-eq v7, v10, :cond_6

    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-ne v7, v11, :cond_9

    :cond_6
    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/engine/InputEngineManager;->wordSelected(ILjava/lang/CharSequence;)I

    goto/16 :goto_0

    :cond_8
    move v3, v6

    goto :goto_1

    :cond_9
    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_2

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-eq v7, v9, :cond_b

    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-eq v7, v10, :cond_b

    iget v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    if-ne v7, v11, :cond_d

    :cond_b
    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuationForFrench(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_c
    :goto_4
    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_d
    iget-object v7, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAfterPunctuation(I)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_c

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->endMultitapTimer()V

    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public postUpdateSequence(I)V
    .locals 4

    const/16 v1, 0x15

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postUpdateSequenceAndSuggestionDelay(I)V
    .locals 4

    const/16 v1, 0x2b

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public postUpdateSequenceAndSuggestionDelayForRecapture(I)V
    .locals 5

    const/16 v4, 0x2d

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public predictionWord()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_6

    const/4 v3, 0x7

    if-ne v0, v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->isPopKeyboardShown()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    iget-boolean v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {p0, v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_a

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    :cond_a
    iput v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mStateCandidate:I

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_b
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->clearCandidateList()V

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mRepository:Lcom/ime/framework/repository/Repository;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isForcePredictionOff()Z

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->postUpdateSequenceAndSuggestionDelay(I)V

    move v3, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mStateCandidate:I

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->clearCandidateList()V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto :goto_0
.end method

.method public previewTrace(IZ)V
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_0
    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v2

    :cond_1
    iget v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSkipLimitationCountFlowTouchHistory:I

    if-le v2, v1, :cond_4

    iget v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mSamplingRateFlowTouchHistory:I

    div-int v1, v2, v1

    rem-int v1, v2, v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v6, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-interface {v1, v3}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistoryCHN:I

    if-le v2, v0, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTouchPoint()Z

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_1

    :cond_6
    iget v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfFlowTouchHistory:I

    if-le v2, v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPreviewCandidate:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mLimitLengthOfPreviewFlowCandidate:I

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTouchPoint()Z

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v0}, Lcom/ime/framework/trace/KeyboardTrace;->clearTraceInfo()V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->cancelPreviewTrace()V

    goto :goto_1

    :cond_7
    if-eqz v6, :cond_2

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsTraceOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-le v2, v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v1}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v1

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    invoke-virtual {v3}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointTime()[J

    move-result-object v3

    int-to-byte v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/ime/framework/engine/InputEngineManager;->processTrace([Landroid/graphics/PointF;I[JBZ)S

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    const-string v0, "SamsungIME"

    const-string v1, "processTrace not work in previewTrace"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected processKeyForHwKeyboard(I[I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->getHangleShiftedChar(I)I

    move-result p1

    :cond_0
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v2}, Lcom/ime/framework/input/autospace/AutoSpaceController;->isEnableAutoSpaceAtText()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->initComposingBuffer()V

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->getLastInputProcess()I

    move-result v2

    sget v3, Lcom/ime/framework/repository/InputStatus;->INPUT_PROCESS_KEY:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputLanguage:I

    const/high16 v3, 0x6b6f0000

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/input/InputController;->isMultiTapRnunnig()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/input/InputController;->endMultitapTimer()V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->appendJamoInComposing(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    if-le v2, v4, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->getLastChar()C

    move-result v0

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Lcom/ime/framework/input/ComposingTextManager;->setLength(I)V

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->commitText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Lcom/ime/framework/input/ComposingTextManager;->replace(C)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setComposingText()V

    :goto_1
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->initComposingBuffer()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, v4}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->finishComposing(Z)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->initComposingBuffer()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->setComposingText()V

    goto :goto_1
.end method

.method public removeTerm(I)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->isEnableAutoCorrection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->getIndexOfInputBuffer()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-eq p1, v2, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-le p1, v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->removeTerm(I)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableAutoCorrectionDA()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->getIndexOfInputBuffer()I

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public removeTerm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->removeTerm(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    return-void
.end method

.method protected replaceSpaceToSymbol(Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    const-string v2, ".,;!?\u061b\u060c\u061f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setEmojiPredictionEnabled(Z)V

    return-void
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setParameterForCapsLockState(Z)V

    return-void
.end method

.method protected setVerbatimToEngine()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setVerbatim(Ljava/lang/String;)V

    return-void
.end method

.method public trimSwiftkeyMemory()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->trimSwiftkeyMemory()V

    return-void
.end method

.method public updateCandidates()V
    .locals 0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    return-void
.end method

.method public updateNextWordSuggestionDelay(ILjava/lang/CharSequence;)V
    .locals 4

    const/16 v3, 0x3a

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected updateSequence(Ljava/lang/StringBuilder;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPosPrevText:I

    iput v4, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPosNextText:I

    new-array v1, v5, [I

    new-array v0, v5, [I

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-interface {v2, v3, v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->checkCurrentSequence(Ljava/lang/StringBuilder;[I[I)V

    aget v2, v1, v4

    iput v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPosPrevText:I

    aget v2, v0, v4

    iput v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mPosNextText:I

    iget-object v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    iput v5, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mStateCandidate:I

    :goto_1
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mStateCandidate:I

    goto :goto_1
.end method

.method public updateSuggestion()V
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCurrentSequenceString:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mCandidates:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateSuggestionDelay()V
    .locals 5

    const/16 v4, 0x26

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mNeedSkipPrediction:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SamsungIME"

    const-string v1, "updateSuggestionDelay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentWord()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mAutoSpaceController:Lcom/ime/framework/input/autospace/AutoSpaceController;

    invoke-virtual {v3}, Lcom/ime/framework/input/autospace/AutoSpaceController;->setUpByPickSuggestion()V

    :cond_3
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->checkChineseSequence()V

    :cond_4
    iget-boolean v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mIsPredictionOn:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSequence(Ljava/lang/StringBuilder;)V

    :cond_5
    iget-object v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3}, Lcom/ime/framework/engine/InputEngineManager;->updateSelectList()I

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->updateSuggestion()V

    const/4 v3, 0x2

    iput v3, p0, Lcom/ime/framework/input/AbstractSwiftkeyInputModule;->mStateCandidate:I

    :cond_6
    return-void
.end method

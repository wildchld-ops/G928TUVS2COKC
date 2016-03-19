.class public abstract Lcom/ime/framework/input/AbstractInputController;
.super Ljava/lang/Object;
.source "AbstractInputController.java"

# interfaces
.implements Lcom/ime/framework/input/InputController;


# instance fields
.field private final QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

.field private availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private installableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAccentCharKey:I

.field private mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

.field private mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

.field protected mBidiFormatter:Landroid/text/BidiFormatter;

.field protected mChineseCandidates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentHWInputModule:Lcom/ime/framework/input/InputModule;

.field protected mCurrentInputModule:Lcom/ime/framework/input/InputModule;

.field protected mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

.field protected mHwAccentCombinationManager:Lcom/ime/framework/input/accent/AccentCombinationManager;

.field protected mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

.field protected mInputManager:Lcom/ime/framework/common/InputManager;

.field protected mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field protected mInputModules:[Lcom/ime/framework/input/InputModule;

.field private mIsAccentCombinationMode:Z

.field private mIsAcuteAccentPressed:Z

.field private mIsAcuteAccentSplit:Z

.field private mIsAcuteAccentState:Z

.field private mIsHwKeyboardCtrlRightPressed:Z

.field protected mIsKorMode:Z

.field protected mIsSwiftKeyMode:Z

.field protected mIsTabletMode:Z

.field private mLastKeyTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field protected mPreviousTextLength:I

.field protected mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

.field protected mRepository:Lcom/ime/framework/repository/Repository;

.field protected mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

.field private mShortCutKeyManager:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

.field private mTapCount:I

.field protected mTrace:Lcom/ime/framework/trace/KeyboardTrace;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0xff

    iput v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ime/framework/input/AbstractInputController;->mLastTapTime:J

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mBidiFormatter:Landroid/text/BidiFormatter;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getShiftStateController()Lcom/ime/framework/common/ShiftStateController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-static {}, Lcom/ime/framework/engine/InputEngineManagerImpl;->newInstance()Lcom/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->getVibrateController()Lcom/ime/framework/effect/VibrateController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setVibrateController(Lcom/ime/framework/effect/VibrateController;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->getSoundEffectController()Lcom/ime/framework/effect/SoundEffectController;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setSoundEffectController(Lcom/ime/framework/effect/SoundEffectController;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-static {}, Lcom/ime/framework/common/PrivateImeOptionsControllerImpl;->getInstance()Lcom/ime/framework/common/PrivateImeOptionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-static {}, Lcom/ime/framework/trace/KeyboardTrace;->getInstance()Lcom/ime/framework/trace/KeyboardTrace;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    new-instance v0, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;-><init>(Lcom/ime/framework/common/InputManager;)V

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-static {}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->getInstance()Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x29
        0x2d
        0x40
        0x23
        0x2f
        0x25
        0x5e
        0x26
        0x2a
        0x28
    .end array-data
.end method

.method private filteringLanguageID(I)I
    .locals 1

    move v0, p1

    sparse-switch p1, :sswitch_data_0

    move v0, p1

    :goto_0
    return v0

    :sswitch_0
    const/high16 v0, 0x656e0000

    goto :goto_0

    :sswitch_1
    const/high16 v0, 0x66720000

    goto :goto_0

    :sswitch_2
    const/high16 v0, 0x65730000

    goto :goto_0

    :sswitch_3
    const/high16 v0, 0x70740000

    goto :goto_0

    :sswitch_4
    const/high16 v0, 0x68650000

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x656e0000 -> :sswitch_0
        0x656e4742 -> :sswitch_0
        0x656e5553 -> :sswitch_0
        0x65730000 -> :sswitch_2
        0x65734553 -> :sswitch_2
        0x65735553 -> :sswitch_2
        0x66720000 -> :sswitch_1
        0x66724341 -> :sswitch_1
        0x66724652 -> :sswitch_1
        0x69640000 -> :sswitch_0
        0x69770000 -> :sswitch_4
        0x6d730000 -> :sswitch_0
        0x70740000 -> :sswitch_3
        0x70744252 -> :sswitch_3
        0x70745054 -> :sswitch_3
    .end sparse-switch
.end method

.method private isNoUpperCaseCharacter(II)Z
    .locals 6

    const/16 v5, 0xe8

    const/16 v4, 0xe0

    const/16 v3, 0xe9

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :sswitch_0
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_2
    const/16 v2, 0xb5

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_1
    if-eq p2, v3, :cond_1

    const/16 v2, 0xe7

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v2, "CH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eq p2, v5, :cond_1

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_0

    goto :goto_0

    :cond_3
    const/16 v2, 0x3bc

    if-ne p2, v2, :cond_0

    goto :goto_0

    :sswitch_3
    if-ne p2, v3, :cond_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64650000 -> :sswitch_2
        0x66720000 -> :sswitch_0
        0x66724341 -> :sswitch_0
        0x66724652 -> :sswitch_0
        0x69740000 -> :sswitch_1
        0x74720000 -> :sswitch_3
    .end sparse-switch
.end method

.method private isZhuyinNumberLineCodes(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb2 -> :sswitch_0
        0xb3 -> :sswitch_0
        0xb4 -> :sswitch_0
        0xb5 -> :sswitch_0
        0x3105 -> :sswitch_0
        0x3109 -> :sswitch_0
        0x3113 -> :sswitch_0
        0x311a -> :sswitch_0
        0x311e -> :sswitch_0
        0x3122 -> :sswitch_0
        0x3126 -> :sswitch_0
    .end sparse-switch
.end method

.method private onHwPhonepadKeyInputProcess(I)Z
    .locals 10

    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-lt p1, v5, :cond_4

    const/16 v5, 0x10

    if-gt p1, v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    iget-wide v6, p0, Lcom/ime/framework/input/AbstractInputController;->mLastTapTime:J

    const-wide/16 v8, 0x5dc

    add-long/2addr v6, v8

    cmp-long v5, v0, v6

    if-gez v5, :cond_2

    iget v5, p0, Lcom/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    if-ne p1, v5, :cond_2

    iget v5, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    add-int/lit8 v5, v5, 0x1

    array-length v6, v2

    rem-int/2addr v5, v6

    iput v5, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    :goto_0
    iput p1, p0, Lcom/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ime/framework/input/AbstractInputController;->mLastTapTime:J

    iget v5, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    array-length v6, v2

    if-lt v5, v6, :cond_0

    iput v4, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, v2

    if-le v5, v3, :cond_1

    aget v5, v2, v4

    invoke-static {v5}, Ljava/lang/Character;->isLetter(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v4, v2, v4

    invoke-interface {v5, v4, v2}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    :goto_1
    return v3

    :cond_2
    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v3}, Lcom/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget v5, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    aget v5, v2, v5

    invoke-interface {v4, v5, v2}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_1

    :cond_4
    const/16 v5, 0x12

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v5, v2

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v4}, Lcom/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    aget v4, v2, v4

    invoke-virtual {p0, v4, v2}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    goto :goto_1

    :cond_5
    const/16 v5, 0x17

    if-ne p1, v5, :cond_6

    new-array v5, v3, [I

    aput v6, v5, v4

    invoke-virtual {p0, v6, v5}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private onHwPhonepadNumberInputProcess(I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x7

    if-lt p1, v3, :cond_2

    const/16 v3, 0x10

    if-gt p1, v3, :cond_2

    add-int/lit8 v3, p1, -0x7

    add-int/lit8 p1, v3, 0x30

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v3, v2}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onHwPhonepadSymbolInputProcess(I)Z
    .locals 10

    const/16 v9, 0x12

    const/16 v8, 0x10

    const/4 v4, 0x0

    const/4 v7, 0x7

    const/4 v3, 0x1

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    add-int/lit8 v1, p1, -0x8

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SYMBOLS_PAGE"

    invoke-interface {v5, v6, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    if-eqz v0, :cond_8

    if-lt p1, v7, :cond_0

    if-le p1, v8, :cond_1

    :cond_0
    if-ne p1, v9, :cond_2

    :cond_1
    const/4 v5, 0x4

    if-ne v1, v5, :cond_3

    const-string v5, ","

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    const/16 v5, 0x15

    if-ne p1, v5, :cond_9

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->prevSymbolsPage()V

    :goto_1
    return v3

    :cond_3
    if-ne v1, v7, :cond_4

    const-string v5, ";"

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const/16 v5, 0x9

    if-ne v1, v5, :cond_5

    const/16 v5, 0x11

    invoke-direct {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_6

    sget-object v5, Lcom/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ne p1, v9, :cond_7

    sget-object v5, Lcom/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0xb

    aget-object v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    sget-object v5, Lcom/ime/framework/common/Constant;->PHONE_NUMBER_EDITOR_SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v5, v5, v2

    aget-object v5, v5, v1

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    const/16 v5, 0x8

    if-lt p1, v5, :cond_2

    if-gt p1, v8, :cond_2

    sget-object v4, Lcom/ime/framework/common/Constant;->SOFT_FUNC_KBD_SYMBOLS:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const/16 v5, 0x16

    if-ne p1, v5, :cond_a

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_1

    :cond_a
    move v3, v4

    goto :goto_1
.end method

.method private onKeyDownContinue(ILandroid/view/KeyEvent;I)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v0, -0xff

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_4

    move v2, v6

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v4, v6

    :goto_1
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v8

    invoke-virtual {v7, p1, v8, v4}, Lcom/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    const v8, 0x7a685457

    if-ne v7, v8, :cond_6

    invoke-direct {p0, v0}, Lcom/ime/framework/input/AbstractInputController;->isZhuyinNumberLineCodes(I)Z

    move-result v7

    if-eqz v7, :cond_6

    move v3, v6

    :goto_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v3, :cond_7

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    new-array v7, v6, [I

    aput v0, v7, v5

    invoke-virtual {p0, v0, v7}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_3
    return v6

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v4, :cond_8

    const/4 v7, 0x7

    if-lt p1, v7, :cond_8

    const/16 v7, 0x10

    if-gt p1, v7, :cond_8

    invoke-static {v0}, Lcom/ime/framework/util/Utils;->getChnShiftedFullWidthSymbol(I)I

    move-result v5

    int-to-char v1, v5

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/common/Language;->getId()I

    move-result v7

    const/high16 v8, 0x76690000

    if-ne v7, v8, :cond_9

    const/16 v7, -0xff

    if-eq v0, v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    new-array v8, v6, [I

    aput v0, v8, v5

    invoke-interface {v7, v0, v8}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v0, p2}, Lcom/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_3
.end method

.method private onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    :pswitch_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    if-lt p1, v4, :cond_3

    const/16 v4, 0x10

    if-le p1, v4, :cond_1

    :cond_3
    packed-switch p1, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_1
    move v2, v3

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v1

    const/16 v4, -0xa2

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v4, v2}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private onKeyUpHwPhonepad(I)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v2

    const/16 v5, 0x11

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isNumberOnlyEditor()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v5, v6}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidSoftFuncKeys()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getSoftFuncKbdIndex()I

    move-result v0

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isNumberSymbolOnlyEditor()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ime/framework/common/SoftFuncKeyInfo;

    invoke-virtual {v5}, Lcom/ime/framework/common/SoftFuncKeyInfo;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    :cond_1
    :goto_1
    move v5, v6

    :goto_2
    return v5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    rem-int/2addr v0, v5

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->showSoftFuncKbd()V

    goto :goto_1

    :cond_5
    const/16 v5, 0x12

    if-ne p1, v5, :cond_7

    const/16 v5, -0xa2

    if-ne v3, v5, :cond_6

    if-nez v2, :cond_7

    :cond_6
    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v5, p1}, Lcom/ime/framework/input/hw/HwKeyManager;->getPhonepadCharacters(I)[I

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v5, v1

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setInMultiTapInput(Z)V

    aget v5, v1, v7

    invoke-virtual {p0, v5, v1}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputController;->resetMultitapHwPhonepad()V

    move v5, v6

    goto :goto_2

    :cond_7
    packed-switch v3, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onHwPhonepadKeyInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onHwPhonepadNumberInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onHwPhonepadSymbolInputProcess(I)Z

    move-result v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch -0xa2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetMultitapHwPhonepad()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/input/AbstractInputController;->mLastSentIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/input/AbstractInputController;->mTapCount:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ime/framework/input/AbstractInputController;->mLastTapTime:J

    return-void
.end method


# virtual methods
.method public VOHWRInitByCursorMove(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->VOHWRInitByCursorMove(I)V

    return-void
.end method

.method public VOHWRSetChangeMode(II)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/input/InputModule;->VOHWRSetChangeMode(II)V

    return-void
.end method

.method public VOHWRSetInsertMode(II)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/input/InputModule;->VOHWRSetInsertMode(II)V

    return-void
.end method

.method public backupFullText()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getIsPendingUpdateCandidateView()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iput-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    :cond_0
    return-void
.end method

.method public buildSuggestions()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->buildSuggestions()V

    return-void
.end method

.method public cancelPreviewTrace()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->cancelPreviewTrace()V

    :cond_0
    return-void
.end method

.method protected changeInputLanguageTo(I)V
    .locals 0

    return-void
.end method

.method public clearAction()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->clearAction()V

    :cond_0
    return-void
.end method

.method public clearBackupFullText()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    return-void
.end method

.method public clearCachedLearnAfterAutoCorrection()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->clearCachedLearnAfterAutoCorrection()V

    return-void
.end method

.method public closeInputModule()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->closing()V

    :cond_0
    return-void
.end method

.method public commitAndResetForHwr()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    :cond_0
    return-void
.end method

.method protected final createInputEngineArray(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->createInputEngineArray(I)Z

    move-result v0

    return v0
.end method

.method protected final createInputModuleArray(I)Z
    .locals 2

    if-gtz p1, :cond_1

    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Module array creating fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-array v0, p1, [Lcom/ime/framework/input/InputModule;

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteAllTextInEditor()V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    const v1, 0x102001f

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_0
    return-void
.end method

.method public doSpellChecker(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;I)Z
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    int-to-char v1, p3

    invoke-interface {v0, p1, p2, v1}, Lcom/ime/framework/input/InputModule;->doSpellCheckerforHWKeyboard(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAndInitByCursorMove()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->finishAndInitByCursorMove()V

    return-void
.end method

.method public finishComposing(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    return-void
.end method

.method public getAcuteAccentPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    return v0
.end method

.method public getAcuteAccentSplitState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    return v0
.end method

.method public getAudioAndHapticVibratorFeedback()Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    return-object v0
.end method

.method public getBackCorrectionWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getBackCorrectionWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChineseSpellText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getChineseWordCandidate(Ljava/util/ArrayList;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/engine/InputEngineManager;->getChineseWordCandidate(Ljava/util/ArrayList;I)I

    move-result v0

    return v0
.end method

.method public getContextAwareUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getContextAwareUniqueID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getCurrentInputEngineIndex(III)I
.end method

.method protected abstract getCurrentInputModuleIndex(III)I
.end method

.method protected abstract getDWPEngineIndex()I
.end method

.method public getDeleteCount()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getDeleteCount()I

    move-result v0

    return v0
.end method

.method protected abstract getHWInputEngineIndex(I)I
.end method

.method protected abstract getHWInputModuleIndex(I)I
.end method

.method public getIndexOfInputBuffer()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getIndexOfInputBuffer()I

    move-result v0

    return v0
.end method

.method public getKeyPositionByTap(II)I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/engine/InputEngineManager;->getKeyPositionByTap(II)I

    move-result v0

    return v0
.end method

.method public getKeyPositions([Landroid/graphics/Rect;)I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->getKeyPositions([Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method public getPosNextText()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getPosNextText()I

    move-result v0

    return v0
.end method

.method public getPreviousTextLength()I
    .locals 1

    iget v0, p0, Lcom/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    return v0
.end method

.method public abstract getSoundEffectController()Lcom/ime/framework/effect/SoundEffectController;
.end method

.method public getStateCandidate()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getStateCandidate()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionActiveIndex()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestionActiveIndex()I

    move-result v0

    return v0
.end method

.method public abstract getVibrateController()Lcom/ime/framework/effect/VibrateController;
.end method

.method protected abstract getVietValidVowelsString()Ljava/lang/String;
.end method

.method public getWordToAddMyWordList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getWordToAddMyWordList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXt9Version()I
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method protected handleIndianLangToggle()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateIndianToggleState()V

    return-void
.end method

.method protected handleIndianVowelRowState()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateIndianVowelRowState()V

    return-void
.end method

.method protected handleShiftLong()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v1, v2}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/16 v2, -0xff

    invoke-interface {v1, v2}, Lcom/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    return-void

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public hasCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->hasCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasKeyATInCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->hasKeyATInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public hasWWWdotInCurrentSequence()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->hasWWWdotInCurrentSequence()Z

    move-result v0

    return v0
.end method

.method public initAndClearComposingText()V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->initComposingBuffer()V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/ime/framework/input/InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public initCandidates(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->initCandidates(Ljava/util/ArrayList;)V

    return-void
.end method

.method public initComposingText()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->initComposingBuffer()V

    :cond_0
    return-void
.end method

.method public initDeleteCount()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->initDeleteCount()V

    :cond_0
    return-void
.end method

.method public initHwrPanel(Landroid/widget/FrameLayout;I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/engine/InputEngineManager;->initHwrPanel(Landroid/widget/FrameLayout;I)V

    return-void
.end method

.method protected abstract initInputEngine()V
.end method

.method public initInputEngineAndComposing(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/input/InputModule;->initInputEngineAndComposing(IIII)V

    return-void
.end method

.method protected abstract initInputModule()V
.end method

.method public final initialize()V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->initInputModule()V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->initInputEngine()V

    invoke-static {}, Lcom/ime/framework/input/hw/HwKeyManager;->getInstance()Lcom/ime/framework/input/hw/HwKeyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-static {}, Lcom/ime/framework/input/accent/AccentCombinationManager;->getInstance()Lcom/ime/framework/input/accent/AccentCombinationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->start()V

    :cond_0
    return-void
.end method

.method public isAcuteAccentState()Z
    .locals 2

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public isAvailableLanguage(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method protected abstract isFunctionKey(I)Z
.end method

.method public isHWRAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isIgnoreKey(I)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x459 -> :sswitch_0
        -0x103 -> :sswitch_0
        -0x101 -> :sswitch_0
        -0x100 -> :sswitch_0
        -0xff -> :sswitch_0
        -0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method public isInstallableLanguage(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->filteringLanguageID(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public isLastActionIsTraceOrPick()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->isLastActionIsTraceOrPick()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiTapRnunnig()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->isMultiTapRnunnig()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProdictionWord()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->isPredictionWord()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSelectedLanguage(Lcom/ime/framework/common/Language;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "0x%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isSwiftPhonepadInput()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->isSwiftPhonepadInput()Z

    move-result v0

    return v0
.end method

.method public isUsingDWPEngine()Z
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getCurrentEngineIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->getDWPEngineIndex()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVietValidVowels(I)Ljava/lang/Boolean;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->getVietValidVowelsString()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method public learnSequence()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->learnSequence(Ljava/lang/String;)V

    :cond_0
    iput-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mBackupExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "REPLACEMENT_PREDICTION_USER_DATA"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v3}, Lcom/ime/framework/engine/InputEngineManager;->learnSequence(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public learnTempSuggestion(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->learnTempSuggestion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onChangeHwkeyboardLanguage(Lcom/ime/framework/common/Language;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/hw/HwKeyManager;->setInputLanguage(Lcom/ime/framework/common/Language;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v0, p1}, Lcom/ime/framework/input/accent/AccentCombinationManager;->setInputLanguage(Lcom/ime/framework/common/Language;)V

    return-void
.end method

.method public onChangeInputLanuage(Lcom/ime/framework/common/Language;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onChangeHwkeyboardLanguage(Lcom/ime/framework/common/Language;)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v0}, Lcom/ime/framework/common/ShiftStateController;->updateLetterModeByThread()V

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/ime/framework/common/Language;)V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->updateInputModule()V

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->clearTypoList()V

    return-void
.end method

.method public onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z
    .locals 9

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    const/16 v6, -0xff

    if-eq p1, v6, :cond_b

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v6}, Lcom/ime/framework/input/InputModule;->inputDisplayedRecognitionString()V

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->invalidateHwrBackgound()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_0

    const/high16 v6, 0x6b6f0000

    if-eq v4, v6, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onLongPressHwKey(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/ime/framework/input/accent/AccentCombinationManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/input/accent/AccentCombinationManager;->isAccentCharacter(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    const/high16 v6, 0x69730000

    if-ne v4, v6, :cond_1

    iget v6, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v6, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    if-eq v6, p1, :cond_4

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mHwAccentCombinationManager:Lcom/ime/framework/input/accent/AccentCombinationManager;

    iget v7, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    invoke-virtual {v6, v7, p1}, Lcom/ime/framework/input/accent/AccentCombinationManager;->getCombinedCharacter(II)I

    move-result v6

    int-to-short v1, v6

    const/16 v6, -0xff

    if-eq v1, v6, :cond_3

    if-eqz v3, :cond_3

    const/high16 v6, 0x69730000

    if-eq v4, v6, :cond_2

    iget v6, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    const/16 v7, 0x301

    if-eq v6, v7, :cond_2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_2
    move p1, v1

    :cond_3
    const/16 v6, -0xff

    invoke-virtual {p0, v6}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    :cond_4
    if-eqz v3, :cond_7

    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v7, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/ime/framework/input/AbstractInputController;->mPreviousTextLength:I

    :cond_5
    const/high16 v6, 0x6b6f0000

    if-ne v4, v6, :cond_8

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/ime/framework/input/InputModule;->onCharacterKeyForHwKeyboard(I[I)V

    :goto_2
    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput p1, v7, v8

    invoke-interface {v6, p1, v7}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto :goto_2

    :cond_9
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {p0, v4, p1}, Lcom/ime/framework/input/AbstractInputController;->isNoUpperCaseCharacter(II)Z

    move-result v6

    if-nez v6, :cond_a

    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/ime/framework/input/AbstractInputController;->onText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_a
    int-to-char v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_b
    iget-object v6, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v6}, Lcom/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public onHwrPanelLongPressed(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/input/InputModule;->onHwrPanelLongPressed(ILjava/lang/String;)V

    return-void
.end method

.method public onHwrTouchCancel(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/input/InputModule;->onHwrTouchCancel(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchDown(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/input/InputModule;->onHwrTouchDown(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchMove(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/input/InputModule;->onHwrTouchMove(IIJ)Z

    move-result v0

    return v0
.end method

.method public onHwrTouchUp(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/input/InputModule;->onHwrTouchUp(IIJ)Z

    move-result v0

    return v0
.end method

.method public onKey(I[I)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v22, "SETTINGS_DEFAULT_TRACE"

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v13

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isEnableTrace()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isEnableTraceInPassword()Z

    move-result v19

    if-eqz v19, :cond_4

    :cond_0
    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/input/InputModule;->cancelUpdateSequenceAndSuggestionDelayForRecapture()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x20

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v15

    const/16 v18, 0x0

    if-nez v15, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    if-eqz v6, :cond_2

    const/16 v19, 0x8c

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v6, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v18

    :cond_2
    if-eqz v18, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v22, "@"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    const/16 v22, 0x40

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x40

    aput v25, v23, v24

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    const/16 v22, 0x2e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x2e

    aput v25, v23, v24

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/AbstractInputController;->isFunctionKey(I)Z

    move-result v19

    if-eqz v19, :cond_18

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePointCount()I

    move-result v19

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_18

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/input/InputModule;->release()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_11

    const/16 v19, -0x3c

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x1f4

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x190

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x19a

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3e

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x66

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x142

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x143

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x141

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x7a

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x7c

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x7f

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x137

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3e8

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3e9

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3ea

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3ee

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x3ed

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x105

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x106

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x20

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x89

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_11

    const/16 v19, -0x75

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v19

    const/16 v22, -0x89

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_11

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/AbstractInputController;->processFunctionKey(I)V

    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v19

    move/from16 v0, v19

    if-eq v9, v0, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->isAcuteAccentState()Z

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v19

    if-eqz v19, :cond_3

    sparse-switch p1, :sswitch_data_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    const/16 v19, -0x3e8

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x4

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->setAltPressedState(IZ)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v19

    const/16 v22, 0x3

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const/16 v19, -0x3e8

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v19

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v19, -0x3e8

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    const/16 v19, 0x0

    aget v19, p2, v19

    const/16 v22, -0x66

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->setAltPressedState(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/ime/framework/util/IndicatorManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;

    move-result-object v7

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/ime/framework/util/IndicatorManager;->notifyForMobileKeyboard(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v19

    if-eqz v19, :cond_16

    :cond_12
    const/16 v16, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isSimplifiedChineseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v19

    if-nez v19, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/engine/InputEngineManager;->getInputTransResult()Ljava/lang/CharSequence;

    move-result-object v16

    const/4 v10, 0x1

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    const/16 v19, -0x3dd

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    if-eqz v10, :cond_14

    if-eqz v16, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    sget-object v4, Lcom/ime/framework/input/xt9/AbstractXt9InputModule;->mNumCandidate:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-lez v19, :cond_a

    goto/16 :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, -0x66

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x142

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x143

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x141

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x89

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x105

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x106

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    const/16 v19, -0x75

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v19

    const/16 v22, -0x89

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    goto/16 :goto_2

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, -0x3dd

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    const/16 v19, -0x3de

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    const/16 v19, -0x3df

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    const/16 v19, -0x66

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    goto/16 :goto_2

    :cond_18
    invoke-virtual/range {p0 .. p1}, Lcom/ime/framework/input/AbstractInputController;->isIgnoreKey(I)Z

    move-result v19

    if-eqz v19, :cond_21

    const/16 v19, -0x101

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mTrace:Lcom/ime/framework/trace/KeyboardTrace;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/trace/KeyboardTrace;->getTracePoint()[Landroid/graphics/PointF;

    move-result-object v19

    if-eqz v19, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const/16 v19, -0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x12c

    add-long v22, v22, v24

    cmp-long v19, v20, v22

    if-lez v19, :cond_1a

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->initDeleteCount()V

    :cond_1a
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    if-eqz v8, :cond_1b

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v19, v0

    if-nez v19, :cond_1e

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v19, v0

    if-nez v19, :cond_1e

    const-string v19, "com.android.mms"

    iget-object v0, v8, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    :cond_1b
    const/16 v19, -0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x43

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_1c
    const/16 v19, -0x3eb

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x70

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_1d
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x42

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_3

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/AbstractInputController;->mIsTabletMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    if-eqz v19, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    const/16 v22, 0x8

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    const/16 v22, 0x7

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_24

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/ShiftStateController;->checkIfAutoCapsState()Z

    move-result v19

    if-eqz v19, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v19

    if-eqz v19, :cond_24

    :cond_23
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v19

    if-eqz v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->isNumberMyanmar(I)Z

    move-result v19

    if-nez v19, :cond_24

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/util/Utils;->isMyanmarShanDigit(I)Z

    move-result v19

    if-nez v19, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    move-object/from16 v19, v0

    add-int/lit8 v22, p1, -0x30

    aget v19, v19, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->QWERTY_NUMBER_WITH_SYMBOL_EXTRALABEL_MAP:[I

    move-object/from16 v24, v0

    add-int/lit8 v25, p1, -0x30

    aget v24, v24, v25

    aput v24, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    goto/16 :goto_3

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v19

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mShortCutKeyManager:Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/shortcutkey/ShortCutKeyManager;->getShortCutKey(I)I

    move-result v17

    const/4 v5, 0x0

    const/16 v19, -0xff

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_25

    move/from16 p1, v17

    :cond_25
    const/16 v19, 0x61

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_26

    const/16 v19, 0x7a

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_26

    add-int/lit8 v5, p1, -0x44

    :goto_5
    const/16 v19, 0x7000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Lcom/ime/framework/input/AbstractInputController;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :cond_26
    const/16 v19, 0x30

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_27

    const/16 v19, 0x39

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_27

    add-int/lit8 v5, p1, -0x2a

    goto :goto_5

    :cond_27
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_28

    const/16 v5, 0x42

    goto :goto_5

    :cond_28
    move/from16 v5, p1

    goto :goto_5

    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const/16 v19, -0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_2a

    const/16 v19, -0x3eb

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x12c

    add-long v22, v22, v24

    cmp-long v19, v20, v22

    if-lez v19, :cond_2c

    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->initDeleteCount()V

    :cond_2c
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ime/framework/input/AbstractInputController;->mLastKeyTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    if-eqz v8, :cond_2d

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v19, v0

    if-nez v19, :cond_30

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v19, v0

    if-nez v19, :cond_30

    const-string v19, "com.android.mms"

    iget-object v0, v8, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    :cond_2d
    const/16 v19, -0x5

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x43

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_2e
    const/16 v19, -0x3eb

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x70

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_2f
    const/16 v19, 0xa

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x42

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_3

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v19

    if-eqz v19, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v19, v0

    const-string v22, "INPUT_LANGUAGE"

    const v23, 0x656e4742

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->isTextCharacter(I)Z

    move-result v19

    if-eqz v19, :cond_33

    const/16 v19, 0x27

    move/from16 v0, p1

    move/from16 v1, v19

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    const/16 v22, 0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v19

    if-nez v19, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v19

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v19

    if-eqz v19, :cond_36

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->getChineseSpellText()Ljava/lang/CharSequence;

    move-result-object v19

    if-nez v19, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_33
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v19

    if-eqz v19, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v19

    const/16 v22, 0x1e

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v19

    if-eqz v19, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v19

    if-nez v19, :cond_38

    const-string v19, "com.android.incallui"

    iget-object v0, v8, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_38

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->convertToAndroidKeyCodeForDTMF(I)I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_38

    const-string v19, "SamsungIME_MKDB"

    const-string v22, "Skip handle onCharacterKey(): INPUTTYPE_MKBD_CALL_PHONE"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->backupFullText()V

    goto/16 :goto_3

    :cond_36
    const v19, 0x7a68484b

    move/from16 v0, v19

    if-ne v14, v0, :cond_37

    const/16 v19, 0x41

    move/from16 v0, p1

    move/from16 v1, v19

    if-lt v0, v1, :cond_37

    const/16 v19, 0x5a

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_6

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    goto/16 :goto_6

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    if-eqz v19, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    goto :goto_7

    :cond_39
    if-eqz v9, :cond_c

    const/16 v19, -0x190

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    const/16 v19, -0x19a

    move/from16 v0, p1

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/framework/input/AbstractInputController;->getAcuteAccentPressed()Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->updateAcuteAccentState(Z)V

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->setAltPressedState(IZ)V

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v19

    const/16 v22, 0x2

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0xe4 -> :sswitch_1
        -0x87 -> :sswitch_0
        -0x79 -> :sswitch_1
        -0x78 -> :sswitch_1
        -0x6c -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v13, "INPUT_LANGUAGE"

    const v14, 0x656e4742

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v11

    const/16 v4, -0xff

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-lez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHwUmlautPopupShown()Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    return v12

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    const/4 v6, 0x0

    if-eqz v10, :cond_1

    iget v12, v10, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v6, v12, 0xf

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_2
    if-eqz v10, :cond_4

    const-string v12, "com.sec.android.app.popupcalculator"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "com.sec.android.app.videoplayer"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_5
    const/4 v12, 0x3

    if-eq v6, v12, :cond_6

    const/4 v12, 0x2

    if-ne v6, v12, :cond_7

    :cond_6
    const-string v12, "ro.product.name"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ks02"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    goto :goto_0

    :cond_7
    const/16 v12, 0x3c

    move/from16 v0, p1

    if-ne v0, v12, :cond_b

    const-string v12, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/high16 v12, 0x70740000

    if-eq v11, v12, :cond_8

    const v12, 0x70744252

    if-ne v11, v12, :cond_b

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->setClearRightShiftPressed()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_9

    const/16 v7, 0x33

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0x2d

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v7, v13, v14}, Lcom/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/ime/framework/input/AbstractInputController;->onHwKeyboardKeyInputProcess(SLandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x1

    invoke-static {v12}, Lcom/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    const/16 v12, 0x3c

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    const/16 v12, 0x3b

    move/from16 v0, p1

    if-eq v0, v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v12

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    :cond_c
    sparse-switch p1, :sswitch_data_0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v12, :cond_d

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/ime/framework/repository/KeyboardStatus;->setHardwareQwertyKeyInput(Z)V

    :cond_e
    :goto_2
    :sswitch_1
    const/4 v12, 0x0

    goto/16 :goto_0

    :sswitch_2
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    const/4 v4, -0x5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v4, v13, v14

    invoke-interface {v12, v4, v13}, Lcom/ime/framework/common/InputManager;->onKey(I[I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_f
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_3
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->toggleLanguage(Z)V

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    goto :goto_2

    :sswitch_4
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_11

    const/high16 v12, 0x6a610000

    if-eq v11, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    const/high16 v12, 0x6b6f0000

    if-ne v11, v12, :cond_11

    const-string v12, "com.samsung.android.email.composer"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v12, 0xa

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, 0xa

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-eqz v12, :cond_12

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_12
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_15
    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_5
    const/16 v12, -0xff

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/ime/framework/input/AbstractInputController;->setAccentChar(I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isNextWordOnSpaceEnabled()Z

    move-result v12

    if-eqz v12, :cond_16

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-eqz v12, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_17
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-nez v12, :cond_18

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/16 v13, 0x20

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x20

    aput v16, v14, v15

    invoke-interface {v12, v13, v14}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setNextShiftState(Z)V

    :cond_19
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v12

    if-eqz v12, :cond_1a

    const/4 v12, 0x1

    invoke-static {v12}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->toggleLanguage(Z)V

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v12

    if-nez v12, :cond_1c

    if-eqz v10, :cond_20

    const-string v12, "com.android.browser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1b

    const-string v12, "com.sec.android.app.sbrowser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1b

    const-string v12, "mobi.mgeek.TunnyBrowser"

    iget-object v13, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v12

    if-eqz v12, :cond_20

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_1d

    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    if-eqz v8, :cond_1f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v12, :cond_1e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_1e
    const-string v12, " "

    const/4 v13, 0x1

    invoke-interface {v8, v12, v13}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1f
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsKorMode:Z

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto/16 :goto_2

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v12

    if-nez v12, :cond_21

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v12}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v12

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_21
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    goto :goto_3

    :sswitch_8
    const/high16 v12, 0x6c740000    # 1.1799116E27f

    if-ne v11, v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v12}, Lcom/ime/framework/input/hw/HwKeyManager;->toggleAltGrLt()V

    goto/16 :goto_2

    :sswitch_9
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v12}, Lcom/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v12

    if-eqz v12, :cond_e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->SearchHanja()V

    goto/16 :goto_2

    :sswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_23

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_24

    :cond_23
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v13, 0x5c

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_26

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-eqz v12, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_26
    const/16 v12, -0x3ed

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ed

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_27

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_28

    :cond_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v13, 0x5d

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_28
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_2a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_29

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-eqz v12, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v12

    if-eqz v12, :cond_e

    :cond_2a
    const/16 v12, -0x3ee

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ee

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v13, 0x7a

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v12, -0x105

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x105

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_2e

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_2f

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-nez v12, :cond_2f

    :cond_2e
    const/16 v12, -0x3e9

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3e9

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_2f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct/range {p0 .. p2}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v12

    if-nez v12, :cond_30

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-eqz v12, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v13, 0x7b

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_31
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v12, -0x106

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x106

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_32
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v12

    if-eqz v12, :cond_34

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v12

    if-nez v12, :cond_33

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_34

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v12

    if-nez v12, :cond_34

    :cond_33
    const/16 v12, -0x3ea

    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/16 v15, -0x3ea

    aput v15, v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/ime/framework/input/AbstractInputController;->onKey(I[I)V

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-direct/range {p0 .. p2}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownHwPhonepad(ILandroid/view/KeyEvent;)Z

    move-result v12

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v12

    if-nez v12, :cond_35

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_3b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v12

    invoke-virtual {v12}, Lcom/ime/framework/common/Language;->getId()I

    move-result v12

    const v13, 0x7a685457

    if-eq v12, v13, :cond_3b

    :cond_35
    add-int/lit8 v9, p1, -0x8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v12

    if-eqz v12, :cond_37

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v3

    :goto_4
    if-eqz v3, :cond_36

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_38

    :cond_36
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :cond_37
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getHanjaCandidate()Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_4

    :cond_38
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v5

    if-nez v5, :cond_39

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    :cond_39
    const/4 v12, -0x1

    if-ge v12, v9, :cond_3a

    if-ge v9, v5, :cond_3a

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v9, v12, :cond_3a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v13, v9, v12}, Lcom/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    :cond_3a
    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_3b
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/ime/framework/input/AbstractInputController;->onKeyDownContinue(ILandroid/view/KeyEvent;I)Z

    move-result v12

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x7 -> :sswitch_f
        0x8 -> :sswitch_f
        0x9 -> :sswitch_f
        0xa -> :sswitch_f
        0xb -> :sswitch_f
        0xc -> :sswitch_f
        0xd -> :sswitch_f
        0xe -> :sswitch_f
        0xf -> :sswitch_f
        0x10 -> :sswitch_f
        0x13 -> :sswitch_b
        0x14 -> :sswitch_c
        0x15 -> :sswitch_d
        0x16 -> :sswitch_e
        0x3a -> :sswitch_1
        0x3b -> :sswitch_6
        0x3c -> :sswitch_6
        0x3e -> :sswitch_5
        0x42 -> :sswitch_4
        0x43 -> :sswitch_2
        0x72 -> :sswitch_9
        0x73 -> :sswitch_7
        0xa0 -> :sswitch_4
        0xd4 -> :sswitch_a
        0x109 -> :sswitch_3
        0x10e -> :sswitch_8
    .end sparse-switch
.end method

.method public onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->closeKeyboard()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    iget-object v2, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 12

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    const/4 v1, 0x0

    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v7, 0xf

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :goto_0
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const-string v7, "com.sec.android.app.popupcalculator"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "com.sec.android.app.videoplayer"

    iget-object v8, v3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_1
    const/4 v7, 0x0

    :goto_1
    return v7

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x7

    if-lt p1, v7, :cond_4

    const/16 v7, 0x10

    if-gt p1, v7, :cond_4

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_5
    const/4 v7, 0x3

    if-eq v1, v7, :cond_6

    const/4 v7, 0x2

    if-ne v1, v7, :cond_7

    :cond_6
    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ks02"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isLatinSoftFuncKey()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, 0x7

    if-ne p1, v7, :cond_9

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->toggleShiftState()V

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/16 v8, -0xff

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setPressedShiftKeyCode(I)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setShiftHoldOn(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    invoke-direct {p0, p1}, Lcom/ime/framework/input/AbstractInputController;->onKeyUpHwPhonepad(I)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v0, -0xff

    const/16 v7, 0x3c

    if-ne p1, v7, :cond_f

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "BR"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x70740000

    if-eq v6, v7, :cond_b

    const v7, 0x70744252

    if-ne v6, v7, :cond_f

    :cond_b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_c

    const/16 v2, 0x33

    :goto_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x2d

    goto :goto_2

    :cond_d
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v7, v2, v8, v9}, Lcom/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    const/16 v7, -0xff

    if-ne v0, v7, :cond_e

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_f
    sparse-switch p1, :sswitch_data_0

    if-nez v4, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-eqz v7, :cond_1e

    :cond_10
    const/4 v5, 0x1

    :goto_3
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v8

    invoke-virtual {v7, p1, v8, v5}, Lcom/ime/framework/input/hw/HwKeyManager;->getCharacter(IZZ)S

    move-result v0

    :cond_11
    :goto_4
    const/16 v7, -0xff

    if-ne v0, v7, :cond_12

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v7}, Lcom/ime/framework/input/hw/HwKeyManager;->isEmptyKey()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_0
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->getShiftMomentaryState()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->toggleShiftState()V

    :cond_13
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setShiftMomentaryState(Z)V

    :cond_14
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v7}, Lcom/ime/framework/common/ShiftStateController;->updateLetterMode()Z

    goto :goto_4

    :sswitch_1
    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "SCH-I415"

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_15
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_17
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_3
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v7

    if-nez v7, :cond_19

    :cond_18
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_19
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isToolbarVisible()Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_1a
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v11, 0xa

    aput v11, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_4
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    iget-object v8, p0, Lcom/ime/framework/input/AbstractInputController;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v8}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v8

    invoke-interface {v7, v8}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    const/4 v7, 0x1

    goto/16 :goto_1

    :sswitch_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    goto/16 :goto_4

    :sswitch_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v7

    if-nez v7, :cond_1b

    iget-boolean v7, p0, Lcom/ime/framework/input/AbstractInputController;->mIsHwKeyboardCtrlRightPressed:Z

    if-nez v7, :cond_1b

    if-eqz v4, :cond_1c

    :cond_1b
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1c
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_1d
    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_1f
    const/4 v7, 0x0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_3
        0x43 -> :sswitch_1
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
        0xa0 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(IZ)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(I)V

    goto :goto_1
.end method

.method public onRelease(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3eb

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_SOUND"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playSoundEffect(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ime/framework/repository/InputStatus;->isHwKeyInput()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mAudioAndHapticVibratorFeedback:Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;

    invoke-virtual {v0, p1, v3}, Lcom/sec/android/inputmethod/AudioAndHapticVibratorFeedback;->playVibrateEffect(IZ)V

    goto :goto_0
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v1, :cond_1

    const-string v1, "com.android.mms"

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, p1}, Lcom/ime/framework/input/InputModule;->onText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->backupFullText()V

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->predictionWord()Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mChineseCandidates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p2, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, p1, v0}, Lcom/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->FrequencyUpdateHanja(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->setIsFinishingHanjaShowing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->backupFullText()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTouchSymInCandidate()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isTouchUmlauntInCandidate()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->hasComposing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, v4}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, p2}, Lcom/ime/framework/input/InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, p2}, Lcom/ime/framework/input/InputModule;->commitTextAndInitComposing(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, p1, p2}, Lcom/ime/framework/input/InputModule;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public predictionWord()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->predictionWord()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public predictionWordStartInputViewContinue()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->predictionWordStartInputViewContinue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public previewTrace(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/input/InputModule;->previewTrace(IZ)V

    :cond_0
    return-void
.end method

.method protected abstract processFunctionKey(I)V
.end method

.method public recaptureWordXT9()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->processRecaptureXT9()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->release()V

    return-void
.end method

.method public removeTerm(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->removeTerm(I)V

    :cond_0
    return-void
.end method

.method public removeTerm(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->removeTerm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetProdictionWord()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->resetPredictionWord()V

    :cond_0
    return-void
.end method

.method public resetTextFieldState()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->resetTextFieldState()V

    :cond_0
    return-void
.end method

.method public resetTimeoutComposingLength()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->resetTimeoutComposingLength()V

    :cond_0
    return-void
.end method

.method public setAccentChar(I)V
    .locals 1

    const/16 v0, -0xff

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    :goto_0
    iput p1, p0, Lcom/ime/framework/input/AbstractInputController;->mAccentCharKey:I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAccentCombinationMode:Z

    goto :goto_0
.end method

.method public setAcuteAccentPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    return-void
.end method

.method public setAcuteAccentSplitState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentSplit:Z

    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setAutoSpaceOn(Z)V

    :cond_0
    return-void
.end method

.method public setAvailableHWRLanguage()V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getInstallableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->installableLanguages:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getAvailableLanguages(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->availableLanguages:Ljava/util/List;

    goto :goto_0
.end method

.method public setChinesePhoneticIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setChinesePhoneticIndex(I)V

    return-void
.end method

.method public setContextAwareUniqueID(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setContextAwareUniqueID(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFieldSpecificType(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setFieldSpecificType(I)V

    return-void
.end method

.method public setHwrPanelRect(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ime/framework/engine/InputEngineManager;->setHwrPanelRect(IIII)V

    return-void
.end method

.method protected final setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/ime/framework/engine/InputEngineManager;->setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/ime/framework/engine/InputEngineManager;->setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    move-result v0

    return v0
.end method

.method protected final setInputModule(ILcom/ime/framework/input/InputModule;)Z
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    array-length v0, v0

    if-gt v0, p1, :cond_2

    :cond_0
    sget-boolean v0, Lcom/ime/framework/util/Debug;->ERROR:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungIME"

    const-string v1, "Input module setting fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aput-object p2, v0, p1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->initialize()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsAutoReplaced(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setIsAutoReplaced(Z)V

    return-void
.end method

.method public setIsPrivateImeOptionsCSC(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setIsPrivateImeOptionsCSC(Z)V

    :cond_0
    return-void
.end method

.method public setKeyboard(Lcom/ime/framework/view/Keyboard;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setKeyboard(Lcom/ime/framework/view/Keyboard;)V

    return-void
.end method

.method public setKeyboardSize(II)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/engine/InputEngineManager;->setKeyboardSize(II)V

    return-void
.end method

.method public setProdictionWord(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setPredictionWord(Z)V

    :cond_0
    return-void
.end method

.method public setSideSyncInputModule(I)V
    .locals 4

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v2

    invoke-virtual {p0, v0, v2, p1}, Lcom/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    array-length v3, v3

    if-le v3, v1, :cond_0

    iget-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v3, v3, v1

    iput-object v3, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    :cond_0
    return-void
.end method

.method public setSuggestionActiveIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/engine/InputEngineManager;->setSuggestionActiveIndex(I)V

    return-void
.end method

.method public setTraceStatus()V
    .locals 0

    return-void
.end method

.method public setUpByPickSuggestion()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->setUpByPickSuggestion()V

    :cond_0
    return-void
.end method

.method public setVerbatimBeforeAutoCorrection(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setVerbatimBeforeAutoCorrection(Ljava/lang/String;)V

    return-void
.end method

.method public swipeDown()V
    .locals 0

    return-void
.end method

.method public swipeLeft()V
    .locals 0

    return-void
.end method

.method public swipeRight()V
    .locals 0

    return-void
.end method

.method public swipeUp()V
    .locals 0

    return-void
.end method

.method protected toggleInputLanguage()V
    .locals 0

    return-void
.end method

.method public updateAcuteAccentState(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentPressed:Z

    or-int v0, p1, v1

    iget-boolean v1, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/engine/InputEngineManager;->updateAcuteAccentState(Z)V

    iput-boolean v0, p0, Lcom/ime/framework/input/AbstractInputController;->mIsAcuteAccentState:Z

    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->updateCandidates()V

    return-void
.end method

.method public final updateHwPhonepadInputModule()V
    .locals 4

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "INPUT_LANGUAGE"

    const v3, 0x656e4742

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v1, 0x6b6f0000

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    const/16 v2, 0x11

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    goto :goto_0
.end method

.method public final updateInputModule()V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const v9, 0x656e4742

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/ime/framework/common/Language;)V

    invoke-virtual {p0, v3, v6, v5}, Lcom/ime/framework/input/AbstractInputController;->getCurrentInputModuleIndex(III)I

    move-result v4

    invoke-virtual {p0, v3, v6, v5}, Lcom/ime/framework/input/AbstractInputController;->getCurrentInputEngineIndex(III)I

    move-result v2

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->getHWInputModuleIndex(I)I

    move-result v1

    invoke-virtual {p0, v5}, Lcom/ime/framework/input/AbstractInputController;->getHWInputEngineIndex(I)I

    move-result v0

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    array-length v7, v7

    if-le v7, v4, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v7, v11}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_0
    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_1
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    invoke-interface {v7, v8, v10}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v12, v10}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v7, v7, v4

    iput-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v7, v7, v1

    iput-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentHWInputModule:Lcom/ime/framework/input/InputModule;

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/engine/InputEngineManager;->setHWInputEngineIndex(I)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7, v2}, Lcom/ime/framework/engine/InputEngineManager;->setCurrentEngineIndex(I)V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->updateEngine()I

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v7}, Lcom/ime/framework/engine/InputEngineManager;->setChineseFuzzyPinyin()V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/ime/framework/input/InputModule;->setAddStrokeCallBackOnHWREngine()V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/ime/framework/input/InputModule;->closing()V

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v7}, Lcom/ime/framework/input/InputModule;->initialize()V

    :cond_5
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/ime/framework/input/AbstractInputController;->updateHwPhonepadInputModule()V

    :cond_6
    return-void

    :cond_7
    const/high16 v7, 0x74680000

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6a610000

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6b6d0000

    if-eq v5, v7, :cond_8

    const v7, 0x7a314d4d

    if-eq v5, v7, :cond_8

    const v7, 0x6d794d4d

    if-eq v5, v7, :cond_8

    const/high16 v7, 0x6c6f0000

    if-ne v5, v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_9
    const/high16 v7, 0x6b6f0000

    if-ne v5, v7, :cond_c

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_a
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v10}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/ime/framework/input/AbstractInputController;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "AUTO_SPACE"

    invoke-interface {v7, v8, v11}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public updatePredictionSettingAndEngine()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->updatePredictionSettingAndEngine()V

    :cond_0
    return-void
.end method

.method public updateShiftState()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->updateShiftState()V

    return-void
.end method

.method public updateSuggestionForSwiftKey()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->updateSuggestionForSwiftKey()V

    return-void
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/input/AbstractInputController;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->writeDBdataToFileOnFinishInput()V

    return-void
.end method

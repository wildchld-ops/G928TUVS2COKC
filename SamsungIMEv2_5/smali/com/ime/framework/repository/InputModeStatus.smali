.class public Lcom/ime/framework/repository/InputModeStatus;
.super Ljava/lang/Object;
.source "InputModeStatus.java"


# static fields
.field private static sInstance:Lcom/ime/framework/repository/InputModeStatus;


# instance fields
.field private inputManager:Lcom/ime/framework/common/InputManager;

.field private mForceSetHWRMode:Z

.field private mHwrPreviousInputMethod:I

.field private mInputMethod:I

.field private mInputRange:I

.field private mIsChangedMainValuesForStartInputView:Z

.field private mIsHwrMode:Z

.field private mIsNumInputMode:Z

.field private mLastUsedLatelyUsedSymbolsKeyCode:I

.field private mLastUsedMmKeyCode:I

.field private mLastUsedMobileKeyboardCustomKeySymbol:Ljava/lang/String;

.field private mMultiModalKeyInputMethod:I

.field private mNumberAndSymbolsKeypadType:I

.field private mPreferenceInputMethod:I

.field private mPreferenceInputMethodOnKor:I

.field private mPrevInputRange:I

.field private mSymbolInputMode:I

.field private repository:Lcom/ime/framework/repository/Repository;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mSymbolInputMode:I

    return-void
.end method

.method public static declared-synchronized getHwrPreviousInputMethod()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInputMethodStatus()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInputRange()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getIsNumInputMode()Z
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsNumInputMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLastUsedLatelyUsedSymbolsKeyCode()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedLatelyUsedSymbolsKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLastUsedMmKeyCode()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getLastUsedMobileKeyboardCustomKeySymbol()Ljava/lang/String;
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget-object v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMobileKeyboardCustomKeySymbol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMultiModalKeyInputMethod()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNumberAndSymbolsKeypadType()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceInputMethod()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceInputMethodOnKor()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPrevInputRange()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPrevInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSymbolInputMode()I
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mSymbolInputMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->inputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->inputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->inputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mInputMethod:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_RANGE"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mInputRange:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "PREVIOUS_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "PREFERENCE_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "MM_KEY_INPUT_METHOD"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "LAST_USED_MM_KEY_CODE"

    const/16 v2, -0x85

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "LAST_USED_LATELY_USED_SYMBOLS_KEY_CODE"

    const/16 v2, 0x2e

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedLatelyUsedSymbolsKeyCode:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "LAST_USED_MOBILE_KEYBOARD_CUSTOM_KEY_SYMBOL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMobileKeyboardCustomKeySymbol:Ljava/lang/String;

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "KOREAN_3X4_KEYPAD_TYPE_ON_KOR"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "HWR_MODE"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    const-string v1, "NUMBER_AND_SYMBOLS_KEYPAD_TYPE"

    invoke-interface {v0, v1, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I

    :cond_0
    return-void
.end method

.method private declared-synchronized initailize()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->inputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/repository/InputModeStatus;->repository:Lcom/ime/framework/repository/Repository;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ime/framework/repository/InputModeStatus;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized isChangedMainValuesForStartInputView()Z
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsChangedMainValuesForStartInputView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isForceSetHWRMode()Z
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mForceSetHWRMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isHwrMode()Z
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iget-boolean v0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setChangedMainValuesForStartInputView(Z)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsChangedMainValuesForStartInputView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setFlagIsHwrMode(Z)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsHwrMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setForceSetHWRMode(Z)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mForceSetHWRMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setHwrPreviousInputMethod(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mHwrPreviousInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setInputMethodStatus(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setInputRange(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setIsNumInputMode(Z)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput-boolean p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mIsNumInputMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLastUsedLatelyUsedSymbolsKeyCode(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedLatelyUsedSymbolsKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLastUsedMmKeyCode(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMmKeyCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setLastUsedMobileKeyboardCustomKeySymbol(Ljava/lang/String;)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput-object p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mLastUsedMobileKeyboardCustomKeySymbol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMultiModalKeyInputMethod(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mMultiModalKeyInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setNumberAndSymbolsKeypadType(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mNumberAndSymbolsKeypadType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceInputMethod(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceInputMethodOnKor(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPreferenceInputMethodOnKor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPrevInputRange(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mPrevInputRange:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setSymbolInputMode(I)V
    .locals 2

    const-class v1, Lcom/ime/framework/repository/InputModeStatus;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;-><init>()V

    sput-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    invoke-direct {v0}, Lcom/ime/framework/repository/InputModeStatus;->initailize()V

    :cond_0
    sget-object v0, Lcom/ime/framework/repository/InputModeStatus;->sInstance:Lcom/ime/framework/repository/InputModeStatus;

    iput p0, v0, Lcom/ime/framework/repository/InputModeStatus;->mSymbolInputMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

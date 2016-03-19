.class public Lcom/sec/android/inputmethod/SamsungKeypad;
.super Lcom/ime/framework/common/AbstractInputMethod;
.source "SamsungKeypad.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field private static final BOOSTING_TIME_FOR_FIRST_START_VIEW:I = 0x320

.field private static final BOOSTING_TIME_FOR_RE_START_VIEW:I = 0x190

.field private static final FLIP_FONT_PATH:Ljava/lang/String; = "persist.sys.flipfontpath"

.field private static oldFlipFont:Ljava/lang/String;


# instance fields
.field leftaltstate:I

.field mBeforeShowSoftFuncKbd:Z

.field private mCandateArea:Landroid/view/View;

.field public mDoneButton:Landroid/view/View;

.field public mExtractArea:Landroid/view/View;

.field protected mInputLanguage:I

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mIsChangedPrediction:Z

.field private mIsConfigurationChanged:Z

.field private mIsFirstStartView:Z

.field mIsForceShowSIP:Z

.field private final mIsHardwareAcceleratedDrawingEnabled:Z

.field mIsLongPress:Z

.field private mIsShowSIP:Z

.field public mKeyPreviewBackingView:Landroid/view/View;

.field private mRemoteControllerManager:Lcom/ime/framework/input/remoteController/RemoteControllerManager;

.field protected mRepository:Lcom/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ime/framework/common/AbstractInputMethod;-><init>()V

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsFirstStartView:Z

    invoke-static {p0}, Lcom/sec/android/inputmethod/compat/InputMethodServiceCompatUtils;->enableHardwareAcceleration(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    const-string v0, "SamsungKeypad"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware accelerated drawing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/SamsungKeypad;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private forceShowSip()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypad;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    :cond_0
    return-void
.end method

.method private isActionKeyCodeToQwerty(I)Z
    .locals 6

    const/16 v5, 0x1d

    const/16 v4, 0x10

    const/4 v3, 0x7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHKChineseLanguageMode()Z

    move-result v2

    if-eqz v2, :cond_4

    if-lt p1, v5, :cond_0

    const/16 v2, 0x36

    if-le p1, v2, :cond_2

    :cond_0
    if-lt p1, v3, :cond_1

    if-le p1, v4, :cond_2

    :cond_1
    const/16 v2, 0x45

    if-eq p1, v2, :cond_2

    const/16 v2, 0x4a

    if-eq p1, v2, :cond_2

    const/16 v2, 0x37

    if-eq p1, v2, :cond_2

    const/16 v2, 0x38

    if-eq p1, v2, :cond_2

    const/16 v2, 0x4c

    if-ne p1, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    if-lt p1, v5, :cond_5

    const/16 v2, 0x36

    if-le p1, v2, :cond_2

    :cond_5
    if-lt p1, v3, :cond_6

    if-le p1, v4, :cond_2

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method private isExceptionalModelForUseKCM()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/ime/framework/common/Constant;->EXCEPTIONAL_MODEL_FOR_USE_KCM:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/ime/framework/common/Constant;->EXCEPTIONAL_MODEL_FOR_USE_KCM:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doMinimizeSoftInput()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v0}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_0
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->doMinimizeSoftInput()V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/ime/framework/common/AbstractInputMethod;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    const-string v1, "Dump start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/ime/framework/common/InputManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "SamsungIME"

    const-string v1, "Cannot dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/common/InputManager;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method

.method public onBindInput()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onBindInput()V

    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->computeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 20

    const-string v17, "SamsungIME"

    const-string v18, "onConfigurationChanged"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v17

    const-string v18, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobileKeyboardNeedFresh(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const-string v17, "SamsungIME"

    const-string v18, "onConfigurationChanged- Configuration.MOBILEKEYBOARD_COVERED_YES "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobileKeyboard(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v17, v0

    const-string v18, "INPUT_LANGUAGE"

    const v19, 0x656e4742

    invoke-interface/range {v17 .. v19}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v17, "first_mobilekeyboard_change_language_popup_excution"

    const/16 v18, 0x1

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->showMobileKeyboardLanguageDialog()V

    const-string v17, "first_mobilekeyboard_change_language_popup_excution"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardNeedFresh()Z

    move-result v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->dismissExpandPopup()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/input/InputController;->updateCandidates()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    const-string v17, "pref_last_input_method_type"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/input/InputController;->changeToFloatingKeyboardMode()V

    :cond_2
    :goto_1
    const-string v9, ""

    new-instance v6, Ljava/io/File;

    const-string v17, "/data/data/com.android.settings/app_fonts/sans.loc"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v8, :cond_3

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    move-object v2, v3

    move-object v7, v8

    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    sget-object v17, Lcom/sec/android/inputmethod/SamsungKeypad;->oldFlipFont:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Lcom/ime/framework/common/FontManager;->initialize(Landroid/content/Context;)V

    sput-object v9, Lcom/sec/android/inputmethod/SamsungKeypad;->oldFlipFont:Ljava/lang/String;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->beforeConfigrationChanged(Landroid/content/res/Configuration;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-super/range {p0 .. p1}, Lcom/ime/framework/common/AbstractInputMethod;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->afterConfigrationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    :cond_7
    :goto_3
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSupportedLanguage(I)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->showMobileKeyboardLanguageDialog()V

    goto/16 :goto_0

    :cond_9
    const-string v17, "SamsungIME"

    const-string v18, "onConfigurationChanged- Configuration.MOBILEKEYBOARD_COVERED_NO "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobileKeyboardNeedFresh(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobileKeyboard(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardSYMCandidate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->setShowCMToolbar(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/ime/framework/util/IndicatorManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ime/framework/util/IndicatorManager;->cancelNotiForMK()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v17 .. v17}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateCandidates()V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->getSystemLocale()Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/ime/framework/common/InputManager;->resetMobileKeyboardByLocaleChange()V

    goto/16 :goto_1

    :catch_0
    move-exception v17

    move-object v2, v3

    move-object v7, v8

    goto/16 :goto_2

    :catch_1
    move-exception v4

    :goto_4
    :try_start_4
    const-string v9, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_4

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v17

    goto/16 :goto_2

    :catch_3
    move-exception v4

    :goto_5
    :try_start_6
    const-string v9, "default"

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_4

    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v17

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    :goto_6
    if-eqz v7, :cond_d

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_d
    :goto_7
    throw v17

    :cond_e
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    goto/16 :goto_3

    :catch_5
    move-exception v18

    goto :goto_7

    :catchall_1
    move-exception v17

    move-object v7, v8

    goto :goto_6

    :catchall_2
    move-exception v17

    move-object v2, v3

    move-object v7, v8

    goto :goto_6

    :catch_6
    move-exception v4

    move-object v7, v8

    goto :goto_5

    :catch_7
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    goto :goto_5

    :catch_8
    move-exception v4

    move-object v7, v8

    goto :goto_4

    :catch_9
    move-exception v4

    move-object v2, v3

    move-object v7, v8

    goto :goto_4
.end method

.method public onCreate()V
    .locals 5

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsHardwareAcceleratedDrawingEnabled:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/high16 v3, 0x7f0c0000

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v0}, Lcom/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, p0}, Lcom/ime/framework/common/InputManager;->initModulesWithService(Lcom/ime/framework/common/AbstractInputMethod;)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getRepository()Lcom/ime/framework/repository/Repository;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-static {}, Lcom/ime/framework/input/remoteController/RemoteControllerManager;->getInstance()Lcom/ime/framework/input/remoteController/RemoteControllerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRemoteControllerManager:Lcom/ime/framework/input/remoteController/RemoteControllerManager;

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/sec/android/inputmethod/SamsungKeypad$1;

    invoke-direct {v4, p0}, Lcom/sec/android/inputmethod/SamsungKeypad$1;-><init>(Lcom/sec/android/inputmethod/SamsungKeypad;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onCreate()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v0}, Lcom/ime/framework/common/InputManager;->setHardwareAcceleratedDrawingEnabled(Z)V

    throw v3
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isDeviceHasHardwareKeypad()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isHWKeyboardOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getPopupCandidateView()Lcom/ime/framework/view/PopupCandidateView;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v2, :cond_4

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-interface {v4, v2}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v1

    goto :goto_1
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onDestroy()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->onDestroy()V

    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->evaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onEvaluateFullscreenMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onEvaluateFullscreenMode()Z

    move-result v0

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isCarInDrivingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onEvaluateInputViewShown()Z

    move-result v0

    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    return-void
.end method

.method public onFinishInput()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->finishInput()V

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onFinishInput()V

    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 4

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->onFinishInputView(Z)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, p1}, Lcom/ime/framework/common/InputManager;->finishInputView(Z)V

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsChangedPrediction:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsChangedPrediction:Z

    iget-object v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 24

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v21

    const/high16 v22, 0x40000000    # 2.0f

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v21

    if-eqz v21, :cond_1

    const/16 v18, 0x1

    :cond_0
    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v21

    if-nez v21, :cond_5

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x13

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x15

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x16

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->processKnobKeyEvents(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v18, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v21

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v21

    if-nez v21, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isKorMode()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isExceptionalModelForUseKCM()Z

    move-result v21

    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v21, v0

    const-string v22, "INPUT_LANGUAGE"

    const/high16 v23, 0x656e0000

    invoke-interface/range {v21 .. v23}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const v22, 0x656e5553

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const v22, 0x656e4742

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    :cond_9
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v21, 0x1d

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    const/16 v21, 0x36

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    :cond_a
    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_d

    :cond_b
    const/16 v21, 0x109

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_d

    const/16 v21, 0x3e

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc1

    move/from16 v21, v0

    if-nez v21, :cond_d

    :cond_c
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v8

    const/4 v7, 0x0

    if-eqz v8, :cond_e

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    and-int/lit8 v7, v21, 0xf

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v9

    if-eqz v9, :cond_f

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v9, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v21

    if-nez v21, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v21

    if-eqz v21, :cond_14

    :cond_10
    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/inputmethod/SamsungKeypad;->isActionKeyCodeToQwerty(I)Z

    move-result v21

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Lcom/ime/framework/common/InputManager;->makeSelectLanguagePrefKey(Lcom/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/ime/framework/common/Language;->setInputMethodSubType(I)V

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/repository/InputModeStatus;->setPreferenceInputMethod(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v9, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/input/InputController;->updateInputModule()V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypad;->setInputView(Landroid/view/View;)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/SamsungKeypad;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v21, v0

    const-string v22, "INPUT_LANGUAGE"

    const/high16 v23, 0x656e0000

    invoke-interface/range {v21 .. v23}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x6b6f0000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x6a610000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x7a680000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const v22, 0x7a68434e

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const v22, 0x7a68484b

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const v22, 0x7a685457

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x74680000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x76690000

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    const/16 v21, 0x109

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    const/16 v21, 0x3e

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc1

    move/from16 v21, v0

    if-nez v21, :cond_17

    :cond_12
    const/16 v20, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v20

    sget-boolean v21, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v21, :cond_13

    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "keycode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "SamsungIME"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "uniKeyCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", char : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v21, " .,;:!?\n()[]*&@{}/<>_-+=|\'\u061b\u060c\u061f\""

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    const/16 v21, 0x3b

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    const/16 v21, 0x3c

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isEnableSpellChecker()Z

    move-result v21

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->doSpellChecker(Ljava/lang/String;I)Z

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto/16 :goto_2

    :cond_16
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v21

    if-eqz v21, :cond_19

    if-eqz v8, :cond_19

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    if-nez v21, :cond_19

    const/16 v21, 0x109

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_19

    const/16 v21, 0x3e

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc1

    move/from16 v21, v0

    if-nez v21, :cond_19

    :cond_18
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_19
    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    and-int/lit8 v21, v21, 0x20

    if-eqz v21, :cond_25

    const/4 v11, 0x1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    if-nez v21, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-nez v21, :cond_26

    if-eqz v8, :cond_26

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    if-nez v21, :cond_1a

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v21, v0

    if-eqz v21, :cond_26

    :cond_1a
    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_1b

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_1c

    :cond_1b
    const/16 v21, 0x11

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    const/16 v21, 0x12

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    :cond_1c
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->showSoftFuncKbd()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    const/16 v21, 0x11

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_1d

    const/16 v21, 0x12

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    :cond_1e
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v21

    const-string v22, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    const/4 v12, 0x1

    :goto_5
    if-eqz v12, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-nez v21, :cond_23

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    if-nez v21, :cond_23

    const/16 v21, 0x43

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_21

    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_1f

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_20

    :cond_1f
    const/16 v21, 0x11

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_20

    const/16 v21, 0x12

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_23

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-eqz v21, :cond_23

    :cond_21
    if-eqz v8, :cond_23

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    if-nez v21, :cond_22

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v21, v0

    if-eqz v21, :cond_23

    :cond_22
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->onPress(I)V

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Lcom/ime/framework/repository/InputStatus;->setFlagHwKeyInput(Z)V

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHwPhonepad()Z

    move-result v21

    if-eqz v21, :cond_29

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v21

    if-nez v21, :cond_24

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    if-lez v21, :cond_29

    :cond_24
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_25
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-eqz v21, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v21

    if-nez v21, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->forceShowSip()V

    goto/16 :goto_4

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-interface/range {v21 .. v22}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    goto/16 :goto_4

    :cond_28
    const/4 v12, 0x0

    goto/16 :goto_5

    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v21

    and-int/lit8 v16, v21, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    if-eqz v21, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v21, v0

    const v22, 0x400000ff    # 2.0000608f

    and-int v6, v21, v22

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v21

    if-nez v21, :cond_2b

    if-eqz v11, :cond_2c

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isNotUseAltGrKeyInCountry()Z

    move-result v21

    if-eqz v21, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->isHwDpadKey(ILandroid/view/KeyEvent;)Z

    move-result v21

    if-nez v21, :cond_2c

    invoke-virtual {v10}, Lcom/ime/framework/inputmode/InputModeManager;->isHanjaEnable()Z

    move-result v21

    if-nez v21, :cond_2c

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_2c
    iget v0, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    if-nez v21, :cond_2f

    iget v0, v3, Landroid/content/res/Configuration;->keyboard:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2d

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_2d
    iget v0, v3, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2f

    if-eqz v8, :cond_2f

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    if-nez v21, :cond_2e

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v21, v0

    if-eqz v21, :cond_2f

    :cond_2e
    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_2f

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_2f

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_2f
    const/16 v21, 0x43

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_30

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v6, v0, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    if-eqz v21, :cond_30

    const-string v21, "com.sec.pcw"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_30

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_30
    const/16 v21, 0x39

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    if-nez v21, :cond_34

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    :cond_31
    :goto_6
    iget v0, v3, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_36

    :cond_32
    const/16 v21, 0x39

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_33

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    :cond_33
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_35

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_6

    :cond_35
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_31

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    goto :goto_6

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v21

    if-nez v21, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->setHWkeyboardConnectionSetting()V

    :cond_37
    const/16 v21, 0x37

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    const/16 v21, 0x38

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_39

    :cond_38
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    if-nez v21, :cond_39

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    move/from16 v21, v0

    const/high16 v22, 0x6b6f0000

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3a

    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_3a

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_3a

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v21

    if-nez v21, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v21

    if-eqz v21, :cond_41

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v21

    if-nez v21, :cond_3c

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v21

    if-eqz v21, :cond_3f

    :cond_3c
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v21

    if-nez v21, :cond_3f

    const/16 v21, 0x10

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v21

    if-eqz v21, :cond_3e

    const/16 v21, 0x1d

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v21, 0x34

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v21, 0x1f

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v21, 0x32

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_3e

    :cond_3d
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    :cond_3f
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    if-eqz v21, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "com.hancom."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_47

    if-nez v12, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v21

    if-eqz v21, :cond_47

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v21

    if-nez v21, :cond_40

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v21

    if-nez v21, :cond_40

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v21

    if-eqz v21, :cond_47

    :cond_40
    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v21, v0

    if-nez v21, :cond_47

    iget v0, v8, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v21, v0

    if-nez v21, :cond_47

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v21

    if-nez v21, :cond_47

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_41
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v21

    if-nez v21, :cond_3f

    const/16 v21, 0x10

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v21

    if-nez v21, :cond_42

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v21

    if-nez v21, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-nez v21, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v21

    if-nez v21, :cond_42

    if-eqz v12, :cond_3f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v21

    if-eqz v21, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v21

    if-eqz v21, :cond_3f

    const-string v21, "com.sec.android.app.sbrowser"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3f

    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_3f

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_3f

    :cond_42
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v21

    if-nez v21, :cond_43

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v21

    if-eqz v21, :cond_46

    :cond_43
    const/16 v21, 0x1d

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_44

    const/16 v21, 0x36

    move/from16 v0, p1

    move/from16 v1, v21

    if-le v0, v1, :cond_45

    :cond_44
    const/16 v21, 0x7

    move/from16 v0, p1

    move/from16 v1, v21

    if-lt v0, v1, :cond_46

    const/16 v21, 0x10

    move/from16 v0, p1

    move/from16 v1, v21

    if-gt v0, v1, :cond_46

    :cond_45
    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_7

    :cond_47
    if-nez v18, :cond_0

    if-eqz v11, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0

    :cond_48
    const/16 v21, 0x4

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_4a

    invoke-static {}, Lcom/ime/framework/view/TipsDialog;->getInstance()Lcom/ime/framework/view/TipsDialog;

    move-result-object v15

    if-eqz v15, :cond_49

    invoke-virtual {v15}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v21

    if-eqz v21, :cond_49

    invoke-virtual {v15}, Lcom/ime/framework/view/TipsDialog;->closeDiscoverability()V

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v21

    if-eqz v21, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v21

    if-eqz v21, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0d0287

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/ime/framework/common/InputManager;->sendTalkbackDescription(Ljava/lang/String;)V

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->onKeyDownBeforeCallingSuperMethod(ILandroid/view/KeyEvent;)V

    invoke-super/range {p0 .. p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v18

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "INPUT_LANGUAGE"

    const/high16 v2, 0x656e0000

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v1, 0x6b6f0000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v1, 0x6a610000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v1, 0x7a680000

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v1, 0x7a68434e

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v1, 0x7a68484b

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v1, 0x7a685457

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v1, 0x74680000

    if-eq v0, v1, :cond_1

    const/16 v0, 0x109

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0xc1

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/16 v8, -0x14a

    const/4 v7, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeTouchSIP()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/ime/framework/view/AbstractKeyboardView;->setAlertDialogMessage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/ime/framework/view/AbstractKeyboardView;->showAlertDialog()V

    move v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-eq v3, v4, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x13

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x14

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x15

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x16

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x17

    if-eq v3, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x3d

    if-ne v3, v5, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v5, 0x3d

    if-ne v3, v5, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, p2}, Lcom/ime/framework/common/InputManager;->processKnobKeyEvents(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne p1, v7, :cond_8

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    if-ne v3, v9, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v3

    new-array v5, v4, [I

    aput v8, v5, v2

    invoke-interface {v3, v8, v5}, Lcom/ime/framework/input/InputController;->onKey(I[I)V

    move v2, v4

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isClipboardShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->dismissClipboard()V

    move v2, v4

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v3, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    if-eq p1, v7, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6b6f0000

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x6a610000

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x7a680000

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68434e

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a68484b

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const v5, 0x7a685457

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x74680000

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputLanguage:I

    const/high16 v5, 0x76690000

    if-eq v3, v5, :cond_a

    const/16 v3, 0x109

    if-eq p1, v3, :cond_a

    const/16 v3, 0x3e

    if-ne p1, v3, :cond_9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, 0xc1

    if-nez v3, :cond_a

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_c

    const/16 v3, 0x109

    if-eq p1, v3, :cond_c

    const/16 v3, 0x3e

    if-ne p1, v3, :cond_b

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, 0xc1

    if-nez v3, :cond_c

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_c
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    if-eqz v3, :cond_d

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsLongPress:Z

    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_d
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    if-ne v3, v4, :cond_10

    const/16 v3, 0x11

    if-eq p1, v3, :cond_e

    const/16 v3, 0x12

    if-ne p1, v3, :cond_10

    :cond_e
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mBeforeShowSoftFuncKbd:Z

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_f
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v3, v4, :cond_14

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    if-nez v3, :cond_14

    iget v3, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_11

    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_11
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-nez v3, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v9, :cond_14

    if-eqz v1, :cond_14

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_13

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v3, :cond_14

    :cond_13
    const/4 v3, 0x7

    if-lt p1, v3, :cond_14

    const/16 v3, 0x10

    if-gt p1, v3, :cond_14

    move v2, v4

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncKeyboardConnected()Z

    move-result v3

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, p1, p2}, Lcom/ime/framework/common/InputManager;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_16
    if-nez v2, :cond_0

    if-ne p1, v7, :cond_17

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/ime/framework/sidesync/SideSyncManager;->sendSideSyncKeyCode(I)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isPopupWindowShown()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    move v2, v4

    goto/16 :goto_0

    :cond_17
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onShowInputRequested(IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onShowInputRequested(IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "onStartInput"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    const-string v1, "SamsungIME"

    const-string v2, "onStartInput: cant show SIP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_7

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v3, :cond_5

    :cond_3
    move v0, v1

    :goto_1
    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartInput: No inputType, No imeOption, isInputViewShown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isExtractViewShown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isExtractViewShown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isShowInputRequested = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isShowInputRequested()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isConfigChanged = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartInput: packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "SamsungIME_MKDB"

    const-string v2, "Skip handle onStartInput when InputType.TYPE_NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    :cond_8
    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isShowCMToolbar()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->setShowCMToolbar(Z)V

    iget-object v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v4, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v1}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-interface {v3, v1}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    :cond_9
    iput v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->leftaltstate:I

    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, p1, p2}, Lcom/ime/framework/common/InputManager;->startInput(Landroid/view/inputmethod/EditorInfo;Z)V

    goto/16 :goto_0
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    const-string v7, "SamsungIME"

    const-string v8, "onStartInputView: cant show SIP"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v9, :cond_4

    iget v9, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v9

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    if-eqz v9, :cond_a

    :cond_2
    move v3, v8

    :goto_1
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartInputView: No inputType, No imeOption, isInputViewShown = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isExtractViewShown = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isExtractViewShown()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isShowInputRequested = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isShowInputRequested()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isConfigChanged = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v9, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartInputView: packageName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isInputViewShown()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isShowInputRequested()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v6, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v9, "SETTINGS_DEFAULT_PREDICTION_ON"

    invoke-interface {v1, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsChangedPrediction:Z

    :cond_4
    iget-boolean v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsFirstStartView:Z

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v10, 0x320

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->startBoost(I)V

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsFirstStartView:Z

    :cond_5
    :goto_2
    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartInputView requsted restarting value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isShowCMToolbar()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/common/InputManager;->setShowCMToolbar(Z)V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/ime/framework/common/AbstractInputMethod;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    const-string v9, "SamsungIME"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onStartInputView After call super -  restarting value = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v8}, Lcom/ime/framework/common/InputManager;->setKeyboardShowingStatus(Z)V

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->initialzeSettingValues()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_KeepKeypadDuringHwKeyAvailable"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v8, :cond_d

    move v4, v8

    :goto_3
    if-eqz v4, :cond_7

    if-eqz p2, :cond_7

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->isShownSoftFuncKbd()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v9

    if-eqz v9, :cond_7

    const-string v9, "com.sec.android.app.sbrowser"

    iget-object v10, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v10}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9, v7}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    :cond_7
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9, v7, v7}, Lcom/ime/framework/inputmode/InputModeManager;->getValidMMCodes(II)[I

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->updateWacomState()V

    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->isEnabledMagnificationGesture(Landroid/content/Context;)Z

    move-result v9

    if-ne v9, v8, :cond_9

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    const/4 v8, 0x7

    if-eq v0, v8, :cond_8

    const/16 v8, 0x8

    if-ne v0, v8, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->setQwertyInputMethod()V

    :cond_9
    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->asyncCheckAndConfigPowerSavingMode()V

    iget-object v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, p1, p2}, Lcom/ime/framework/common/InputManager;->startInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    iget-boolean v8, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    if-eqz v8, :cond_0

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsForceShowSIP:Z

    goto/16 :goto_0

    :cond_a
    move v3, v7

    goto/16 :goto_1

    :cond_b
    if-nez v3, :cond_4

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.mms"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_0

    :cond_c
    iget-object v9, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v10, 0x190

    invoke-interface {v9, v10}, Lcom/ime/framework/common/InputManager;->startBoost(I)V

    goto/16 :goto_2

    :cond_d
    move v4, v7

    goto/16 :goto_3
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v0, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SamsungIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SK] <onUpdateSelection> oldSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newSelEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", candidatesEnd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/ime/framework/common/AbstractInputMethod;->onUpdateSelection(IIIIII)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/ime/framework/common/InputManager;->updateSelection(IIIIII)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isShowCMToolbar()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setShowCMToolbar(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    :cond_2
    return-void
.end method

.method public onViewClicked(Z)V
    .locals 2

    const-string v0, "SamsungIME"

    const-string v1, "onViewClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->onViewClicked(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->viewClicked(Z)V

    :cond_0
    return-void
.end method

.method public onWindowHidden()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "SamsungIME"

    const-string v2, "onWindowHidden"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setWindowShownState(Z)V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->windowHidden()V

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/SamsungKeypad;->setIsMovable(Z)V

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/util/IndicatorManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ime/framework/util/IndicatorManager;->cancelNotiForMK()V

    :cond_0
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onWindowHidden()V

    return-void
.end method

.method public onWindowShown()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "SamsungIME"

    const-string v1, "onWindowShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->sendTalkbackDescriptionOnWindowShown()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isPopupInputMethod()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/SamsungKeypad;->setIsMovable(Z)V

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsShowSIP:Z

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, v2}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_0
    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->onWindowShown()V

    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 14

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mIsConfigurationChanged:Z

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getWindow()Landroid/app/Dialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v11, 0x102001d

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    const v11, 0x102001c

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v11

    if-eqz v11, :cond_0

    :try_start_0
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    check-cast v11, Landroid/widget/FrameLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mDoneButton:Landroid/view/View;

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mDoneButton:Landroid/view/View;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setDoneButton(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setExtractArea(Landroid/view/View;)V

    :cond_1
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v4, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v11, 0x50

    iput v11, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v11, :cond_a

    instance-of v11, p1, Lcom/ime/framework/view/PopupCandidateView;

    if-nez v11, :cond_a

    new-instance v11, Landroid/view/View;

    invoke-direct {v11, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->setBackingView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-direct {v3, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0900fe

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v12, 0x7f080045

    invoke-interface {v11, v12}, Lcom/ime/framework/common/InputManager;->getFractionOrientedheight(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v11, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v12, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isFullscreenMode()Z

    move-result v11

    if-eqz v11, :cond_6

    const/16 v11, 0x8

    :goto_2
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    const v12, 0x7f03005e

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lcom/ime/framework/common/InputManager;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;

    if-nez v9, :cond_7

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v2

    const-string v11, "SamsungIME"

    const-string v12, "done button not found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v11

    if-eqz v11, :cond_5

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090728

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090728

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v0, v11

    goto :goto_1

    :cond_5
    mul-int/lit8 v11, v0, 0x3

    iput v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const v11, 0x7f100082

    invoke-virtual {v9, v11}, Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getViewController()Lcom/ime/framework/view/ViewController;

    move-result-object v11

    invoke-interface {v11}, Lcom/ime/framework/view/ViewController;->getLengthOfSpellText()I

    move-result v6

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v11

    if-nez v11, :cond_8

    if-lez v6, :cond_b

    :cond_8
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    :goto_4
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v5, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090ef7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f090ef8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v8, v11

    :cond_9
    iget v11, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v11, v0

    sub-int v10, v11, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v10, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v11

    if-eqz v11, :cond_c

    const/16 v11, 0x50

    iput v11, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mExtractArea:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_5
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11, v9}, Lcom/ime/framework/common/InputManager;->setSpellLayout(Lcom/ime/framework/view/chinesespell/AbstractSpellLayout;)V

    :cond_a
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/ime/framework/common/InputManager;->getViewController()Lcom/ime/framework/view/ViewController;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Lcom/ime/framework/view/ViewController;->getSpellView(Z)Landroid/view/View;

    goto/16 :goto_3

    :cond_b
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Lcom/ime/framework/view/chinesespell/AbstractSpellView;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-object v11, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mCandateArea:Landroid/view/View;

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11, v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5
.end method

.method public setCandidatesViewShown(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/ime/framework/common/AbstractInputMethod;->setCandidatesViewShown(Z)V

    return-void
.end method

.method public updateFullscreenMode()V
    .locals 2

    invoke-super {p0}, Lcom/ime/framework/common/AbstractInputMethod;->updateFullscreenMode()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/SamsungKeypad;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/SamsungKeypad;->isFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

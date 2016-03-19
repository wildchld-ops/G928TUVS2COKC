.class public Lcom/ime/implement/input/InputControllerImpl;
.super Lcom/ime/framework/input/AbstractInputController;
.source "InputControllerImpl.java"


# static fields
.field private static final SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

.field private static final SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

.field public static UseMode3:Z

.field public static isPreviousStateShiftPress:Z


# instance fields
.field protected mDisplayText:Landroid/text/SpannableStringBuilder;

.field private mFullWidthMode:Z

.field private mHandwritingHasBeenUsed:Z

.field private mMobileKDBShowTime:J

.field public mOCRSIPType:I

.field private mSoundEffectController:Lcom/ime/framework/effect/SoundEffectController;

.field private mStatus:Z

.field private mVibrateController:Lcom/ime/framework/effect/VibrateController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, -0x1000000

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x912701

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_CONVERT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x993256

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x604933

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_EISUKANA_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0xf0001

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    const v1, -0x565657

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/input/AbstractInputController;-><init>()V

    return-void
.end method

.method private SearchHanja()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->SearchHanja()V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/ime/implement/input/InputControllerImpl;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->isLanguageEnKoOnKorMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/repository/Repository;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/ime/implement/input/InputControllerImpl;Lcom/ime/framework/common/Language;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->isNeedToUpdateInpuModueWithLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/ime/implement/input/InputControllerImpl;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method private checkVoiceLegalInforDialog()Z
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "first_dragon_voice_legal_information_execution"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->showVoiceLegalInformation()V

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkVoiceNetWorkDialog()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->getInstance()Lcom/dragon/android/voiceime/ui/VoiceDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceNetworkErrorDialog(ZZ)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    invoke-static {}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->getInstance()Lcom/dragon/android/voiceime/ui/VoiceDialog;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/dragon/android/voiceime/ui/VoiceDialog;->showVoiceNetworkErrorDialog(ZZ)V

    goto :goto_0
.end method

.method private getKeyFromKeycode(I)Lcom/ime/framework/view/Keyboard$Key;
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->getKeyboardKeyList(Z)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    const/high16 v6, 0x656c0000

    if-eq v2, v6, :cond_0

    const/high16 v6, 0x66720000

    if-eq v2, v6, :cond_0

    const v6, 0x66724652

    if-eq v2, v6, :cond_0

    const v6, 0x66724341

    if-ne v2, v6, :cond_3

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v4, v0, Lcom/ime/framework/view/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    int-to-char v6, p1

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v5, v0

    :cond_2
    :goto_0
    return-object v5

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/Keyboard$Key;

    iget-object v6, v0, Lcom/ime/framework/view/Keyboard$Key;->codes:[I

    aget v6, v6, v9

    if-ne v6, p1, :cond_4

    move-object v5, v0

    goto :goto_0
.end method

.method private getXT9VerFromSecProductFeature()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DBG_DEVELOPER_MODE:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isSwiftKeyMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "XT9_9_10"

    :goto_0
    const-string v1, "XT9_9_13"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    :goto_1
    return v1

    :cond_0
    const-string v0, "SWIFTKEY"

    goto :goto_0

    :cond_1
    const-string v1, "XT9_9_10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const-string v1, "XT9_9_8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const-string v1, "XT9_9_4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const-string v1, "XT9_9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const-string v1, "XT9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v1, 0x6

    goto :goto_1
.end method

.method private getXt9InputEngine()Lcom/ime/framework/engine/InputEngine;
    .locals 4

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleArrow(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->prevSymbolsPage()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->nextSymbolsPage()V

    goto :goto_0
.end method

.method private handleClipBoardKey()V
    .locals 15

    const/4 v14, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v13, v14}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v13}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "InputControllerImpl"

    const-string v4, "handleClipBoardKey : isClipboardAllowed false"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "InputControllerImpl"

    const-string v4, "handleClipBoardKey : isClipboardAllowed true"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v7, 0x10d

    const/4 v12, 0x2

    move-wide v4, v2

    move v8, v6

    move v9, v6

    move v10, v6

    move v11, v6

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v14}, Lcom/ime/framework/common/InputManager;->showKeyboardAfterClipboardClosed(Z)V

    :cond_3
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/16 v4, -0x75

    invoke-interface {v1, v4}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    iget-boolean v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_4
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    goto :goto_0
.end method

.method private handleCustomKey(I)V
    .locals 3

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    invoke-static {p1}, Lcom/ime/framework/util/Utils;->getCustomKeyText(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_0
    return-void
.end method

.method private handleHwrRangeChange(ZZ)V
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, v0}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-boolean v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, p2}, Lcom/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v0

    goto :goto_0
.end method

.method private handleMonthKey(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v1, v3, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_0
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->getMonthText(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    :cond_1
    return-void
.end method

.method private handleRangeChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0, p1}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SYMBOLS_PAGE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-boolean v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_0
    return-void
.end method

.method private handleRangeChangeToSym()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "SYMBOLS_PAGE"

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_0
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v3}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v1}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_3
    return-void
.end method

.method private handleThaiRangeChange(I)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/ime/framework/common/InputManager;->updateThaiKeyboardView(I)V

    return-void
.end method

.method private isLanguageEnKoOnKorMode()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x6b6f0000

    invoke-direct {p0, v0, v2}, Lcom/ime/implement/input/InputControllerImpl;->isLanguageOnList([Lcom/ime/framework/common/Language;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x656e4742

    invoke-direct {p0, v0, v2}, Lcom/ime/implement/input/InputControllerImpl;->isLanguageOnList([Lcom/ime/framework/common/Language;I)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x656e5553

    invoke-direct {p0, v0, v2}, Lcom/ime/implement/input/InputControllerImpl;->isLanguageOnList([Lcom/ime/framework/common/Language;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLanguageOnList([Lcom/ime/framework/common/Language;I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    if-ne v1, p2, :cond_0

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

.method private isNeedToUpdateInpuModueWithLanguage(Lcom/ime/framework/common/Language;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ime/framework/common/Language;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7a680000 -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method

.method private processMMKey(I)V
    .locals 11

    const/16 v10, 0x30

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    if-ne v5, v9, :cond_1

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mPrivateImeOptionsController:Lcom/ime/framework/common/PrivateImeOptionsController;

    invoke-interface {v6}, Lcom/ime/framework/common/PrivateImeOptionsController;->getInputType()I

    move-result v6

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    new-array v7, v9, [I

    const/4 v8, 0x0

    aput v10, v7, v8

    invoke-interface {v6, v10, v7}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentMultiModalKeyCode()I

    move-result v4

    invoke-static {p1}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    invoke-static {v4}, Lcom/ime/framework/util/Utils;->isCMSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_8

    int-to-char v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/ime/implement/input/InputControllerImpl;->onText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Handwriting SIP"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const v8, 0x656e4742

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v3}, Lcom/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isVoiceInputEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S01D"

    const-string v8, "Voice"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "clipboardEx"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Voice Input"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-class v7, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Clipboard"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "OCR"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->handleOcrKey()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Normal SIP"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Floating SIP"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Split SIP"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S001"

    const-string v8, "Emoticon"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, -0x87

    invoke-static {v6}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v6, "last_used_mm_key_code"

    invoke-direct {p0, v6, v4}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto/16 :goto_0

    :pswitch_c
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    if-nez v6, :cond_7

    if-eqz v2, :cond_5

    if-nez v1, :cond_7

    :cond_5
    const/16 v6, 0x8

    if-ne p1, v6, :cond_6

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    :goto_2
    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->changeToFloatingKeyboardMode()V

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-string v7, "S00E"

    const-string v8, "Hanja"

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto/16 :goto_0

    :cond_8
    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x89
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setBooleanToPreference(Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setIntToPreference(Ljava/lang/String;I)V
    .locals 3

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    invoke-interface {v2}, Lcom/ime/framework/repository/Repository;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setXt9InputEngine()Lcom/ime/framework/engine/InputEngine;
    .locals 3

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    new-instance v1, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;

    invoke-direct {v1}, Lcom/ime/framework/engine/xt9/ver94/Xt994Wrapper;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v1, v1}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showCyrillicUmlautPopup(I)Z
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "INPUT_LANGUAGE"

    const/high16 v4, 0x656e0000

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1, v1}, Lcom/ime/framework/input/hw/HwKeyManager;->convertCyrillicUmlaut(II)I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private showDlgMsgBox()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->showDlgMsgBox()V

    return-void
.end method

.method private showHalfFullWidthSwitchDialog()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->showHalfFullWidthSwitchDialog()V

    return-void
.end method

.method private showNordicUmlautPopup(I)Z
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mHwKeyManager:Lcom/ime/framework/input/hw/HwKeyManager;

    invoke-virtual {v2, p1}, Lcom/ime/framework/input/hw/HwKeyManager;->getNordicSymbolPopupKey(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-char v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v2}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-class v3, Lcom/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v2, v3, v1}, Lcom/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v2

    goto :goto_0
.end method

.method private showNormalUmlautPopup(I)Z
    .locals 8

    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->getKeyFromKeycode(I)Lcom/ime/framework/view/Keyboard$Key;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {v3}, Lcom/ime/framework/view/KeboardKeyInfo;->clone(Lcom/ime/framework/view/Keyboard$Key;)Lcom/ime/framework/view/KeboardKeyInfo;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->getCurrentKeyUmlautString(Lcom/ime/framework/view/KeboardKeyInfo;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    invoke-interface {v6}, Lcom/ime/framework/common/ShiftStateController;->getLetterMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xdf

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v5

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const-class v7, Lcom/ime/implement/input/umlaut/HwUmlautPopup;

    invoke-interface {v6, v7, v2}, Lcom/ime/framework/common/InputManager;->startHwLongPressPopup(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private showOneHandedGuideDialog()V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v5, "first_one_handed_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "first_trace_execution"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v5, v6, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    if-ne v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSystemOneHandOperationSettingValue()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->showOneHandedGuideDialog()V

    :cond_2
    return-void
.end method

.method private showPenDetectionGuideDialog()V
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_pen_detection_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_PEN_DETECTION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->showPenDetectionGuideDialog()V

    :cond_0
    return-void
.end method

.method private showPinchZoomGuideDialog()V
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_pinch_zoom_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->showPinchZoomGuideDialog()V

    :cond_0
    return-void
.end method

.method private showSwiftkeyGuideDialog()V
    .locals 4

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_swiftkey_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->showSwiftkeyGuideDialog()V

    :cond_0
    return-void
.end method

.method private showTraceGuideDialog()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "first_trace_execution"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "ENABLE_TRACE_POPUP_GUIDE"

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "SETTINGS_DEFAULT_TRACE"

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->showTraceGuideDialog()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelUpdateSuggestionDelay()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->cancelUpdateSuggestionDelay()V

    return-void
.end method

.method public changeToBSTHwrMode()V
    .locals 10

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->setAvailableHWRLanguage()V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v0}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_1
    :goto_0
    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-static {v0}, Lcom/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    if-ne v0, v7, :cond_7

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_1
    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v2, v3, v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    :cond_5
    iput-boolean v9, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v5

    if-eq v5, v6, :cond_1

    invoke-static {v0}, Lcom/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    goto :goto_0

    :cond_7
    if-ne v0, v6, :cond_8

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_2
.end method

.method public changeToDragonVoiceMode()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v1, v3}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v1, :cond_0

    const-string v1, "SamsungIME"

    const-string v2, "mInputManager is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "SamsungIME"

    const-string v2, "Clean Up the bitmap buffer of AbsKeyboardView."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->cleanUpResources()V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, v3}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1, v3}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto :goto_0
.end method

.method public changeToEmoticonMode()V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v6, v8}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v6, :cond_1

    const-string v6, "SamsungIME"

    const-string v7, "mInputManager is null !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, "SamsungIME"

    const-string v7, "Clean Up the bitmap buffer of AbsKeyboardView."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->cleanUpResources()V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->initHwrPanelWithVOHWRResource()V

    :cond_2
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9, v9}, Lcom/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    :goto_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWordStartInputViewContinue()Z

    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Emoticon mInputManager.getUniversalSwitchMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v1

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v3}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9, v9}, Lcom/ime/framework/common/InputManager;->setHwrCandidateStatus(IZ)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateVOHWRSuggestion()V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v2, v0, v4, v9}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v5

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_1

    :cond_5
    const/16 v6, 0x8

    if-ne v0, v6, :cond_7

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_6
    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v9}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1
.end method

.method public changeToFloatingKeyboardMode()V
    .locals 9

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/16 v0, 0x8

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    iput-boolean v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWordStartInputViewContinue()Z

    :cond_1
    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_5
    invoke-static {v8}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/ime/framework/common/Language;)V

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public changeToFullLandMode()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "is_full_land_mode"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/ime/framework/common/AbstractInputMethod;->changeFullInputMethod(Z)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_1

    :goto_1
    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->setFullLandMode(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public changeToFullWidthSwitchMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->setFullWidthMode(Z)V

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->updatePredictionSettingAndEngine()V

    return-void
.end method

.method public changeToHwrMode()V
    .locals 10

    const/16 v7, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setIsHwPhonepad(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->setAvailableHWRLanguage()V

    :cond_0
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v0}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    :cond_1
    invoke-static {v9}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    invoke-static {v0}, Lcom/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    if-ne v0, v7, :cond_6

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v7}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    const/4 v5, 0x7

    if-eq v0, v5, :cond_2

    if-ne v0, v7, :cond_4

    :cond_2
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v5}, Lcom/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v2, v3, v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    :cond_5
    iput-boolean v9, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v9}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public changeToKeyboardMode()V
    .locals 11

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, v8, :cond_2

    :cond_1
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    :cond_2
    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    iget-boolean v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWord()Z

    :cond_3
    :goto_1
    iput-boolean v10, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWordStartInputViewContinue()Z

    :cond_4
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_5
    return-void

    :cond_6
    if-ne v4, v9, :cond_7

    move v0, v4

    :goto_2
    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnabledMagnification()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_b
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_c

    if-ne v4, v9, :cond_e

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    :cond_c
    :goto_3
    iget-boolean v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isKorSeperatlyInputMethod()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v1

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-nez v7, :cond_d

    if-nez v1, :cond_f

    const/4 v0, 0x0

    :cond_d
    :goto_4
    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v8}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_3

    :cond_f
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public changeToNormalKeyboardMode()V
    .locals 11

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v4

    const/4 v0, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->isHwrMode()Z

    move-result v1

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    if-eqz v1, :cond_5

    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getPrevInputMethod()I

    move-result v7

    if-ne v7, v8, :cond_4

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    :cond_0
    iput-boolean v9, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    :goto_1
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWordStartInputViewContinue()Z

    :cond_1
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_2
    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    goto :goto_0

    :cond_5
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iput-boolean v10, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v4}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getHwrPreviousInputMethod()I

    move-result v0

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v0}, Lcom/ime/framework/inputmode/InputModeManager;->isPopupInputMethod(I)Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v0

    :cond_7
    if-eqz v0, :cond_8

    if-ne v0, v9, :cond_9

    :cond_8
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    :cond_9
    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v8, "INPUT_LANGUAGE"

    const/high16 v9, 0x656e0000

    invoke-interface {v7, v8, v9}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v5

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v2, v3, v5, v10}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v6

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v8, v6, v10

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    iget-boolean v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWord()Z

    :cond_a
    iput-boolean v10, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_1

    :cond_b
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_c
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x8

    if-ne v4, v7, :cond_10

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setFloatingToQwertyTransition(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentKeypadType()I

    move-result v0

    :cond_d
    :goto_2
    invoke-static {v10}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v7, v9}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/ime/framework/common/Language;)V

    :cond_e
    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8, v9}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/ime/framework/common/InputManager;->setCandidateView(Landroid/view/View;)V

    invoke-static {}, Lcom/ime/framework/repository/PropertyItems;->isEnableDefaultCandidateview()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7, v10}, Lcom/ime/framework/common/InputManager;->setCandidateviewStatus(I)V

    :cond_f
    invoke-static {v0}, Lcom/ime/framework/repository/InputModeStatus;->setHwrPreviousInputMethod(I)V

    iput-boolean v10, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v0

    goto :goto_2
.end method

.method public changeToSplitKeyboardMode()V
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v2

    const/4 v0, 0x7

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    invoke-static {v8}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setHanjaStaus(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isSupportFloatingHandWriting()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    :goto_0
    iget-boolean v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWord()Z

    :cond_0
    iput-boolean v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v8}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWordStartInputViewContinue()Z

    :cond_1
    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/sidesync/SideSyncManager;->isSideSyncWorkingOnSink()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/ime/framework/sidesync/SideSyncManager;->getInstance()Lcom/ime/framework/sidesync/SideSyncManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/ime/framework/sidesync/SideSyncManager;->setGuestInputMode(I)V

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v2}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "INPUT_LANGUAGE"

    const/high16 v7, 0x656e0000

    invoke-interface {v5, v6, v7}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5, v1, v0, v3, v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidRanges(IIIZ)[I

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    aget v6, v4, v8

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputRange(I)V

    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->showDlgMsgBox()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_5
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5, v0}, Lcom/ime/framework/common/InputManager;->setInputMethod(I)V

    iget-boolean v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/ime/framework/inputmode/InputModeManager;->checkAndChangeInputMethod(Lcom/ime/framework/common/Language;)V

    :cond_6
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/ime/framework/common/InputManager;->setInputView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_0
.end method

.method public endMultitapTimer()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    return-void
.end method

.method protected getCurrentInputEngineIndex(III)I
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x2

    const/high16 v8, 0x6b6f0000

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "XT9_VERSION"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v4, :cond_9

    if-eqz p1, :cond_0

    if-eq p1, v10, :cond_0

    if-ne p1, v7, :cond_5

    :cond_0
    if-ne p1, v7, :cond_2

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x5

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-ne p1, v7, :cond_4

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    if-ne p3, v8, :cond_3

    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v1, 0x5

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v4

    if-eqz v4, :cond_8

    if-ne p3, v8, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :cond_9
    if-lt v0, v9, :cond_17

    if-eqz p1, :cond_a

    if-eq p1, v10, :cond_a

    if-ne p1, v7, :cond_13

    :cond_a
    if-ne p1, v7, :cond_d

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_1
    if-eqz v2, :cond_c

    const/4 v1, 0x6

    goto :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    :cond_c
    const/4 v1, 0x5

    goto :goto_0

    :cond_d
    if-ne p3, v8, :cond_12

    iget-boolean v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    if-eq v3, v2, :cond_e

    if-eq v3, v9, :cond_e

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    const/4 v4, 0x4

    if-ne v3, v4, :cond_f

    :cond_e
    const/4 v1, 0x1

    goto :goto_0

    :cond_f
    if-nez v3, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_10
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v4

    if-ne v4, v2, :cond_11

    if-eqz p1, :cond_11

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_12
    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_13
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_14
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v4

    if-eqz v4, :cond_16

    if-ne p3, v8, :cond_15

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_15
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_16
    if-ne p1, v2, :cond_1

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_17
    if-eqz p1, :cond_18

    if-eq p1, v10, :cond_18

    if-ne p1, v7, :cond_1f

    :cond_18
    if-ne p1, v7, :cond_19

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingHWRKeyboard()Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_19
    if-ne p3, v8, :cond_1e

    iget-boolean v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    if-eq v3, v2, :cond_1a

    if-eq v3, v9, :cond_1a

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1a

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1b
    if-nez v3, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1c
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v4

    if-ne v4, v2, :cond_1d

    if-eqz p1, :cond_1d

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_1d
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_1f
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v1, 0x5

    goto/16 :goto_0

    :cond_20
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v4

    if-eqz v4, :cond_22

    if-ne p3, v8, :cond_21

    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_21
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_22
    if-ne p1, v2, :cond_1

    if-ne p3, v8, :cond_23

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected getCurrentInputModuleIndex(III)I
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x3

    const/4 v2, 0x0

    const/high16 v8, 0x6b6f0000

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethod()I

    move-result v4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "XT9_VERSION"

    invoke-interface {v6, v7, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x4

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->setTraceStatus()V

    return v1

    :cond_1
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v5, v6, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingNumberInputKeyboardForMultiWindow()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    if-ne p3, v8, :cond_5

    const/16 v1, 0xe

    goto :goto_0

    :cond_5
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v1, 0xf

    goto :goto_0

    :cond_6
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v1, 0x1b

    goto :goto_0

    :cond_7
    const/16 v1, 0xd

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    const/4 v6, 0x7

    if-eq p1, v6, :cond_9

    if-ne p1, v10, :cond_13

    :cond_9
    if-ne p3, v8, :cond_f

    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    if-eq v3, v5, :cond_a

    const/4 v5, 0x2

    if-eq v3, v5, :cond_a

    if-eq v3, v9, :cond_a

    const/4 v5, 0x4

    if-ne v3, v5, :cond_b

    :cond_a
    const/16 v1, 0xe

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :cond_b
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v1, 0xa

    goto :goto_0

    :cond_c
    const/16 v1, 0xb

    goto :goto_0

    :cond_d
    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    if-eqz v6, :cond_e

    if-nez v4, :cond_e

    if-ne p1, v10, :cond_e

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/common/Language;->getInputMethodSubtype()I

    move-result v6

    if-ne v6, v5, :cond_e

    const/16 v1, 0xe

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xb

    goto/16 :goto_0

    :cond_f
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_10

    const/16 v1, 0xc

    goto/16 :goto_0

    :cond_10
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/16 v1, 0x10

    goto/16 :goto_0

    :cond_11
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_12

    const/16 v1, 0x1a

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xa

    goto/16 :goto_0

    :cond_13
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v5, v6, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_14

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_14
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_15
    if-ne p1, v5, :cond_0

    if-ne p3, v8, :cond_16

    const/16 v1, 0xe

    goto/16 :goto_0

    :cond_16
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v1, 0xf

    goto/16 :goto_0

    :cond_17
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v1, 0x1b

    goto/16 :goto_0

    :cond_18
    const/16 v1, 0xd

    goto/16 :goto_0

    :cond_19
    const/4 v6, 0x2

    if-lt v0, v6, :cond_33

    if-eqz p1, :cond_1a

    const/4 v6, 0x7

    if-eq p1, v6, :cond_1a

    if-ne p1, v10, :cond_2c

    :cond_1a
    if-ne p1, v10, :cond_1b

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v6

    if-eqz v6, :cond_1b

    move v2, v5

    :cond_1b
    if-ne p3, v8, :cond_23

    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    if-eq v3, v5, :cond_1c

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1c

    if-eq v3, v9, :cond_1c

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1d

    :cond_1c
    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_1d
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v1, 0x13

    goto/16 :goto_0

    :cond_1e
    if-eqz v2, :cond_1f

    const/16 v1, 0x1e

    goto/16 :goto_0

    :cond_1f
    const/16 v1, 0x14

    goto/16 :goto_0

    :cond_20
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v6

    if-ne v6, v5, :cond_21

    if-eqz p1, :cond_21

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-nez v5, :cond_21

    const/16 v1, 0x17

    goto/16 :goto_0

    :cond_21
    if-eqz v2, :cond_22

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-nez v5, :cond_22

    const/16 v1, 0x1e

    goto/16 :goto_0

    :cond_22
    const/16 v1, 0x14

    goto/16 :goto_0

    :cond_23
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_24

    const/16 v1, 0x18

    goto/16 :goto_0

    :cond_24
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_25

    const/16 v1, 0x1d

    goto/16 :goto_0

    :cond_25
    const/16 v1, 0x16

    goto/16 :goto_0

    :cond_26
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_28

    if-eqz v2, :cond_27

    const/16 v1, 0x1e

    goto/16 :goto_0

    :cond_27
    const/16 v1, 0x15

    goto/16 :goto_0

    :cond_28
    if-lt v0, v9, :cond_29

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_29

    const/16 v1, 0x1c

    goto/16 :goto_0

    :cond_29
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v1, 0x19

    goto/16 :goto_0

    :cond_2a
    if-eqz v2, :cond_2b

    const/16 v1, 0x1e

    goto/16 :goto_0

    :cond_2b
    const/16 v1, 0x13

    goto/16 :goto_0

    :cond_2c
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v5

    if-eqz v5, :cond_2d

    const/16 v1, 0x1e

    goto/16 :goto_0

    :cond_2d
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v5, v6, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2e

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_2e
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_2f
    if-ne p1, v5, :cond_0

    if-ne p3, v8, :cond_30

    const/16 v1, 0x17

    goto/16 :goto_0

    :cond_30
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_31

    const/16 v1, 0x18

    goto/16 :goto_0

    :cond_31
    if-lt v0, v9, :cond_32

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v5

    if-eqz v5, :cond_32

    const/16 v1, 0x1d

    goto/16 :goto_0

    :cond_32
    const/16 v1, 0x16

    goto/16 :goto_0

    :cond_33
    if-eqz p1, :cond_34

    const/4 v6, 0x7

    if-eq p1, v6, :cond_34

    if-ne p1, v10, :cond_3f

    :cond_34
    if-ne p3, v8, :cond_3a

    iget-boolean v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    if-eqz v6, :cond_38

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v6

    if-nez v6, :cond_38

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getInputMethodOnKor()I

    move-result v3

    if-eq v3, v5, :cond_35

    const/4 v5, 0x2

    if-eq v3, v5, :cond_35

    if-eq v3, v9, :cond_35

    const/4 v5, 0x4

    if-ne v3, v5, :cond_36

    :cond_35
    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_36
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isKorPasswordMode()Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_37
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_38
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v6

    if-ne v6, v5, :cond_39

    if-eqz p1, :cond_39

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/ime/framework/common/InputManager;->isHWKeyboardConnected()Z

    move-result v5

    if-nez v5, :cond_39

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_39
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3a
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v5}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v5

    if-eqz v5, :cond_3c

    const v5, 0x7a68434e

    if-ne p3, v5, :cond_3b

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_3b
    const/4 v1, 0x7

    goto/16 :goto_0

    :cond_3c
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_3d
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v1, 0x9

    goto/16 :goto_0

    :cond_3e
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3f
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v6, p1}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode(I)Z

    move-result v6

    if-eqz v6, :cond_41

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v6, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    invoke-interface {v5, v6, v2}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_40

    const/4 v1, 0x4

    goto/16 :goto_0

    :cond_40
    const/4 v1, 0x3

    goto/16 :goto_0

    :cond_41
    if-ne p1, v5, :cond_0

    if-ne p3, v8, :cond_42

    const/4 v1, 0x6

    goto/16 :goto_0

    :cond_42
    invoke-static {p3}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v5

    if-eqz v5, :cond_43

    const/16 v1, 0x8

    goto/16 :goto_0

    :cond_43
    const/4 v1, 0x7

    goto/16 :goto_0
.end method

.method protected getDWPEngineIndex()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHWInputEngineIndex(I)I
    .locals 5

    iget-boolean v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v3, "XT9_VERSION"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getHWInputModuleIndex(I)I
    .locals 5

    const/high16 v4, 0x6b6f0000

    iget-boolean v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_4

    if-ne p1, v4, :cond_0

    const/16 v0, 0xb

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x10

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isJapaneseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x1a

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v2, "XT9_VERSION"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_8

    if-ne p1, v4, :cond_5

    const/16 v0, 0x14

    goto :goto_0

    :cond_5
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x19

    goto :goto_0

    :cond_7
    const/16 v0, 0x13

    goto :goto_0

    :cond_8
    if-ne p1, v4, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isChineseLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x2

    goto :goto_0

    :cond_a
    invoke-static {p1}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0x9

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHwrCandidateStatus()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getHwrCandidateStatus()I

    move-result v0

    return v0
.end method

.method public getSelectedWord()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->getSelectedWord()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundEffectController()Lcom/ime/framework/effect/SoundEffectController;
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/ime/framework/effect/SoundEffectController;

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ime/implement/effect/HapticSoundEffectController;

    invoke-direct {v0}, Lcom/ime/implement/effect/HapticSoundEffectController;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/ime/framework/effect/SoundEffectController;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/ime/framework/effect/SoundEffectController;

    return-object v0

    :cond_1
    new-instance v0, Lcom/ime/implement/effect/DefaultSoundEffectController;

    invoke-direct {v0}, Lcom/ime/implement/effect/DefaultSoundEffectController;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mSoundEffectController:Lcom/ime/framework/effect/SoundEffectController;

    goto :goto_0
.end method

.method public getVibrateController()Lcom/ime/framework/effect/VibrateController;
    .locals 2

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/ime/framework/effect/VibrateController;

    if-nez v0, :cond_0

    const-string v0, ""

    const-string v1, "HAPTIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/ime/implement/effect/HapticVibrateController;

    invoke-direct {v0}, Lcom/ime/implement/effect/HapticVibrateController;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/ime/framework/effect/VibrateController;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/ime/framework/effect/VibrateController;

    return-object v0

    :cond_1
    new-instance v0, Lcom/ime/implement/effect/DefaultVibrateController;

    invoke-direct {v0}, Lcom/ime/implement/effect/DefaultVibrateController;-><init>()V

    iput-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mVibrateController:Lcom/ime/framework/effect/VibrateController;

    goto :goto_0
.end method

.method protected getVietValidVowelsString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXt9Version()I
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/ime/framework/engine/InputEngineManager;->getXt9Version()I

    move-result v0

    return v0
.end method

.method public handleRangeChange(ZZ)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->isLastActionIsTraceOrPick()Z

    move-result v1

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p2}, Lcom/ime/framework/inputmode/InputModeManager;->getNextInputRange(Z)I

    move-result v2

    :goto_0
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, v2}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->updateValidInputMethod()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ime/implement/input/InputControllerImpl;->isNeedToUpdateInpuModueWithLanguage(Lcom/ime/framework/common/Language;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->setUpByPickSuggestion()V

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3, v5}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    iget-boolean v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5}, Lcom/ime/implement/input/InputControllerImpl;->changeToFullWidthSwitchMode(Z)V

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v3, p2}, Lcom/ime/framework/inputmode/InputModeManager;->getPreviousInputRange(Z)I

    move-result v2

    goto :goto_0
.end method

.method protected initInputEngine()V
    .locals 3

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/ime/implement/input/InputControllerImpl;->createInputEngineArray(I)Z

    iget-boolean v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v2, :cond_0

    new-instance v1, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;

    invoke-direct {v1}, Lcom/ime/framework/engine/swiftkey/SwiftkeyWrapper;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1, v1}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->initializeEngineAndInputModule()Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;

    invoke-direct {v0}, Lcom/ime/framework/engine/bsthwr/BstHwrWrapper;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v0}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->setXt9InputEngine()Lcom/ime/framework/engine/InputEngine;

    goto :goto_0
.end method

.method protected initInputModule()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/16 v1, 0x1f

    invoke-virtual {p0, v1}, Lcom/ime/implement/input/InputControllerImpl;->createInputModuleArray(I)Z

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    iget-boolean v1, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    new-instance v2, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyQwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0xb

    new-instance v2, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyQwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0xc

    new-instance v2, Lcom/ime/framework/input/SwiftkeyQwertyChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyQwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x10

    new-instance v2, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyQwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x1a

    new-instance v2, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyQwertyJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0xd

    new-instance v2, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0xe

    new-instance v2, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0xf

    new-instance v2, Lcom/ime/framework/input/SwiftkeyPhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyPhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x1b

    new-instance v2, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyPhonepadJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x11

    new-instance v2, Lcom/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x12

    new-instance v2, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/SwiftkeyHwPhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->updateHwrInputModule()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/ime/implement/input/InputControllerImpl;->getXT9VerFromSecProductFeature()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    new-instance v2, Lcom/ime/framework/input/QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/4 v1, 0x1

    new-instance v2, Lcom/ime/framework/input/QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/4 v1, 0x2

    new-instance v2, Lcom/ime/framework/input/QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x9

    new-instance v2, Lcom/ime/framework/input/QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    new-instance v1, Lcom/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v4, v1}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/4 v1, 0x7

    new-instance v2, Lcom/ime/framework/input/PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x8

    new-instance v2, Lcom/ime/framework/input/PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x13

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9QwertyLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x14

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9QwertyKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x15

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9QwertyChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x19

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9QwertyIndianInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    if-lt v0, v3, :cond_3

    const/16 v1, 0x1c

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9QwertyJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    :cond_3
    new-instance v1, Lcom/ime/framework/input/PhonepadKoreanInputModule;

    invoke-direct {v1}, Lcom/ime/framework/input/PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v4, v1}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x16

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadLatinInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x17

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadKoreanInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/16 v1, 0x18

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    if-lt v0, v3, :cond_0

    const/16 v1, 0x1d

    new-instance v2, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;

    invoke-direct {v2}, Lcom/ime/framework/input/xt9/Xt9PhonepadJapaneseInputModule;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    goto/16 :goto_0
.end method

.method public initializeEngineAndInputModule()Z
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v16, "VOHWRPANEL"

    const-string v17, "VOHWRPANEL"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    const/16 v17, 0x5

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v14

    if-eqz v14, :cond_4

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_0

    const-string v16, "SamsungIME_HWR"

    const-string v17, "initializeEngineAndInputModule VO Engine already loaded"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v16, 0x0

    :goto_0
    return v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    const/16 v17, 0x3

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v4

    if-nez v3, :cond_2

    if-eqz v4, :cond_4

    :cond_2
    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_3

    const-string v16, "SamsungIME_HWR"

    const-string v17, "initializeEngineAndInputModule DHWR Engine already loaded"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v16, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v6

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_5

    const-string v16, "SamsungIME_HWR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initializeEngineAndInputModule swiftkey: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isUseVOHWRPanel()Z

    move-result v16

    if-eqz v16, :cond_7

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_6

    const-string v16, "SamsungIME_HWR"

    const-string v17, "initializeEngineAndInputModule isUseVOHWRPanel"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v7, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;

    invoke-direct {v7}, Lcom/ime/framework/engine/vohwr/VOHWRWrapper;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isSmartPrediction()Z

    move-result v16

    if-eqz v16, :cond_9

    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7, v6}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngine(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    :cond_7
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v16, "SamsungIME_HWR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DynamicHwrLoadPerf, InitHwrLib time = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v10, v8

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/ime/framework/common/InputManager;->isNeedToLoadHwrLibrary()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->setAvailableHWRLanguage()V

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v16, "SamsungIME_HWR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DynamicHwrLoadPerf, setAvailableHWRLanguage time = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sub-long v18, v12, v10

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ms"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v16, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7, v7}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    goto :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-interface/range {v16 .. v17}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->getXt9InputEngine()Lcom/ime/framework/engine/InputEngine;

    move-result-object v15

    sget-boolean v16, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v16, :cond_7

    const-string v16, "SamsungIME_HWR"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initializeEngineAndInputModule dwp: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " xt9: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public isEmojiLMLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->isEmojiLMLoaded()Z

    move-result v0

    return v0
.end method

.method public isFullWidthMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    return v0
.end method

.method protected isFunctionKey(I)Z
    .locals 10

    const/high16 v9, 0x6b6d0000

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    :sswitch_0
    return v4

    :sswitch_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseSpellText()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v2, :cond_1

    move v4, v5

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v7, "INPUT_LANGUAGE"

    const/high16 v8, 0x656e0000

    invoke-interface {v6, v7, v8}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v0

    const/high16 v6, 0x74680000

    if-eq v0, v6, :cond_2

    if-ne v0, v9, :cond_0

    :cond_2
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v1

    if-nez v3, :cond_0

    if-eqz v1, :cond_1

    if-eq v0, v9, :cond_1

    move v4, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x45a -> :sswitch_0
        -0x3f7 -> :sswitch_0
        -0x3f6 -> :sswitch_0
        -0x3f5 -> :sswitch_0
        -0x3f4 -> :sswitch_0
        -0x3f3 -> :sswitch_0
        -0x3f2 -> :sswitch_0
        -0x3f0 -> :sswitch_0
        -0x3ef -> :sswitch_0
        -0x3ee -> :sswitch_0
        -0x3ed -> :sswitch_0
        -0x3ec -> :sswitch_0
        -0x3ea -> :sswitch_0
        -0x3e9 -> :sswitch_0
        -0x3e8 -> :sswitch_0
        -0x3df -> :sswitch_0
        -0x3de -> :sswitch_0
        -0x3dd -> :sswitch_0
        -0x3dc -> :sswitch_0
        -0x3db -> :sswitch_0
        -0x258 -> :sswitch_0
        -0x1f4 -> :sswitch_0
        -0x1f3 -> :sswitch_0
        -0x1f2 -> :sswitch_0
        -0x1f1 -> :sswitch_0
        -0x1f0 -> :sswitch_0
        -0x19a -> :sswitch_0
        -0x195 -> :sswitch_0
        -0x194 -> :sswitch_0
        -0x193 -> :sswitch_0
        -0x192 -> :sswitch_0
        -0x191 -> :sswitch_0
        -0x190 -> :sswitch_0
        -0x14a -> :sswitch_0
        -0x149 -> :sswitch_0
        -0x148 -> :sswitch_0
        -0x147 -> :sswitch_0
        -0x146 -> :sswitch_0
        -0x145 -> :sswitch_0
        -0x144 -> :sswitch_0
        -0x143 -> :sswitch_0
        -0x142 -> :sswitch_0
        -0x141 -> :sswitch_0
        -0x138 -> :sswitch_0
        -0x137 -> :sswitch_0
        -0x136 -> :sswitch_0
        -0x106 -> :sswitch_0
        -0x105 -> :sswitch_0
        -0x104 -> :sswitch_0
        -0xe5 -> :sswitch_0
        -0xe4 -> :sswitch_0
        -0xe2 -> :sswitch_0
        -0xe1 -> :sswitch_0
        -0xe0 -> :sswitch_0
        -0xd1 -> :sswitch_0
        -0xd0 -> :sswitch_0
        -0xbe -> :sswitch_0
        -0xa6 -> :sswitch_0
        -0xa5 -> :sswitch_0
        -0xa4 -> :sswitch_0
        -0xa3 -> :sswitch_0
        -0xa2 -> :sswitch_0
        -0xa1 -> :sswitch_0
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x8a -> :sswitch_0
        -0x89 -> :sswitch_0
        -0x88 -> :sswitch_0
        -0x87 -> :sswitch_0
        -0x86 -> :sswitch_0
        -0x85 -> :sswitch_0
        -0x84 -> :sswitch_0
        -0x83 -> :sswitch_0
        -0x81 -> :sswitch_0
        -0x80 -> :sswitch_0
        -0x7f -> :sswitch_0
        -0x7d -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x7a -> :sswitch_1
        -0x79 -> :sswitch_0
        -0x78 -> :sswitch_0
        -0x77 -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x75 -> :sswitch_0
        -0x70 -> :sswitch_0
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_0
        -0x6d -> :sswitch_0
        -0x6c -> :sswitch_0
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x65 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x3e -> :sswitch_0
        -0x3c -> :sswitch_0
        -0x3b -> :sswitch_0
        -0x3a -> :sswitch_2
    .end sparse-switch
.end method

.method public isHandWritingHasBoonUsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return v0
.end method

.method public onLongPressHwKey(I)Z
    .locals 7

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const/high16 v6, 0x656e0000

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->showNordicUmlautPopup(I)Z

    move-result v4

    :goto_0
    return v4

    :cond_0
    invoke-static {v1}, Lcom/ime/framework/util/Utils;->getCurrentLanguageScriptType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->showCyrillicUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ime/implement/input/InputControllerImpl;->showNormalUmlautPopup(I)Z

    move-result v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected processFunctionKey(I)V
    .locals 68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x656e0000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "XT9_VERSION"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v4

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputMethodStatus()I

    move-result v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    const/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v64, v0

    move/from16 v0, v64

    and-int/lit16 v0, v0, 0xff0

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v64

    if-eqz v64, :cond_4

    const/16 v46, 0x7000

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_3

    const/16 v64, -0x3df

    move/from16 v0, p1

    move/from16 v1, v64

    if-eq v0, v1, :cond_1

    const/16 v64, -0x66

    move/from16 v0, p1

    move/from16 v1, v64

    if-eq v0, v1, :cond_1

    const/16 v64, -0x3dd

    move/from16 v0, p1

    move/from16 v1, v64

    if-eq v0, v1, :cond_1

    const/16 v64, -0x3de

    move/from16 v0, p1

    move/from16 v1, v64

    if-ne v0, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setToolbarVisibility(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v64

    const v65, 0x7a68434e

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_b6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v64

    if-nez v64, :cond_b6

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/InputModeStatus;->setIsNumInputMode(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsNumInputmodeBy123Key(Z)V

    sget-object v64, Lcom/ime/framework/input/xt9/Xt9PhonepadChineseInputModule;->mNumCandidate:Ljava/lang/StringBuilder;

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/16 v46, 0x0

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-eqz v64, :cond_5

    const/16 v64, -0x3e9

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto/16 :goto_1

    :cond_5
    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->isEmpty()Z

    move-result v64

    if-eqz v64, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v64, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setProdictionWord(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x15

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x1f4

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto/16 :goto_1

    :cond_6
    const/16 v64, 0x3

    move/from16 v0, v64

    if-lt v4, v0, :cond_9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v64

    if-nez v64, :cond_8

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorDir(I)V

    const/16 v64, 0x1

    const/16 v65, -0x1

    invoke-static/range {v64 .. v65}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    :cond_8
    const/16 v64, 0x1

    const/16 v65, -0x1

    invoke-static/range {v64 .. v65}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    const/16 v64, 0x2

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorDir(I)V

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor(I)I

    move-result v64

    if-nez v64, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v64

    if-nez v64, :cond_a

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_a
    const/16 v64, 0x1

    const/16 v65, -0x1

    invoke-static/range {v64 .. v65}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getBlockCursor()I

    move-result v64

    if-nez v64, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-eqz v64, :cond_b

    const/16 v64, -0x3ea

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto/16 :goto_1

    :cond_b
    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->isEmpty()Z

    move-result v64

    if-eqz v64, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startSuggestionDelay()V

    const/16 v64, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setProdictionWord(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x16

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x1f4

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/input/InputModule;->postUpdateSequenceAndSuggestionDelayForRecapture(I)V

    goto/16 :goto_1

    :cond_c
    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v9

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/String;->length()I

    move-result v64

    move/from16 v0, v64

    if-ne v9, v0, :cond_d

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/input/InputModule;->updateSuggestionDelay()V

    goto/16 :goto_1

    :cond_d
    const/16 v64, 0x3

    move/from16 v0, v64

    if-lt v4, v0, :cond_f

    if-nez v9, :cond_e

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorDir(I)V

    :cond_e
    const/16 v64, 0x1

    const/16 v65, 0x1

    invoke-static/range {v64 .. v65}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    const/16 v64, 0x3

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorDir(I)V

    goto :goto_4

    :cond_f
    if-nez v9, :cond_10

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_10
    const/16 v64, 0x1

    const/16 v65, 0x1

    invoke-static/range {v64 .. v65}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->moveCursor(II)I

    goto :goto_4

    :sswitch_3
    const/high16 v64, 0x74610000

    move/from16 v0, v35

    move/from16 v1, v64

    if-eq v0, v1, :cond_14

    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v64

    if-nez v64, :cond_12

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    :cond_11
    :goto_5
    invoke-static {}, Lcom/ime/framework/input/IndianInputModule;->getInstance()Lcom/ime/framework/input/IndianInputModule;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x68690000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v64

    move-object/from16 v0, v44

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/framework/input/IndianInputModule;->setIndianLanguageHbScript(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleIndianLangToggle()V

    goto/16 :goto_1

    :cond_12
    sget-boolean v64, Lcom/ime/implement/input/InputControllerImpl;->UseMode3:Z

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_13

    sget-boolean v64, Lcom/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    if-nez v64, :cond_13

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    const/16 v64, 0x0

    sput-boolean v64, Lcom/ime/implement/input/InputControllerImpl;->UseMode3:Z

    goto :goto_5

    :cond_13
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v64

    if-eqz v64, :cond_11

    const/16 v64, 0x1

    sput-boolean v64, Lcom/ime/implement/input/InputControllerImpl;->UseMode3:Z

    const/16 v64, 0x0

    sput-boolean v64, Lcom/ime/framework/input/IndianInputModule;->changeFromThirdMode:Z

    goto :goto_5

    :cond_14
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianVoMatraAvailable()Z

    move-result v64

    if-nez v64, :cond_15

    const/16 v64, 0x1

    :goto_6
    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianVoMatraAvailable(Z)V

    goto :goto_5

    :cond_15
    const/16 v64, 0x0

    goto :goto_6

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    move-object/from16 v0, v64

    move/from16 v1, p1

    move-object/from16 v2, v65

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_16
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantAvailable()Z

    move-result v64

    if-nez v64, :cond_17

    const/16 v64, 0x1

    :goto_7
    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v64

    if-eqz v64, :cond_0

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    const/16 v64, 0x0

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantAvailable(Z)V

    goto/16 :goto_1

    :cond_17
    const/16 v64, 0x0

    goto :goto_7

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    move-object/from16 v0, v64

    move/from16 v1, p1

    move-object/from16 v2, v65

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_18
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->isToggleIndianConsonantLongpressAvailable()Z

    move-result v64

    if-nez v64, :cond_19

    const/16 v64, 0x1

    :goto_8
    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setToggleIndianConsonantLongpressAvailable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleIndianLangToggle()V

    goto/16 :goto_1

    :cond_19
    const/16 v64, 0x0

    goto :goto_8

    :sswitch_6
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v62

    add-int/lit8 v62, v62, -0x1

    const/16 v64, -0x1

    move/from16 v0, v62

    move/from16 v1, v64

    if-le v0, v1, :cond_0

    invoke-static/range {v62 .. v62}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleIndianVowelRowState()V

    goto/16 :goto_1

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    move-object/from16 v0, v64

    move/from16 v1, p1

    move-object/from16 v2, v65

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/input/InputModule;->onCharacterKey(I[I)V

    :cond_1a
    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->getVowelRowState()I

    move-result v63

    add-int/lit8 v63, v63, 0x1

    invoke-static {}, Lcom/ime/framework/repository/IndianInputStatus;->getVowelRowMax()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_0

    invoke-static/range {v63 .. v63}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowState(I)V

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/repository/IndianInputStatus;->setVowelRowShifted(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleIndianVowelRowState()V

    goto/16 :goto_1

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getAltPressedState()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->setAltPressedState(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/util/IndicatorManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/util/IndicatorManager;

    move-result-object v21

    const/16 v64, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/framework/util/IndicatorManager;->notifyForMobileKeyboard(I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShownMobileKeyboardPopup()Z

    move-result v64

    if-eqz v64, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v64

    const-string v65, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    if-eqz v64, :cond_1c

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v64

    if-nez v64, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    invoke-static {}, Lcom/ime/framework/repository/EditorStatus;->isDigitEditor()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->getCandidateView(Z)Landroid/view/View;

    move-result-object v64

    check-cast v64, Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateCandidates()V

    goto/16 :goto_1

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-class v65, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-class v65, Lcom/ime/implement/setting/HwrSettings;

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->showImePicker()V

    goto/16 :goto_1

    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->resetSymbolsPage()V

    goto/16 :goto_1

    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShownMobileKeyboardPopup()Z

    move-result v64

    if-nez v64, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v64

    move-wide/from16 v0, v64

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ime/implement/input/InputControllerImpl;->mMobileKDBShowTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardUmlautCandidate(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v64, "mobilekeyboard_need_empty_keyboard"

    const/16 v65, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    const/16 v64, 0x1

    const/16 v65, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    new-instance v17, Landroid/os/Handler;

    invoke-direct/range {v17 .. v17}, Landroid/os/Handler;-><init>()V

    new-instance v64, Lcom/ime/implement/input/InputControllerImpl$1;

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl$1;-><init>(Lcom/ime/implement/input/InputControllerImpl;)V

    const-wide/16 v66, 0x64

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    move-wide/from16 v2, v66

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_1e
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v64

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mMobileKDBShowTime:J

    move-wide/from16 v66, v0

    sub-long v64, v64, v66

    const-wide/32 v66, 0x989680

    div-long v10, v64, v66

    const-wide/16 v64, 0x0

    cmp-long v64, v10, v64

    if-lez v64, :cond_1f

    const-wide/16 v64, 0x1f4

    cmp-long v64, v10, v64

    if-gez v64, :cond_1f

    :try_start_0
    const-string v64, "SamsungIME_MKDB"

    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    const-string v66, "delay handle KEYCODE_RANGE_CHANGE. delayTime="

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-wide/16 v66, 0x1f4

    sub-long v66, v66, v10

    invoke-virtual/range {v65 .. v67}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-static/range {v64 .. v65}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v64, 0x1f4

    sub-long v64, v64, v10

    invoke-static/range {v64 .. v65}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v64

    if-eqz v64, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getHwrPreviousInputRange()I

    move-result v64

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_26

    if-eqz v20, :cond_21

    invoke-interface/range {v20 .. v20}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideHandwritingView()V

    :cond_22
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v64

    const-string v65, "SETTINGS_DEFAULT_PREDICTION_ON"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v64

    if-nez v64, :cond_28

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_24
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v64

    if-eqz v64, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    :catch_0
    move-exception v15

    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    :cond_25
    const/16 v64, 0x1

    const/16 v65, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_22

    if-eqz v20, :cond_27

    invoke-interface/range {v20 .. v20}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_22

    const/16 v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->VOHWRInitByCursorMove(I)V

    goto/16 :goto_b

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v64

    if-eqz v64, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_c

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_1

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v64

    if-eqz v64, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    :cond_2a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideHandwritingView()V

    goto/16 :goto_1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto :goto_d

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_1

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x2

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v64

    if-eqz v64, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    goto/16 :goto_1

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->breakContext()V

    goto/16 :goto_1

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v65, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSymbolLock()Z

    move-result v64

    if-nez v64, :cond_2d

    const/16 v64, 0x1

    :goto_e
    move-object/from16 v0, v65

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->SetSymbolLock(Z)V

    const/16 v58, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v58

    check-cast v58, Lcom/ime/framework/view/AbstractKeyboardView;

    :goto_f
    if-eqz v58, :cond_0

    invoke-virtual/range {v58 .. v58}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    if-eqz v64, :cond_0

    invoke-virtual/range {v58 .. v58}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->hide()V

    invoke-virtual/range {v58 .. v58}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->resetScroll()V

    invoke-virtual/range {v58 .. v58}, Lcom/ime/framework/view/AbstractKeyboardView;->updateAndShowSymbolScrollView()V

    goto/16 :goto_1

    :cond_2d
    const/16 v64, 0x0

    goto :goto_e

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v64

    const/16 v65, 0x8

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v58

    check-cast v58, Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_f

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v58

    check-cast v58, Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_f

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isEmoticonMode()Z

    move-result v64

    if-eqz v64, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getViewController()Lcom/ime/framework/view/ViewController;

    move-result-object v45

    if-eqz v45, :cond_30

    invoke-interface/range {v45 .. v45}, Lcom/ime/framework/view/ViewController;->clearEmoticonCacheView()V

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v64

    if-eqz v64, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v64

    if-nez v64, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->commitAndResetForHwr()V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_33

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToBSTHwrMode()V

    goto/16 :goto_1

    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :cond_34
    const/16 v64, 0x8

    move/from16 v0, v47

    move/from16 v1, v64

    if-ne v0, v1, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v64

    if-eqz v64, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v64

    if-nez v64, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->commitAndResetForHwr()V

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_0

    const/16 v64, -0x66

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->processFunctionKey(I)V

    goto/16 :goto_1

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x2

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    goto :goto_10

    :cond_38
    const/16 v64, 0x8

    move/from16 v0, v47

    move/from16 v1, v64

    if-ne v0, v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto :goto_11

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto :goto_11

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move/from16 v0, p1

    rsub-int v0, v0, -0x144

    move/from16 v65, v0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "EMOTICON_CURRENT_CATEGORY"

    move/from16 v0, p1

    rsub-int v0, v0, -0x144

    move/from16 v66, v0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getUniversalSwitchMode()Z

    move-result v64

    if-eqz v64, :cond_0

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v34

    const/16 v64, 0x5

    move-object/from16 v0, v34

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    goto/16 :goto_1

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_3a

    if-eqz v20, :cond_3a

    invoke-interface/range {v20 .. v20}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->clear()V

    :cond_3a
    if-nez v56, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->commitAndResetForHwr()V

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_3c

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setHwrPreviousInputRange(I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChangeToSym()V

    goto/16 :goto_1

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v64

    if-eqz v64, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->toggleLanguage(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/common/Language;->getId()I

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->updateLanguage(I)V

    goto/16 :goto_1

    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v64

    if-eqz v64, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputMode()Z

    move-result v64

    if-eqz v64, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v64

    const/16 v65, 0x8

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/engine/bsthwr/HWManager;->hideHandwritingView()V

    const/16 v64, 0x1

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/engine/bsthwr/HWManager;->setBoxFloatingStatus(Z)V

    :cond_3e
    :goto_12
    new-instance v59, Ljava/lang/Thread;

    new-instance v64, Lcom/ime/implement/input/InputControllerImpl$2;

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl$2;-><init>(Lcom/ime/implement/input/InputControllerImpl;)V

    move-object/from16 v0, v59

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v59 .. v59}, Ljava/lang/Thread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "SETTINGS_DEFAULT_HWR_RECOGNITION_TYPE"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v64

    if-nez v64, :cond_3f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->commitAndResetForHwr()V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_41

    if-eqz v54, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "SYMBOLS_PAGE"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setPrevInputMethod(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/engine/bsthwr/HWManager;->dismissHandwritingView()V

    goto/16 :goto_12

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v64

    if-eqz v64, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSelectedLanguageList()[Lcom/ime/framework/common/Language;

    move-result-object v64

    move-object/from16 v0, v64

    array-length v0, v0

    move/from16 v64, v0

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_3

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v64

    if-eqz v64, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsShuangPinMode(Z)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->toggleLanguage(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShowCMToolbar()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShowCMToolbar(Z)V

    goto/16 :goto_1

    :sswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleShiftLong()V

    goto/16 :goto_1

    :sswitch_18
    const/16 v64, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    goto/16 :goto_1

    :sswitch_19
    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->handleArrow(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isEnableRemoteController()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->createKeyMap()V

    goto/16 :goto_1

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPolicy()I

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v65, v0

    if-nez v25, :cond_44

    const/16 v64, 0x1

    :goto_13
    move-object/from16 v0, v65

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lcom/ime/framework/common/ShiftStateController;->setCapsLockState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->updateShiftState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    goto/16 :goto_1

    :cond_44
    const/16 v64, 0x0

    goto :goto_13

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    if-eqz v20, :cond_3

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    move/from16 v23, v0

    const/high16 v48, 0xc000000

    const v64, 0x400000ff    # 2.0000608f

    and-int v5, v23, v64

    const/16 v64, 0x6

    move/from16 v0, v64

    if-ne v5, v0, :cond_47

    const/16 v64, 0xa0

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_46

    const/16 v64, 0xd0

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_46

    const/16 v64, 0xe0

    move/from16 v0, v60

    move/from16 v1, v64

    if-ne v0, v1, :cond_47

    :cond_46
    const/16 v64, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_2

    :cond_47
    const/high16 v64, 0xc000000

    and-int v64, v64, v23

    if-nez v64, :cond_48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x3d

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->sendDownUpKeyEvents(I)V

    goto/16 :goto_2

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_49

    const/16 v64, 0x7

    move-object/from16 v0, v20

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_2

    :cond_49
    const/16 v64, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto/16 :goto_2

    :sswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :sswitch_1d
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->showLanguageSelectDialog()V

    goto/16 :goto_1

    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isQuickCangieMode()Z

    move-result v29

    if-eqz v29, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setQickCangjieMode(Z)V

    goto :goto_14

    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v64

    if-nez v64, :cond_4b

    const/16 v50, 0x1

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x656e0000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v64

    sparse-switch v64, :sswitch_data_1

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/ime/framework/inputmode/InputModeManager;->setChineseStrokeModeOn(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->predictionWord()Z

    goto/16 :goto_1

    :cond_4b
    const/16 v50, 0x0

    goto :goto_15

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "ZH_CN_STROKE_MODE_ON"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_16

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "ZH_HK_STROKE_MODE_ON"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_16

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "ZH_TW_STROKE_MODE_ON"

    move-object/from16 v0, v64

    move-object/from16 v1, v65

    move/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_16

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/dragon/android/voiceime/DragonTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_4c

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->checkVoiceLegalInforDialog()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->checkVoiceNetWorkDialog()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move-object/from16 v0, v64

    move/from16 v1, p1

    move-object/from16 v2, v65

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/common/InputManager;->isThisKeyEnable(ILjava/lang/CharSequence;)Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    if-eqz v64, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/input/InputModule;->finishComposing(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/input/InputModule;->initComposingBuffer()V

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_4e
    invoke-static {}, Lcom/ime/framework/repository/KeyboardStatus;->isPhoneticSpellLayout()Z

    move-result v64

    if-eqz v64, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isSpellViewShown()Z

    move-result v64

    if-eqz v64, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->updateSpellView(Ljava/lang/CharSequence;Z)V

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "CHINESE_PHONETIC_SPELL_LAYOUT_SHOWN"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v64

    if-eqz v64, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->setPhoneticSpellLayout(Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "CHINESE_PHONETIC_SELECT_SPELL_INDEX"

    const/16 v66, -0x1

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v64

    if-eqz v64, :cond_51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v64

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_51
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    goto/16 :goto_1

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v28

    if-eqz v28, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v65, v0

    if-nez v28, :cond_53

    const/16 v64, 0x1

    :goto_17
    move-object/from16 v0, v65

    move/from16 v1, v64

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setPridictionFlag(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->updateEngine()I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsKorMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_55

    const/high16 v64, 0x6b6f0000

    move/from16 v0, v35

    move/from16 v1, v64

    if-ne v0, v1, :cond_55

    const/16 v64, 0x1

    move/from16 v0, v47

    move/from16 v1, v64

    if-ne v0, v1, :cond_55

    const-string v65, "SETTINGS_DEFAULT_KOREAN_PREDICTION_ON"

    if-nez v28, :cond_54

    const/16 v64, 0x1

    :goto_18
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v64

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_53
    const/16 v64, 0x0

    goto :goto_17

    :cond_54
    const/16 v64, 0x0

    goto :goto_18

    :cond_55
    const-string v65, "SETTINGS_DEFAULT_FOREIGN_PREDICTION_ON"

    if-nez v28, :cond_56

    const/16 v64, 0x1

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    move/from16 v2, v64

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setBooleanToPreference(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_56
    const/16 v64, 0x0

    goto :goto_19

    :sswitch_27
    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->processMMKey(I)V

    goto/16 :goto_1

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Handwriting SIP"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const v66, 0x656e4742

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v39

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->isAvailableLanguage(I)Z

    move-result v64

    if-nez v64, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->showTipsHwrInstallGuideDialog()V

    goto/16 :goto_1

    :cond_57
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToHwrMode()V

    goto/16 :goto_1

    :sswitch_29
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_2a
    if-eqz v47, :cond_3

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToNormalKeyboardMode()V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v55

    const/16 v64, 0x3

    move/from16 v0, v55

    move/from16 v1, v64

    if-ne v0, v1, :cond_58

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "EMOTICON_CURRENT_CATEGORY"

    const/16 v66, 0x1

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    :cond_58
    const/16 v64, 0x4

    move/from16 v0, v55

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    goto/16 :goto_1

    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShownMobileKeyboardPopup()Z

    move-result v64

    if-eqz v64, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v52

    invoke-interface/range {v52 .. v52}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v64, "mobilekeyboard_need_empty_keyboard"

    const/16 v65, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move/from16 v2, v65

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-nez v64, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Voice Input"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v64

    invoke-static/range {v64 .. v64}, Lcom/dragon/android/voiceime/DragonTrigger;->isInstalled(Landroid/content/Context;)Z

    move-result v64

    if-eqz v64, :cond_5b

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->checkVoiceLegalInforDialog()Z

    move-result v26

    if-nez v26, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->checkVoiceNetWorkDialog()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->startVoiceListening()V

    goto/16 :goto_1

    :sswitch_2c
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-class v65, Lcom/sec/android/inputmethod/SamsungKeypadSettings;

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->openInputMethodSetting(Ljava/lang/Class;)V

    goto/16 :goto_1

    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Clipboard"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->handleClipBoardKey()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, -0x75

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    :sswitch_2e
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsTabletMode:Z

    move/from16 v64, v0

    if-nez v64, :cond_5e

    if-eqz v31, :cond_5c

    if-nez v30, :cond_5e

    :cond_5c
    const/16 v64, 0x8

    move/from16 v0, v47

    move/from16 v1, v64

    if-ne v0, v1, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/input/InputController;->changeToNormalKeyboardMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Normal SIP"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    goto/16 :goto_1

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v64

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/input/InputController;->changeToFloatingKeyboardMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Floating SIP"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x32

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->showModeChangePopupKeyboard(I)V

    goto/16 :goto_1

    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "OCR"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->handleOcrKey()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, -0x80

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->invalidateKey(I)V

    goto/16 :goto_1

    :sswitch_30
    const/16 v64, 0x8

    move/from16 v0, v47

    move/from16 v1, v64

    if-eq v0, v1, :cond_3

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getInputRange()I

    move-result v55

    const/16 v64, 0x3

    move/from16 v0, v55

    move/from16 v1, v64

    if-ne v0, v1, :cond_5f

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "EMOTICON_CURRENT_CATEGORY"

    const/16 v66, 0x1

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-interface {v0, v7}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    :cond_5f
    const/16 v64, 0x4

    move/from16 v0, v55

    move/from16 v1, v64

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    goto/16 :goto_1

    :sswitch_31
    const/16 v64, 0x7

    move/from16 v0, v47

    move/from16 v1, v64

    if-eq v0, v1, :cond_3

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToSplitKeyboardMode()V

    goto/16 :goto_1

    :sswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-nez v64, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S001"

    const-string v66, "Emoticon"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    :cond_60
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToEmoticonMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setEmoticonCategory(I)V

    goto/16 :goto_1

    :sswitch_33
    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->showHalfFullWidthSwitchDialog()V

    goto/16 :goto_1

    :sswitch_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_61

    const/16 v64, 0x22

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_61
    const/16 v64, 0x27

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_62

    const/16 v64, 0x3a

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_2

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_62
    const/16 v64, 0x3b

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_3

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_63

    const/16 v64, 0x5f

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_4

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_63
    const/16 v64, 0x2d

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_5

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_64

    const/16 v64, 0x3f

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_6

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_64
    const/16 v64, 0x3a

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_7

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const-string v65, "S00E"

    const-string v66, "Hanja"

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v47 .. v47}, Lcom/ime/framework/repository/InputModeStatus;->setMultiModalKeyInputMethod(I)V

    invoke-static/range {p1 .. p1}, Lcom/ime/framework/repository/InputModeStatus;->setLastUsedMmKeyCode(I)V

    const-string v64, "last_used_mm_key_code"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->setIntToPreference(Ljava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->SearchHanja()V

    goto/16 :goto_1

    :sswitch_39
    if-nez v32, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v64

    if-eqz v64, :cond_71

    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x656e0000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v37

    const/16 v33, 0x0

    const/16 v64, 0xd0

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_66

    const/16 v64, 0x20

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_66

    const/16 v64, 0x10

    move/from16 v0, v60

    move/from16 v1, v64

    if-ne v0, v1, :cond_67

    :cond_66
    const/16 v33, 0x1

    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_6c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->checkIfAutoCapsState()Z

    move-result v64

    if-eqz v64, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_6c

    :cond_68
    if-eqz v33, :cond_69

    const/16 v64, 0x5f

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_8

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_69
    invoke-static/range {v37 .. v37}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_6a

    const/16 v64, 0x21

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_9

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_6b

    const v64, 0xff01

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6b
    const/16 v64, 0x21

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_a

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_6d

    const v64, 0xff0c

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_6e

    const/16 v64, 0x3001

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6e
    if-eqz v33, :cond_6f

    const/16 v64, 0x2c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_b

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_6f
    invoke-static/range {v37 .. v37}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_70

    const/16 v64, 0x60c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_c

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_70
    const/16 v64, 0x2c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_d

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x656e0000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v37

    invoke-static/range {v37 .. v37}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_72

    const/16 v64, 0x60c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_e

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_73

    const v64, 0xff0c

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_73
    const/16 v64, 0x2c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_f

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_74

    const/16 v64, 0x55e

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_10

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_74
    const/16 v64, 0x3a

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_11

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_75

    const/16 v64, 0x7e

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_12

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_75
    const/16 v64, 0x2d

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_13

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_76

    const/16 v64, 0xab

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_14

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_76
    const/16 v64, 0x55c

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_15

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_77

    const/16 v64, 0xbb

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_16

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_77
    const/16 v64, 0x55d

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_17

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3e
    if-nez v32, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isDualLandMode()Z

    move-result v64

    if-eqz v64, :cond_88

    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "INPUT_LANGUAGE"

    const/high16 v66, 0x656e0000

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v38

    const/16 v33, 0x0

    const/16 v64, 0xd0

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_79

    const/16 v64, 0x20

    move/from16 v0, v60

    move/from16 v1, v64

    if-eq v0, v1, :cond_79

    const/16 v64, 0x10

    move/from16 v0, v60

    move/from16 v1, v64

    if-ne v0, v1, :cond_7a

    :cond_79
    const/16 v33, 0x1

    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getSymbolMode()Z

    move-result v64

    if-eqz v64, :cond_80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->checkIfAutoCapsState()Z

    move-result v64

    if-eqz v64, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_80

    :cond_7b
    if-eqz v33, :cond_7d

    const/high16 v64, 0x74680000

    move/from16 v0, v64

    if-ne v8, v0, :cond_7c

    const-string v64, "-"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->onText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7c
    const/16 v64, 0x2d

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_18

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_7d
    invoke-static/range {v38 .. v38}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_7e

    const/16 v64, 0x61f

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_19

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_7f

    const v64, 0xff1f

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_7f
    const/16 v64, 0x3f

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1a

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-nez v64, :cond_81

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_82

    :cond_81
    const/16 v64, 0x3002

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_82
    if-eqz v33, :cond_83

    const/16 v64, 0x2e

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1b

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_83
    invoke-static/range {v38 .. v38}, Lcom/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_84

    const/16 v64, 0x2e

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1c

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_84
    const/high16 v64, 0x68690000

    move/from16 v0, v38

    move/from16 v1, v64

    if-eq v0, v1, :cond_85

    const/high16 v64, 0x626e0000

    move/from16 v0, v38

    move/from16 v1, v64

    if-eq v0, v1, :cond_85

    const/high16 v64, 0x6e650000

    move/from16 v0, v38

    move/from16 v1, v64

    if-eq v0, v1, :cond_85

    const/high16 v64, 0x61730000

    move/from16 v0, v38

    move/from16 v1, v64

    if-eq v0, v1, :cond_85

    const/high16 v64, 0x70610000

    move/from16 v0, v38

    move/from16 v1, v64

    if-eq v0, v1, :cond_85

    const/high16 v64, 0x6f720000

    move/from16 v0, v38

    move/from16 v1, v64

    if-ne v0, v1, :cond_86

    :cond_85
    const/16 v64, 0x964

    const/16 v65, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_86
    const/high16 v64, 0x6b6d0000

    move/from16 v0, v64

    if-ne v8, v0, :cond_87

    const/16 v64, 0x17d4

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1d

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_87
    const/16 v64, 0x2e

    const/16 v65, 0x2

    move/from16 v0, v65

    new-array v0, v0, [I

    move-object/from16 v65, v0

    fill-array-data v65, :array_1e

    move-object/from16 v0, p0

    move/from16 v1, v64

    move-object/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_88
    const/16 v41, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v64

    move/from16 v0, v64

    move/from16 v1, v41

    invoke-static {v0, v1}, Lcom/ime/framework/lang/CharacterUtil;->getRegionalFullStopCode(II)I

    move-result v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v64

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/util/Utils;->isIndianLanguage(I)Z

    move-result v64

    if-eqz v64, :cond_89

    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v41, v64, v65

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :cond_89
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v41, v64, v65

    const/16 v65, 0x1

    const/16 v66, 0x3f

    aput v66, v64, v65

    move-object/from16 v0, p0

    move/from16 v1, v41

    move-object/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_3f
    const/16 v14, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-nez v64, :cond_8a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v64

    const/high16 v65, 0x6a610000

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_8b

    :cond_8a
    const/16 v14, 0x3002

    :cond_8b
    const/16 v64, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v14, v1}, Lcom/ime/implement/input/InputControllerImpl;->onKey(I[I)V

    goto/16 :goto_1

    :sswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/engine/InputEngineManager;->clearContext()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    :sswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->showSymbolPopupKeyboard()V

    goto/16 :goto_1

    :sswitch_42
    invoke-direct/range {p0 .. p1}, Lcom/ime/implement/input/InputControllerImpl;->handleMonthKey(I)V

    goto/16 :goto_1

    :sswitch_43
    const/16 v27, 0x0

    const/16 v64, -0x3a

    move/from16 v0, p1

    move/from16 v1, v64

    if-ne v0, v1, :cond_8e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v20

    const-string v42, ""

    if-eqz v20, :cond_8c

    const/16 v64, 0x1

    const/16 v65, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    :cond_8c
    if-nez v42, :cond_8d

    const-string v42, ""

    :cond_8d
    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->hashCode()I

    move-result v64

    invoke-static/range {v64 .. v64}, Lcom/ime/framework/common/InputSequenceCheck;->getThaiCharType(I)I

    move-result v64

    const/16 v65, 0x6

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_8e

    const/16 v27, 0x1

    :cond_8e
    if-eqz v27, :cond_8f

    const/16 v64, -0x3d

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-direct {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    :cond_8f
    invoke-direct/range {p0 .. p1}, Lcom/ime/implement/input/InputControllerImpl;->handleThaiRangeChange(I)V

    goto/16 :goto_1

    :sswitch_44
    const/16 v64, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->updateAcuteAccentState(Z)V

    goto/16 :goto_1

    :sswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->closeKeyboard()V

    goto/16 :goto_1

    :sswitch_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isSplitOneHandKeypadRightSet()Z

    move-result v64

    if-eqz v64, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v66, 0x0

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    move-object/from16 v64, v0

    const-string v65, "IS_SPLIT_NUMBER_KEYPAD_RIGHT_SET"

    const/16 v66, 0x1

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :sswitch_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    goto/16 :goto_1

    :sswitch_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKeyCode()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setPrevSoftFuncKeyCode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ime/framework/inputmode/InputModeManager;->setSoftFuncKbdIndexByKeycode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->isChangedSoftFuncKbdIndex()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentSoftFuncKey()Lcom/ime/framework/common/SoftFuncKeyInfo;

    move-result-object v57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v57 .. v57}, Lcom/ime/framework/common/SoftFuncKeyInfo;->getLanguage()Lcom/ime/framework/common/Language;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Lcom/ime/framework/common/Language;->getId()I

    move-result v65

    const/16 v66, 0x1

    invoke-interface/range {v64 .. v66}, Lcom/ime/framework/common/InputManager;->setLanguage(IZ)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    move/from16 v64, v0

    if-eqz v64, :cond_91

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->updateInputModule()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->postPredictionWordMessage()V

    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateSoftFuncKeyboardView()V

    goto/16 :goto_1

    :sswitch_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_92

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    goto/16 :goto_1

    :cond_92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    goto :goto_1b

    :sswitch_4a
    sget-boolean v64, Lcom/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    if-nez v64, :cond_93

    const/16 v64, 0x1

    :goto_1c
    sput-boolean v64, Lcom/ime/framework/input/AbstractInputModule;->IS_PLUS_MYANMAR:Z

    goto/16 :goto_1

    :cond_93
    const/16 v64, 0x0

    goto :goto_1c

    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_95

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v64

    if-nez v64, :cond_94

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    :cond_94
    const/16 v64, 0x1

    sput-boolean v64, Lcom/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-eqz v64, :cond_99

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isCandidateViewShown()Z

    move-result v64

    if-eqz v64, :cond_99

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->getSuggestionActiveIndex()I

    move-result v64

    add-int/lit8 v22, v64, -0x1

    if-ltz v22, :cond_96

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-interface {v0, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v64

    if-eqz v64, :cond_97

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    :cond_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v65

    add-int/lit8 v65, v65, -0x1

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    if-ltz v22, :cond_0

    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v19, v22

    :goto_1d
    move/from16 v0, v19

    move/from16 v1, v43

    if-ge v0, v1, :cond_98

    move-object/from16 v0, v51

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1d

    :cond_98
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v51

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v64

    sub-int v64, v64, v22

    add-int/lit8 v40, v64, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_99
    const-string v64, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setVerbatimBeforeAutoCorrection(Ljava/lang/String;)V

    const/16 v64, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_9b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getIsUserSelecting()Z

    move-result v64

    if-nez v64, :cond_9a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsUserSelecting(Z)V

    :cond_9a
    const/16 v64, 0x1

    sput-boolean v64, Lcom/ime/implement/input/InputControllerImpl;->isPreviousStateShiftPress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-eqz v64, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isCandidateViewShown()Z

    move-result v64

    if-eqz v64, :cond_a2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->getSuggestionActiveIndex()I

    move-result v64

    add-int/lit8 v22, v64, 0x1

    move/from16 v0, v22

    if-ne v0, v13, :cond_a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v64

    if-eqz v64, :cond_9c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCloudCandidateUpdate(Z)V

    :cond_9c
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v64

    move/from16 v0, v64

    if-eq v13, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCloudCandidateUpdate()Z

    move-result v64

    if-nez v64, :cond_9e

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v64

    if-lez v64, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v64

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    :goto_1e
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v19, v13

    :goto_1f
    move/from16 v0, v19

    move/from16 v1, v43

    if-ge v0, v1, :cond_a0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1f

    :cond_9e
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v64

    const/16 v65, 0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-le v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v64

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v64

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_9d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e

    :cond_a0
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_a1
    move/from16 v0, v22

    if-ge v0, v13, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-interface {v0, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_a2
    const-string v64, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setVerbatimBeforeAutoCorrection(Ljava/lang/String;)V

    const/16 v64, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_a4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_a4

    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_a3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v61

    check-cast v61, Lcom/ime/framework/view/AbstractKeyboardView;

    :goto_20
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    if-eqz v64, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->setScrollUp()V

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->scrollSmooth()V

    goto/16 :goto_1

    :cond_a3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v61

    check-cast v61, Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_20

    :cond_a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_a6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isCandidateViewShown()Z

    move-result v64

    if-nez v64, :cond_a7

    :cond_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_a9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-eqz v64, :cond_a9

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v64

    if-nez v64, :cond_a9

    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v65, v0

    invoke-virtual/range {v65 .. v65}, Ljava/util/ArrayList;->size()I

    move-result v65

    add-int/lit8 v65, v65, -0x1

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    if-ltz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v13

    if-eqz v13, :cond_0

    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v43

    move/from16 v19, v22

    :goto_21
    move/from16 v0, v19

    move/from16 v1, v43

    if-ge v0, v1, :cond_a8

    move-object/from16 v0, v51

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_21

    :cond_a8
    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_a9
    const/16 v64, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v64

    if-eqz v64, :cond_ab

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v64

    const/16 v65, 0x2

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_ab

    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getChineseLanguageCurrentView()Landroid/view/View;

    move-result-object v61

    check-cast v61, Lcom/ime/framework/view/AbstractKeyboardView;

    :goto_22
    if-eqz v61, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    if-eqz v64, :cond_0

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->setScrollDown()V

    invoke-virtual/range {v61 .. v61}, Lcom/ime/framework/view/AbstractKeyboardView;->getSymbolScrollView()Lcom/ime/framework/view/SymbolScrollView;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/ime/framework/view/SymbolScrollView;->scrollSmooth()V

    goto/16 :goto_1

    :cond_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v61

    check-cast v61, Lcom/ime/framework/view/AbstractKeyboardView;

    goto :goto_22

    :cond_ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsPendingUpdateCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/ShiftStateController;->getShiftPressedState()Z

    move-result v64

    if-eqz v64, :cond_ac

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mShiftStateController:Lcom/ime/framework/common/ShiftStateController;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/ShiftStateController;->setShiftPressedState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->updateShiftState()V

    :cond_ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_ad

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v64

    if-nez v64, :cond_0

    :cond_ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isCandidateViewShown()Z

    move-result v64

    if-nez v64, :cond_af

    :cond_ae
    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v64

    if-eqz v64, :cond_b3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v64

    if-nez v64, :cond_b3

    :cond_af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidates()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getCandidatesDisplayedCount()I

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v64

    move/from16 v0, v64

    if-eq v13, v0, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v64

    if-nez v64, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v64

    const/16 v65, -0x1

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_b0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mChineseCandidates:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v65

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v64

    if-nez v64, :cond_b1

    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-interface {v0, v6}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_b1
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/CharSequence;

    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Lcom/ime/framework/engine/InputEngineManager;->getSuggestion(Ljava/util/ArrayList;)I

    move-object/from16 v0, v51

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v22

    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v64

    move/from16 v0, v22

    move/from16 v1, v64

    if-gt v0, v1, :cond_0

    if-ltz v22, :cond_0

    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    move/from16 v19, v22

    :goto_23
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v64

    move/from16 v0, v19

    move/from16 v1, v64

    if-ge v0, v1, :cond_b2

    move-object/from16 v0, v51

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v64

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_23

    :cond_b2
    const/16 v64, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Lcom/ime/implement/input/InputControllerImpl;->setSuggestionActiveIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Lcom/ime/framework/common/InputManager;->setCandidates(Ljava/util/ArrayList;)V

    goto/16 :goto_2

    :cond_b3
    const/16 v64, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v64

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/ime/implement/input/InputControllerImpl;->sendDownUpKeyEvent(II)V

    goto/16 :goto_1

    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->showModeChangePopupKeyboard()V

    goto/16 :goto_1

    :sswitch_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->getVoiceRecognitionTrigger()Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->closing()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-virtual/range {v64 .. v65}, Lcom/ime/framework/inputmode/InputModeManager;->setInputRange(I)V

    const/16 v64, 0x8

    move/from16 v0, v47

    move/from16 v1, v64

    if-ne v0, v1, :cond_b4

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFloatingKeyboardMode()V

    goto/16 :goto_1

    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToKeyboardMode()V

    goto/16 :goto_1

    :sswitch_51
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/input/InputControllerImpl;->changeToFullLandMode()V

    goto/16 :goto_1

    :sswitch_52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v64

    if-eqz v64, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isShownMobileKeyboardPopup()Z

    move-result v64

    if-eqz v64, :cond_b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    invoke-interface/range {v64 .. v64}, Lcom/ime/framework/common/InputManager;->isPridictionOn()Z

    move-result v64

    if-eqz v64, :cond_b5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x1

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setCandidatesViewShown(Z)V

    :cond_b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setShownMobileKeyboardPopup(Z)V

    goto/16 :goto_1

    :sswitch_53
    invoke-direct/range {p0 .. p1}, Lcom/ime/implement/input/InputControllerImpl;->handleCustomKey(I)V

    goto/16 :goto_1

    :cond_b6
    const/16 v64, -0x6c

    move/from16 v0, p1

    move/from16 v1, v64

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getIsNumInputMode()Z

    move-result v64

    if-eqz v64, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v64, v0

    const/16 v65, 0x0

    invoke-interface/range {v64 .. v65}, Lcom/ime/framework/common/InputManager;->setIsNumInputmodeBy123Key(Z)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x45a -> :sswitch_11
        -0x3f7 -> :sswitch_53
        -0x3f6 -> :sswitch_3a
        -0x3f5 -> :sswitch_3d
        -0x3f4 -> :sswitch_3c
        -0x3f3 -> :sswitch_3b
        -0x3f2 -> :sswitch_37
        -0x3f0 -> :sswitch_36
        -0x3ef -> :sswitch_35
        -0x3ee -> :sswitch_4e
        -0x3ed -> :sswitch_4d
        -0x3ec -> :sswitch_4f
        -0x3ea -> :sswitch_4c
        -0x3e9 -> :sswitch_4b
        -0x3e8 -> :sswitch_52
        -0x3df -> :sswitch_10
        -0x3de -> :sswitch_f
        -0x3dd -> :sswitch_e
        -0x3dc -> :sswitch_4a
        -0x3db -> :sswitch_49
        -0x258 -> :sswitch_51
        -0x1f4 -> :sswitch_3
        -0x1f3 -> :sswitch_4
        -0x1f2 -> :sswitch_7
        -0x1f1 -> :sswitch_6
        -0x1f0 -> :sswitch_5
        -0x19a -> :sswitch_8
        -0x195 -> :sswitch_40
        -0x194 -> :sswitch_3f
        -0x193 -> :sswitch_17
        -0x192 -> :sswitch_b
        -0x191 -> :sswitch_1e
        -0x190 -> :sswitch_8
        -0x14a -> :sswitch_12
        -0x149 -> :sswitch_14
        -0x148 -> :sswitch_14
        -0x147 -> :sswitch_14
        -0x146 -> :sswitch_14
        -0x145 -> :sswitch_14
        -0x144 -> :sswitch_14
        -0x143 -> :sswitch_13
        -0x142 -> :sswitch_12
        -0x141 -> :sswitch_12
        -0x138 -> :sswitch_46
        -0x137 -> :sswitch_15
        -0x136 -> :sswitch_24
        -0x106 -> :sswitch_2
        -0x105 -> :sswitch_1
        -0xe5 -> :sswitch_45
        -0xe4 -> :sswitch_25
        -0xe2 -> :sswitch_1a
        -0xe1 -> :sswitch_1c
        -0xe0 -> :sswitch_1d
        -0xd1 -> :sswitch_20
        -0xd0 -> :sswitch_1f
        -0xbe -> :sswitch_19
        -0xa6 -> :sswitch_48
        -0xa5 -> :sswitch_48
        -0xa4 -> :sswitch_48
        -0xa3 -> :sswitch_48
        -0xa2 -> :sswitch_47
        -0xa1 -> :sswitch_47
        -0x98 -> :sswitch_42
        -0x97 -> :sswitch_42
        -0x96 -> :sswitch_42
        -0x95 -> :sswitch_42
        -0x94 -> :sswitch_42
        -0x93 -> :sswitch_42
        -0x92 -> :sswitch_42
        -0x91 -> :sswitch_42
        -0x90 -> :sswitch_42
        -0x8f -> :sswitch_42
        -0x8e -> :sswitch_42
        -0x8d -> :sswitch_42
        -0x8a -> :sswitch_50
        -0x89 -> :sswitch_38
        -0x88 -> :sswitch_2e
        -0x87 -> :sswitch_32
        -0x86 -> :sswitch_33
        -0x85 -> :sswitch_2a
        -0x84 -> :sswitch_31
        -0x83 -> :sswitch_30
        -0x81 -> :sswitch_34
        -0x80 -> :sswitch_2f
        -0x7f -> :sswitch_c
        -0x7d -> :sswitch_2d
        -0x7c -> :sswitch_39
        -0x7a -> :sswitch_3e
        -0x79 -> :sswitch_2c
        -0x78 -> :sswitch_2b
        -0x77 -> :sswitch_28
        -0x76 -> :sswitch_29
        -0x75 -> :sswitch_27
        -0x70 -> :sswitch_26
        -0x6f -> :sswitch_1b
        -0x6e -> :sswitch_41
        -0x6d -> :sswitch_19
        -0x6c -> :sswitch_16
        -0x6a -> :sswitch_19
        -0x69 -> :sswitch_18
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_d
        -0x65 -> :sswitch_a
        -0x64 -> :sswitch_9
        -0x3e -> :sswitch_44
        -0x3c -> :sswitch_43
        -0x3b -> :sswitch_43
        -0x3a -> :sswitch_43
        -0x5 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7a68434e -> :sswitch_21
        0x7a68484b -> :sswitch_22
        0x7a685457 -> :sswitch_23
    .end sparse-switch

    :array_0
    .array-data 4
        0x27
        0x22
    .end array-data

    :array_1
    .array-data 4
        0x27
        0x22
    .end array-data

    :array_2
    .array-data 4
        0x3b
        0x3a
    .end array-data

    :array_3
    .array-data 4
        0x3b
        0x3a
    .end array-data

    :array_4
    .array-data 4
        0x2d
        0x5f
    .end array-data

    :array_5
    .array-data 4
        0x2d
        0x5f
    .end array-data

    :array_6
    .array-data 4
        0x3a
        0x3f
    .end array-data

    :array_7
    .array-data 4
        0x3a
        0x3f
    .end array-data

    :array_8
    .array-data 4
        0x2c
        0x5f
    .end array-data

    :array_9
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_a
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x2c
        0x5f
    .end array-data

    :array_c
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_d
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0x60c
        0x21
    .end array-data

    :array_f
    .array-data 4
        0x2c
        0x21
    .end array-data

    :array_10
    .array-data 4
        0x3a
        0x55e
    .end array-data

    :array_11
    .array-data 4
        0x3a
        0x55e
    .end array-data

    :array_12
    .array-data 4
        0x2d
        0x7e
    .end array-data

    :array_13
    .array-data 4
        0x2d
        0x7e
    .end array-data

    :array_14
    .array-data 4
        0x55c
        0xab
    .end array-data

    :array_15
    .array-data 4
        0x55c
        0xab
    .end array-data

    :array_16
    .array-data 4
        0x55d
        0xbb
    .end array-data

    :array_17
    .array-data 4
        0x55d
        0xbb
    .end array-data

    :array_18
    .array-data 4
        0x2e
        0x2d
    .end array-data

    :array_19
    .array-data 4
        0x2e
        0x61f
    .end array-data

    :array_1a
    .array-data 4
        0x2e
        0x3f
    .end array-data

    :array_1b
    .array-data 4
        0x2e
        0x2d
    .end array-data

    :array_1c
    .array-data 4
        0x2e
        0x61f
    .end array-data

    :array_1d
    .array-data 4
        0x17d4
        0x3f
    .end array-data

    :array_1e
    .array-data 4
        0x2e
        0x3f
    .end array-data
.end method

.method public releaseEngineAndInputModule()V
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const-string v3, "VOHWRPANEL"

    const-string v4, "VOHWRPANEL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v10}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v2

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME_HWR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEngineAndInputModule vohwrEngine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v10, v6, v6}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungIME_HWR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEngineAndInputModule HWR_MODULE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SamsungIME_HWR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEngineAndInputModule COMPLETE_HWR_MODULE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v3, v3, v7

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v3, v3, v7

    invoke-interface {v3}, Lcom/ime/framework/input/InputModule;->closing()V

    :cond_3
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v3, v3, v8

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModules:[Lcom/ime/framework/input/InputModule;

    aget-object v3, v3, v8

    invoke-interface {v3}, Lcom/ime/framework/input/InputModule;->closing()V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v9}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v0

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "SamsungIME_HWR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEngineAndInputModule dhwrEngine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0, v9, v6, v6}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    :cond_7
    iget-object v3, p0, Lcom/ime/implement/input/InputControllerImpl;->mEngineManager:Lcom/ime/framework/engine/InputEngineManager;

    invoke-interface {v3, v7}, Lcom/ime/framework/engine/InputEngineManager;->getInputEngine(I)Lcom/ime/framework/engine/InputEngine;

    move-result-object v1

    sget-boolean v3, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "SamsungIME_HWR"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseEngineAndInputModule dhwrkorEngine: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v1, :cond_1

    invoke-virtual {p0, v7, v6, v6}, Lcom/ime/implement/input/InputControllerImpl;->setInputEngineWithoutInit(ILcom/ime/framework/engine/InputEngine;Lcom/ime/framework/engine/InputEngine;)Z

    goto/16 :goto_0
.end method

.method public resetHandWritingHasBoonUsed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mHandwritingHasBeenUsed:Z

    return-void
.end method

.method public sendDownUpKeyEvent(II)V
    .locals 26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getEditorEnterAction()I

    move-result v19

    const/4 v3, 0x3

    move/from16 v0, v19

    if-ne v0, v3, :cond_6

    const/16 v23, 0x0

    const/4 v2, 0x0

    const/16 v24, 0x0

    if-eqz v21, :cond_0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v23

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v3}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v3

    iget-object v0, v3, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v24, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v23, :cond_6

    if-eqz v2, :cond_6

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/input/InputControllerImpl;->mBidiFormatter:Landroid/text/BidiFormatter;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x16

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x15

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_2
    if-eqz v22, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x15

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x16

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_4
    const/16 v3, 0x14

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    const/16 v3, 0x13

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v20

    const-string v3, "InputControllerImpl"

    const-string v6, "NullPointerException in onDownKeyEvent"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isCurrentCarModeKnobSIP()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v25

    if-eqz v25, :cond_7

    const-string v3, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/16 v3, 0x16

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    :cond_8
    if-eqz v21, :cond_5

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v15, p2

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1
.end method

.method public setEmojiPredictionEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setEmojiPredictionEnabled(Z)V

    return-void
.end method

.method public setFullWidthMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/input/InputControllerImpl;->mFullWidthMode:Z

    return-void
.end method

.method public setHwrCandidateStatus(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1, p2}, Lcom/ime/framework/input/InputModule;->setHwrCandidateStatus(IZ)V

    :cond_0
    return-void
.end method

.method public setParameterForCapsLockState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0, p1}, Lcom/ime/framework/input/InputModule;->setParameterForCapsLockState(Z)V

    return-void
.end method

.method public setPointingKeyboard()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v1, "SETTINGS_DEFAULT_KEYPAD_POINTING"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTraceStatus()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mRepository:Lcom/ime/framework/repository/Repository;

    const-string v5, "INPUT_LANGUAGE"

    const v6, 0x656e4742

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v3

    iget-boolean v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mIsSwiftKeyMode:Z

    if-nez v4, :cond_0

    const v4, 0x7a68484b

    if-ne v2, v4, :cond_0

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    :goto_0
    return-void

    :cond_0
    const/high16 v4, 0x6a610000

    if-ne v2, v4, :cond_1

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_1
    if-ne v1, v7, :cond_5

    sparse-switch v2, :sswitch_data_0

    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_0
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-lt v4, v10, :cond_3

    if-eq v0, v7, :cond_2

    if-ne v0, v9, :cond_3

    :cond_2
    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_3
    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_1
    if-eqz v3, :cond_4

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_4
    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_6

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboardForMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_a

    sparse-switch v2, :sswitch_data_1

    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/ime/framework/repository/InputModeStatus;->getPreferenceInputMethodOnKor()I

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getSwiftkeyVersion()I

    move-result v4

    if-lt v4, v10, :cond_8

    if-eq v0, v7, :cond_7

    if-ne v0, v9, :cond_8

    :cond_7
    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_8
    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :sswitch_3
    if-eqz v3, :cond_9

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_9
    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_a
    const/high16 v4, 0x6b6f0000

    if-ne v2, v4, :cond_b

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v4}, Lcom/ime/framework/inputmode/InputModeManager;->isKorTabletCji()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v8}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    :cond_b
    invoke-static {v7}, Lcom/ime/framework/repository/InputStatus;->setEnableTrace(Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_0
        0x7a68434e -> :sswitch_1
        0x7a68484b -> :sswitch_1
        0x7a685457 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x6b6f0000 -> :sswitch_2
        0x7a68434e -> :sswitch_3
        0x7a68484b -> :sswitch_3
        0x7a685457 -> :sswitch_3
    .end sparse-switch
.end method

.method public setVietnameseTelexComposing()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->setVietnameseTelexComposing()V

    :cond_0
    return-void
.end method

.method public swipeLeft()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    return-void
.end method

.method public swipeRight()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v0}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->endMultitapTimer()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ime/implement/input/InputControllerImpl;->handleRangeChange(ZZ)V

    return-void
.end method

.method public trimSwiftkeyMemory()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->trimSwiftkeyMemory()V

    return-void
.end method

.method public updateHwrInputModule()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isNeedToLoadHwrLibrary()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    new-instance v5, Lcom/ime/framework/input/HwrInputModule;

    invoke-direct {v5}, Lcom/ime/framework/input/HwrInputModule;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    const/4 v4, 0x4

    new-instance v5, Lcom/ime/framework/input/CompleteHwrInputModule;

    invoke-direct {v5}, Lcom/ime/framework/input/CompleteHwrInputModule;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    :cond_0
    iget-object v4, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x1e

    new-instance v5, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;

    invoke-direct {v5}, Lcom/ime/framework/input/xt9/Xt9BstHwrInputModule;-><init>()V

    invoke-virtual {p0, v4, v5}, Lcom/ime/implement/input/InputControllerImpl;->setInputModule(ILcom/ime/framework/input/InputModule;)Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "SamsungIME_HWR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DynamicHwrLoadPerf, updateHwrInputModule time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateVOHWRSuggestion()V
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/input/InputControllerImpl;->mCurrentInputModule:Lcom/ime/framework/input/InputModule;

    invoke-interface {v0}, Lcom/ime/framework/input/InputModule;->updateVOHWRSuggestion()V

    return-void
.end method

.method public updateViewStatus()V
    .locals 10

    const/4 v5, 0x1

    const/16 v9, 0x21

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    move v2, v0

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->composingText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_2
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isInMultiTapInput()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/ime/implement/input/InputControllerImpl;->isMultiTapRnunnig()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TOGGLE_CHARACTER_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_1
    if-nez v2, :cond_7

    move v1, v4

    :goto_2
    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v6, Lcom/ime/implement/input/InputControllerImpl;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    iget-object v7, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-interface {v3, v5, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    if-nez v1, :cond_4

    invoke-static {v4}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    :cond_4
    invoke-static {v1}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->setCursorChangingOnComposing(I)V

    goto/16 :goto_0

    :cond_5
    if-eqz v2, :cond_3

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManagerForJapanese;->OnBlockPrediction()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/ime/implement/input/InputControllerImpl;->SPAN_EXACT_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    invoke-virtual {v6, v7, v4, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-eq v2, v6, :cond_6

    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/ime/implement/input/InputControllerImpl;->SPAN_REMAIN_BGCOLOR_HL:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v2, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    iget-object v6, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    sget-object v7, Lcom/ime/implement/input/InputControllerImpl;->SPAN_TEXTCOLOR:Landroid/text/style/CharacterStyle;

    iget-object v8, p0, Lcom/ime/implement/input/InputControllerImpl;->mDisplayText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method public writeDBdataToFileOnFinishInput()V
    .locals 0

    invoke-super {p0}, Lcom/ime/framework/input/AbstractInputController;->writeDBdataToFileOnFinishInput()V

    return-void
.end method

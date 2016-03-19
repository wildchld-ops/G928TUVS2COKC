.class public Lcom/dragon/android/voiceime/DragonTrigger;
.super Ljava/lang/Object;
.source "DragonTrigger.java"

# interfaces
.implements Lcom/google/android/voiceime/Trigger;


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String; = null

.field private static final voiceEngineSoFilePath:Ljava/lang/String; = "/system/lib/libSamsungVoiceEngine.so"


# instance fields
.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputMethodSerivce:Landroid/inputmethodservice/InputMethodService;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

.field private mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DragonTrigger"

    sput-object v0, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    iput-object p1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputMethodSerivce:Landroid/inputmethodservice/InputMethodService;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    new-instance v0, Lcom/dragon/android/voiceime/DragonTrigger$1;

    invoke-direct {v0, p0}, Lcom/dragon/android/voiceime/DragonTrigger$1;-><init>(Lcom/dragon/android/voiceime/DragonTrigger;)V

    invoke-static {v0}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->setSpeechKitListener(Lcom/dragon/android/voiceime/SpeechKitWrapper$SimeSpeechKitListener;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dragon/android/voiceime/DragonTrigger;)Lcom/dragon/android/voiceime/RecognizerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    return-object v0
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/ime/framework/util/Utils;->isChinaMainlandBinaryByCSC()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const/4 v3, 0x0

    new-instance v2, Ljava/io/File;

    const-string v6, "/system/lib/libSamsungVoiceEngine.so"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    const-string v6, "com.vlingo.midas"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    if-nez v3, :cond_3

    invoke-static {}, Lcom/dragon/android/voiceime/DragonTrigger;->isVoiceSupportedModelWithoutSvoice()Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "com.samsung.voiceserviceplatform"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static isVoiceSupportedModelWithoutSvoice()Z
    .locals 8

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ro.csc.sales_code"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v5, "CHM"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CHC"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/16 v5, 0x8

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "h3gzm"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "vikal3gzm"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "klte"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "kvoltezm"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "trlte"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "zeroflte"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "noblelte"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    const-string v6, "zenlte"

    aput-object v6, v4, v5

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isVoiceSupportedModelWithoutSvoice : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private releaseRecognizer()V
    .locals 2

    sget-object v0, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    const-string v1, "releaseRecognizer"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->destory(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    :cond_0
    invoke-static {}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->destroy()V

    return-void
.end method

.method private releaseView()V
    .locals 2

    sget-object v0, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    const-string v1, "releaseView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->closeVoiceView()V

    return-void
.end method

.method private starting()V
    .locals 5

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v0

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isDragonVoiceMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/ime/framework/input/InputController;->changeToDragonVoiceMode()V

    :cond_0
    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->getMicEffectView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/dragon/android/voiceime/ui/MicEffectView;

    iput-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    if-nez v1, :cond_1

    sget-object v1, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    const-string v2, "mMicEffectView is null in starting()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRecognizerWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current mMicEffectView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    if-nez v1, :cond_2

    new-instance v1, Lcom/dragon/android/voiceime/RecognizerWrapper;

    iget-object v2, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputMethodSerivce:Landroid/inputmethodservice/InputMethodService;

    iget-object v3, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v3}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getUIHandler()Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/dragon/android/voiceime/RecognizerWrapper;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iget-object v2, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setRecognizer(Lcom/dragon/android/voiceime/RecognizerWrapper;)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->startRecognizer()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iget-object v2, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v1, v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setRecognizer(Lcom/dragon/android/voiceime/RecognizerWrapper;)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    iget-object v2, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getUIHandler()Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/dragon/android/voiceime/RecognizerWrapper;->restoreRecognizer(Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public closing()V
    .locals 0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/DragonTrigger;->releaseRecognizer()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/DragonTrigger;->releaseView()V

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v0

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isOrientationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/DragonTrigger;->releaseView()V

    :cond_0
    return-void
.end method

.method public onStartInputView()V
    .locals 0

    return-void
.end method

.method public startVoiceRecognition(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/dragon/android/voiceime/DragonTrigger;->starting()V

    return-void
.end method

.method public updateLanguage(I)V
    .locals 3

    invoke-static {}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->getCurrentLanguge()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/dragon/android/voiceime/DragonTrigger;->TAG:Ljava/lang/String;

    const-string v1, "mMicEffectView is null in updateLanguage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getMicEffectView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/dragon/android/voiceime/ui/MicEffectView;

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/DragonTrigger;->releaseRecognizer()V

    new-instance v0, Lcom/dragon/android/voiceime/RecognizerWrapper;

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mInputMethodSerivce:Landroid/inputmethodservice/InputMethodService;

    iget-object v2, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v2}, Lcom/dragon/android/voiceime/ui/MicEffectView;->getUIHandler()Lcom/dragon/android/voiceime/ui/VoiceUIHandler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/dragon/android/voiceime/RecognizerWrapper;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    iget-object v1, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mRecognizerWrapper:Lcom/dragon/android/voiceime/RecognizerWrapper;

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/MicEffectView;->setRecognizer(Lcom/dragon/android/voiceime/RecognizerWrapper;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/DragonTrigger;->mMicEffectView:Lcom/dragon/android/voiceime/ui/MicEffectView;

    invoke-virtual {v0}, Lcom/dragon/android/voiceime/ui/MicEffectView;->updateToIdle()V

    goto :goto_0
.end method

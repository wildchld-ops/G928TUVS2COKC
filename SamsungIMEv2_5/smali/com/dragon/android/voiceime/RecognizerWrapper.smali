.class public Lcom/dragon/android/voiceime/RecognizerWrapper;
.super Ljava/lang/Object;
.source "RecognizerWrapper.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;,
        Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RecognizerWrapper"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurVoiceLanguage:I

.field private mInputMethodService:Landroid/inputmethodservice/InputMethodService;

.field private mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

.field private mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

.field private mState:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

.field private mUIThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/os/Handler;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    iput-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mState:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    iput-object p2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    new-instance v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    invoke-direct {v1, p0}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;-><init>(Lcom/dragon/android/voiceime/RecognizerWrapper;)V

    iput-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    iput-object p1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {p3}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->setCurrentLanguage(I)V

    invoke-static {p1}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->create(Landroid/content/Context;)Lcom/nuance/nmdp/speechkit/SpeechKit;

    const-string v0, "1.5.0.0B05_SamsungEPD"

    const-string v1, "SpeechKit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpeechKit version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/dragon/android/voiceime/RecognizerWrapper;)Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method private getLanguageCode()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->getCurrentLanguge()I

    move-result v0

    iput v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mCurVoiceLanguage:I

    iget v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mCurVoiceLanguage:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "RecognizerWrapper"

    const-string v1, "getLanguageCode has error, return English "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "eng-USA"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "eng-USA"

    goto :goto_0

    :sswitch_1
    const-string v0, "eng-GBR"

    goto :goto_0

    :sswitch_2
    const-string v0, "kor-KOR"

    goto :goto_0

    :sswitch_3
    const-string v0, "cmn-CHN"

    goto :goto_0

    :sswitch_4
    const-string v0, "yue-CHN"

    goto :goto_0

    :sswitch_5
    const-string v0, "cmn-CHN"

    goto :goto_0

    :sswitch_6
    const-string v0, "fra-FRA"

    goto :goto_0

    :sswitch_7
    const-string v0, "deu-DEU"

    goto :goto_0

    :sswitch_8
    const-string v0, "jpn-JPN"

    goto :goto_0

    :sswitch_9
    const-string v0, "nld-NLD"

    goto :goto_0

    :sswitch_a
    const-string v0, "ita-ITA"

    goto :goto_0

    :sswitch_b
    const-string v0, "cmn-CHN"

    goto :goto_0

    :sswitch_c
    const-string v0, "por-PRT"

    goto :goto_0

    :sswitch_d
    const-string v0, "dan-DNK"

    goto :goto_0

    :sswitch_e
    const-string v0, "fin-FIN"

    goto :goto_0

    :sswitch_f
    const-string v0, "rus-RUS"

    goto :goto_0

    :sswitch_10
    const-string v0, "heb-ISR"

    goto :goto_0

    :sswitch_11
    const-string v0, "tha-THA"

    goto :goto_0

    :sswitch_12
    const-string v0, "ind-IDN"

    goto :goto_0

    :sswitch_13
    const-string v0, "vie-VNM"

    goto :goto_0

    :sswitch_14
    const-string v0, "ara-XWW"

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x61720000 -> :sswitch_14
        0x64610000 -> :sswitch_d
        0x64650000 -> :sswitch_7
        0x656e4742 -> :sswitch_1
        0x656e5553 -> :sswitch_0
        0x65734553 -> :sswitch_b
        0x66690000 -> :sswitch_e
        0x66724652 -> :sswitch_6
        0x69640000 -> :sswitch_12
        0x69740000 -> :sswitch_a
        0x69770000 -> :sswitch_10
        0x6a610000 -> :sswitch_8
        0x6b6f0000 -> :sswitch_2
        0x6e6c0000 -> :sswitch_9
        0x70745054 -> :sswitch_c
        0x72750000 -> :sswitch_f
        0x74680000 -> :sswitch_11
        0x76690000 -> :sswitch_13
        0x7a68434e -> :sswitch_3
        0x7a68484b -> :sswitch_4
        0x7a685457 -> :sswitch_5
    .end sparse-switch
.end method

.method private removeAllHandlerMessage()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    invoke-virtual {v0, v2}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    invoke-virtual {v0, v3}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mState:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    return-void
.end method


# virtual methods
.method public cancelRecognizer()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    :cond_0
    return-void
.end method

.method public createRecognizer()V
    .locals 0

    return-void
.end method

.method public destory(Z)V
    .locals 2

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v1}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v1}, Lcom/nuance/nmdp/speechkit/Recognizer;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-direct {p0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->removeAllHandlerMessage()V

    return-void
.end method

.method public getRecognizer()Lcom/nuance/nmdp/speechkit/Recognizer;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    return-object v0
.end method

.method public getRecognizerState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mState:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    return-object v0
.end method

.method public getState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mState:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    return-object v0
.end method

.method public onError(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/SpeechError;)V
    .locals 5

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->stopBluetoothSco()V

    sget-object v2, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/SpeechError;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : UnknownError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    const-string v2, ""

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : CanceledError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : ServerConnectionError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : RecognizerError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : ServerRetryError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onError,Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : VocalizerError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public onRecordingBegin(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 4

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RecognizerWrapper"

    const-string v1, "requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    const-string v0, "RecognizerWrapper"

    const-string v1, "onRecordingBegin set State to LISTENING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    const-string v0, "RecognizerWrapper"

    const-string v1, " setState LISTENING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onRecordingDone(Lcom/nuance/nmdp/speechkit/Recognizer;)V
    .locals 2

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    const-string v0, "RecognizerWrapper"

    const-string v1, "onRecordingDone set State to RECOGNIZING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mCurVoiceLanguage:I

    invoke-static {}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->getCurrentLanguge()I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onResults(Lcom/nuance/nmdp/speechkit/Recognizer;Lcom/nuance/nmdp/speechkit/Recognition;)V
    .locals 7

    const-string v4, "RecognizerWrapper"

    const-string v5, "onResults set State to IDLE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v4}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    iget-object v4, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Lcom/nuance/nmdp/speechkit/Recognition;->getResultCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {p2, v0}, Lcom/nuance/nmdp/speechkit/Recognition;->getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/Recognition$Result;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "RecognizerWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2, v0}, Lcom/nuance/nmdp/speechkit/Recognition;->getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;

    move-result-object v6

    invoke-interface {v6}, Lcom/nuance/nmdp/speechkit/Recognition$Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mInputMethodService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    invoke-interface {p2, v4}, Lcom/nuance/nmdp/speechkit/Recognition;->getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;

    move-result-object v4

    invoke-interface {v4}, Lcom/nuance/nmdp/speechkit/Recognition$Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_1
    return-void
.end method

.method public restoreRecognizer(Landroid/os/Handler;)V
    .locals 5

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getState()Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    move-result-object v0

    iput-object p1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    const-string v2, "RecognizerWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreRecognizer currentState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v2, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->PREPARING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v2, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startRecognizer()V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->getLanguageCode()Ljava/lang/String;

    move-result-object v3

    const-string v0, "RecognizerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "languageCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/dragon/android/voiceime/SpeechKitWrapper;->getInstance()Lcom/nuance/nmdp/speechkit/SpeechKit;

    move-result-object v0

    const-string v1, "dictation"

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/nmdp/speechkit/SpeechKit;->createRecognizer(Ljava/lang/String;ILjava/lang/String;Lcom/nuance/nmdp/speechkit/Recognizer$Listener;Landroid/os/Handler;)Lcom/nuance/nmdp/speechkit/Recognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->PREPARING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    const-string v0, "RecognizerWrapper"

    const-string v1, "state PREPARING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RecognizerWrapper"

    const-string v1, "requestAudioFocus : fail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x0

    iput v0, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    const/4 v1, 0x1

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v1, v4, v5}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iput v8, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-direct {p0, v0}, Lcom/dragon/android/voiceime/RecognizerWrapper;->setState(Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    const/4 v0, 0x3

    iput v0, v7, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mUIThread:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public startRecognizerByMessage()V
    .locals 4

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizerHandler:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopRecording()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/RecognizerWrapper;->mRecognizer:Lcom/nuance/nmdp/speechkit/Recognizer;

    invoke-interface {v0}, Lcom/nuance/nmdp/speechkit/Recognizer;->stopRecording()V

    :cond_0
    return-void
.end method

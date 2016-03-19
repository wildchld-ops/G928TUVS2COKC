.class public Lcom/dragon/android/voiceime/ui/VoiceUIHandler;
.super Landroid/os/Handler;
.source "VoiceUIHandler.java"


# static fields
.field public static final MSG_GET_AUDIO_LEVEL:I = 0x7

.field public static final MSG_UI_ERROR:I = 0x4

.field public static final MSG_UI_IDLE:I = 0x3

.field public static final MSG_UI_LISTENING:I = 0x1

.field public static final MSG_UI_PREPARING:I = 0x0

.field public static final MSG_UI_RECOGNIZING:I = 0x2

.field public static final MSG_UI_UPDATE_PROCESSING:I = 0x5

.field public static final MSG_UPDATE_RMS:I = 0x6


# instance fields
.field private mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;


# direct methods
.method public constructor <init>(Lcom/dragon/android/voiceime/ui/VoiceStateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToPreparing()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToListening()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToRecognizing()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToIdle()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToProcessing()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1, v0}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateToErrorInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->updateRms()V

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/VoiceUIHandler;->mListener:Lcom/dragon/android/voiceime/ui/VoiceStateListener;

    invoke-interface {v1}, Lcom/dragon/android/voiceime/ui/VoiceStateListener;->getAudioLevel()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

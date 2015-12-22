.class public Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;
.super Ljava/lang/Object;
.source "SecAsyncRingtonePlayer.java"


# instance fields
.field private final EVENT_FADE_DELAY:I

.field private final EVENT_FADE_IN:I

.field private final EVENT_FADE_OUT:I

.field private final EVENT_START_MUTE_TTS:I

.field private final EVENT_START_TTS:I

.field private final EVENT_START_TTS_DELAY:I

.field private final INIT_VOLUME:I

.field private final INIT_VOLUME_DELAY:I

.field private final MAX_VOLUME:F

.field private final MIN_VOLUME:F

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

.field private final mContext:Landroid/content/Context;

.field private mCurrentVolume:F

.field private mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

.field private mHandler:Landroid/os/Handler;

.field private mOriginRingtoneVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private final mSoundMovementDuringFadeIn:F

.field private final mSoundMovementDuringFadeOut:F

.field private mUseVoiceCommand:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_START_MUTE_TTS:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_START_TTS:I

    const/16 v0, 0x66

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_FADE_IN:I

    const/16 v0, 0x67

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_FADE_OUT:I

    iput v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    iput v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->INIT_VOLUME_DELAY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->INIT_VOLUME:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_START_TTS_DELAY:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->EVENT_FADE_DELAY:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->MAX_VOLUME:F

    iput v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->MIN_VOLUME:F

    iput v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mSoundMovementDuringFadeIn:F

    const v0, 0x3ca3d70a    # 0.02f

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mSoundMovementDuringFadeOut:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/ExtraRinger;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Landroid/media/SamsungAudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handlePlay(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleRepeat()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Lcom/android/server/telecom/secutils/CallTextToSpeech;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->removeFadeMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)F
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return p1
.end method

.method static synthetic access$716(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$724(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;F)F
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCurrentVolume:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    return v0
.end method

.method private getNewHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ringtone-player"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer$1;-><init>(Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;Landroid/os/Looper;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x2

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    const/4 v0, 0x0

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_3

    move v1, v4

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getRingtone()Landroid/net/Uri;

    move-result-object v0

    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v5, :cond_9

    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_1

    move v1, v2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  getRingtone  : PhoneId  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v5, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v1, v4, :cond_4

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    :goto_2
    if-nez p1, :cond_7

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getRintoneOffset(Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/media/Ringtone;->isUriTrue()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    :goto_5
    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneId failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v5}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_8

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_5

    :cond_7
    move-object v0, p1

    goto :goto_3

    :cond_8
    move-object v1, v3

    goto :goto_2

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method

.method private handlePlay(Landroid/net/Uri;)V
    .locals 7

    const/16 v6, 0x6b

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkNotOnMainThread()V

    const-string v0, "Play ringtone."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getRingtone(Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleStop()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getIncreasingRingtoneToggle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    iget v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/secutils/ExtraRinger;->setSystemOriginRingtoneVolume(I)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandler: getStreamVolume: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->handleRepeat()V

    goto/16 :goto_1

    :cond_6
    const-string v0, "mHandler: has RETURN_ORIGIN_VOLUME message"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private handleRepeat()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Ringtone already playing."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->startExtraRinger()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    const-string v0, "Repeat ringtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private handleStop()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkNotOnMainThread()V

    const-string v0, "Stop ringtone."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    const-string v0, "Ringtone.stop() invoked."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    iput-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    iput-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mCallTextToSpeech:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    :cond_1
    monitor-enter p0

    :try_start_0
    const-string v0, "extra_ringer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/ExtraRinger;->stopExtraRinger()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mExtraRinger:Lcom/android/server/telecom/secutils/ExtraRinger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/ExtraRinger;->setSystemOriginRingtoneVolume(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRing() setStreamVolume - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRing() getStreamVolume - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "remove message (EVENT_PLAY)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    const-string v0, "Handler cleared."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postMessage(ILjava/lang/String;J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postMessage(IZLandroid/net/Uri;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private postMessage(IZLandroid/net/Uri;J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->getNewHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-string v0, "Message %d skipped because there is no handler."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeFadeMessage()V
    .locals 3

    const/16 v2, 0x67

    const/16 v1, 0x66

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private shouldPlayMuteTTS()Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isBluetoothDeviceAvailable()Z

    move-result v4

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v5

    const-string v0, "ringtone_mute_gap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "vibrate_when_ringing"

    const/4 v8, -0x2

    invoke-static {v3, v7, v2, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isBluetoothAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {p0, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    :goto_2
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public checkingRecoding()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    new-array v3, v0, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "during voice recording, it should vibrate"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVideoRecorder()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "support_tphone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "during video recording, it should vibrate in the tphone mode"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->notVibrateDuringVideoRecording(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "during video recording, it should alert ring"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "during video recording, it should vibrate"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getCustomRingtoneUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    new-array v1, v1, [I

    const/4 v2, 0x4

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "number_plus_digits"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cdnipNumber and settedCdnipNumber are same... setted cdnipNumber: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "number_plus_ringtone"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.resource://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/raw/low_power_ringtone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergency mode, ringtoneUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_2
    const-string v0, "support_tphone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->requestRingtoneUri(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "getCustomRingtoneUri : change TPhone ringtone"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :cond_4
    const-string v0, "getCustomRingtoneUri : use default ringtone"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method getIncreasingRingtoneToggle()Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "inc_ring"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getRintoneOffset(Landroid/net/Uri;)I
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v1

    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "recommendation_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRintoneOffset recommendation_time offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "recommendation_time_2"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRintoneOffset recommendation_time_2 offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v0, "highlight_offset"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getRintoneOffset highlight_offset offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public isRingtonePlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public play(Landroid/net/Uri;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v0, "Posting play."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    const/16 v0, 0x1f4

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCoverClosed(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x2bc

    :cond_0
    int-to-long v4, v0

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->postMessage(IZLandroid/net/Uri;J)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->shouldPlayMuteTTS()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    const-string v0, "incoming call from"

    const/16 v1, 0x64

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->postMessage(ILjava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public returnOriginVolume()V
    .locals 4

    const/16 v2, 0x6b

    const/4 v3, 0x0

    const-string v0, "ReturnOriginVolume after voice command ringtone stop"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ringtone_mute_gap"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mUseVoiceCommand:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReturnOriginVolume after voice command : mOriginRingtoneVolume ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mOriginRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v0, "Posting stop."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->isBluetoothDeviceAvailable()Z

    move-result v0

    const-string v4, "audio_global_effect"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/media/SamsungAudioManager;->playMySpaceEffect(I)I

    move-result v0

    :goto_0
    int-to-long v4, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->postMessage(IZLandroid/net/Uri;J)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->postMessage(IZLandroid/net/Uri;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/telecom/secutils/SecAsyncRingtonePlayer;->postMessage(IZLandroid/net/Uri;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

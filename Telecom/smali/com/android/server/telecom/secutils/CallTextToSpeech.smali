.class public Lcom/android/server/telecom/secutils/CallTextToSpeech;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# instance fields
.field private DEFAULT_TTS_STREAM:Ljava/lang/String;

.field private DEFAULT_TTS_STREAM_DRIVELINK:Ljava/lang/String;

.field private final FADE_IN:I

.field private final FADE_IN_THRESHOLD_TIME:I

.field private final FADE_OUT:I

.field private final FADE_OUT_THRESHOLD_TIME:I

.field private final INVALID_VOLUME_LEVEL:I

.field private IsTtsInitiated:Z

.field private NewVoicemail:Ljava/lang/String;

.field private final REPEAT_TTS:I

.field private final REPEAT_TTS_DELAY:I

.field private final RINGTONE_MAX_VOLUME_FOR_TTS:I

.field private final RINGTONE_MUTE_TIME:I

.field private final TTS_REPEAT_COUNT_MAX:I

.field afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentRingtoneVolume:I

.field private mDisplayName:Ljava/lang/String;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mFadeInUpdateDelay:I

.field private mFadeOutUpdateDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mOriginNotiVolume:I

.field private mOriginRingVolume:I

.field private mOriginTtsVolume:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsId:I

.field private mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

.field private mTtsRepeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "%s"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/16 v5, 0x1f4

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM_DRIVELINK:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_IN:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_OUT:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->REPEAT_TTS:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->REPEAT_TTS_DELAY:I

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_IN_THRESHOLD_TIME:I

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_OUT_THRESHOLD_TIME:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->RINGTONE_MUTE_TIME:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->TTS_REPEAT_COUNT_MAX:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->RINGTONE_MAX_VOLUME_FOR_TTS:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->init(Landroid/content/Context;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6

    const/16 v5, 0x1f4

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->INVALID_VOLUME_LEVEL:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM_DRIVELINK:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    iput-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_IN:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_OUT:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->REPEAT_TTS:I

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->REPEAT_TTS_DELAY:I

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_IN_THRESHOLD_TIME:I

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->FADE_OUT_THRESHOLD_TIME:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->RINGTONE_MUTE_TIME:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->TTS_REPEAT_COUNT_MAX:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->RINGTONE_MAX_VOLUME_FOR_TTS:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    iput v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    iput v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$1;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$2;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    iput-object p3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->makeIncomingTTS()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$708(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V

    return-void
.end method

.method private formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-le v3, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_1

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 2

    const-class v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {v0, p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/telecom/secutils/CallTextToSpeech;
    .locals 2

    const-class v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getStream()I
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iput p2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    new-instance v0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;Lcom/android/server/telecom/secutils/CallTextToSpeech$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V

    :cond_0
    return-void
.end method

.method private isCheckValidRange(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x23

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p1, v1, :cond_0

    const/16 v1, 0x28

    if-eq p1, v1, :cond_0

    const/16 v1, 0x29

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x2e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeIncomingTTS()V
    .locals 12

    const/4 v2, 0x0

    const v7, 0x7f080031

    const/4 v6, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v0, ""

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "streamType"

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM_DRIVELINK:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "utteranceId"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TTS ended : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v4, v10, [I

    aput v6, v4, v9

    invoke-virtual {v1, v4}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getNameOrNumberFromCall(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v1

    invoke-static {v4, v1, v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPresentationString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "CallTextToSpeech"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TtsCallerInfo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->formatTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-array v1, v10, [Ljava/lang/String;

    aput-object v0, v1, v9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    sget-object v7, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v6, v7, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v6, "CallTextToSpeech"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " when Car mode is on"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v6, v4}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v4

    const/4 v6, -0x2

    if-eq v4, v6, :cond_4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    const-string v4, "CallTextToSpeech"

    const-string v6, "Language is not available. Set US as default when Car mode is on."

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v6, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v4, 0x7f080035

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isReadOutNotificatonOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_6
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v2, v1, v9

    aput-object v0, v1, v10

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v9, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    :cond_8
    :goto_3
    return-void

    :cond_9
    const-string v1, "streamType"

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v0, "CallTextToSpeech"

    const-string v1, "mContext == null : "

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    const-string v2, "enhanced_driving_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v5, 0x7f08009f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ENHANCED_DRIVING_MODE TTS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_c
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v4, Lcom/android/server/telecom/secutils/CallTextToSpeech;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v4, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_1

    :cond_d
    move-object v0, v2

    goto :goto_2

    :cond_e
    if-nez v0, :cond_f

    const-string v0, "CallTextToSpeech"

    const-string v1, "TTS_INCOMING : callerinfo is null"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto :goto_3

    :cond_f
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v9, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_3

    :cond_10
    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method private resetVolumeForTts(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    if-eq v0, v5, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getStream()I

    move-result v1

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    :cond_1
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v6, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStreamVolume (STREAM_RING) :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    :cond_2
    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    iput v4, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    if-eq v0, v5, :cond_0

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iput v5, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setVolumeForTts(I)V
    .locals 8

    const/16 v7, 0x1f4

    const/4 v0, 0x6

    const/4 v4, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getStream()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginTtsVolume:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamVolume (STREAM_RING) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    :cond_2
    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto :goto_0

    :cond_3
    const-string v0, "remove_fade_effect_on_international_call_tts"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->makeIncomingTTS()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getStream()I

    move-result v1

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCurrentRingtoneVolume:I

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->getStream()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    div-int v0, v7, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeInUpdateDelay:I

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginRingVolume:I

    div-int v0, v7, v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mFadeOutUpdateDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeForTts : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mOriginNotiVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private speakTts(I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "CallTextToSpeech"

    const-string v1, "Getting into speak TTS"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :cond_2
    if-eq p1, v6, :cond_0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/rcs/RcsUtils;->acquireSessionInfo(Landroid/content/Context;)Lcom/android/server/telecom/rcs/RcsUtils$SessionState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/telecom/rcs/RcsUtils$SessionState;->mType:I

    invoke-static {v0}, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->getFromInt(I)Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/telecom/rcs/RcsUtils;->getInvitationText(Landroid/content/res/Resources;Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->IM:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-static {v0, v2}, Lcom/android/server/telecom/rcs/RcsUtils;->getInvitationText(Landroid/content/res/Resources;Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :pswitch_4
    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;->FILE_TRANSFER:Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;

    invoke-static {v0, v2}, Lcom/android/server/telecom/rcs/RcsUtils;->getInvitationText(Landroid/content/res/Resources;Lcom/android/services/telephony/common/RcsTransferConstants$SessionType;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;

    const v2, 0x7f080032

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->NewVoicemail:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :cond_6
    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v7}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->setVolumeForTts(I)V

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_7

    const-string v0, "left"

    :goto_2
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, v0, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :cond_7
    const-string v0, "right"

    goto :goto_2

    :pswitch_7
    const-string v0, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDisplayName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_8

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    const-string v0, "CallTextToSpeech"

    const-string v2, "TTS cannot use system language, using Locale.US instead"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v6, :cond_a

    const-string v0, "streamType"

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->DEFAULT_TTS_STREAM:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "utteranceId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTS ended : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v5, v1}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsListener:Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    goto/16 :goto_0

    :cond_a
    const-string v1, "CallTextToSpeech"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result is not AUDIOFOCUS_REQUEST_GRANTED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public isCheckInvalidTypeClassPhoneNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->isCheckValidRange(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public stopTts()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mDisplayName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iget v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->resetVolumeForTts(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "CallTextToSpeech"

    const-string v1, "TTS is shutdown"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

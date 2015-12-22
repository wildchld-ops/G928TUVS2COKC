.class public final Lcom/android/server/telecom/InCallTonePlayer;
.super Ljava/lang/Thread;
.source "InCallTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallTonePlayer$Factory;
    }
.end annotation


# static fields
.field private static sTonesPlaying:I


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mState:I

.field private mStream:I

.field private final mToneId:I

.field public toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return-void
.end method

.method private constructor <init>(ILcom/android/server/telecom/CallAudioManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    iput v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    iput p1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    iput-object p2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getCurrentToneStream()I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/InCallTonePlayer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/InCallTonePlayer;-><init>(ILcom/android/server/telecom/CallAudioManager;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$106()I
    .locals 1

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallTonePlayer;)Lcom/android/server/telecom/CallAudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    return-object v0
.end method

.method private cleanUpTonePlayer()V
    .locals 6

    const/16 v0, 0xc8

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/telecom/InCallTonePlayer$1;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/InCallTonePlayer$1;-><init>(Lcom/android/server/telecom/InCallTonePlayer;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private isCSRingingCall()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isCSDomain(Lcom/android/server/telecom/Call;)Z

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/16 v3, 0x16

    const/16 v1, 0x32

    const/16 v2, 0x50

    :try_start_0
    const-string v0, "run(toneId = %s)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_VoiceCall_TunnigCallWaitingToneAs"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v4, "tunningCallWaitingTone =  %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    sparse-switch v4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad toneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    throw v0

    :sswitch_0
    :try_start_1
    const-string v0, "play_busy_tone_sup_busy"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "play busy tone only 5times"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x11

    :goto_0
    const/16 v1, 0x1194

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    :goto_1
    const-string v4, "emergency_call_tone"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget v5, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    iget v6, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->getStreamByToneId(Lcom/android/server/telecom/CallAudioManager;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    :cond_1
    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0x9

    iput v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    :cond_2
    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    const/16 v4, 0x15

    if-ne v3, v4, :cond_4

    :cond_3
    const-string v3, "common_vt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mAudioManager:Landroid/media/AudioManager;

    const/16 v3, 0xb

    iput v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    const-string v3, "Creating generator with stream(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/media/ToneGenerator;

    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mStream:I

    invoke-direct {v3, v4, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v1, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->convertToneGeneratorVolume(Landroid/media/ToneGenerator;I)Landroid/media/ToneGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    :cond_5
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    const-string v1, "Starting tone %d...waiting for %d ms."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    add-int/lit8 v4, v0, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x14

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_7
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    :goto_3
    return-void

    :cond_8
    const/16 v0, 0x72

    goto/16 :goto_0

    :sswitch_1
    const/16 v1, 0x1b

    const/16 v0, 0xc8

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_2
    :try_start_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OTA Call ended NYI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_3
    if-lez v0, :cond_b

    iget-object v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->isWiredHeadsetPluggedIn()Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_4
    const-string v0, "InCallTonePlayer: WAITING : %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "feature_can"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const v0, 0x7fffffeb

    move v2, v3

    goto/16 :goto_1

    :cond_a
    move v1, v0

    goto :goto_4

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    const-string v0, "dcm_callwait_tone_long_feature"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x5208

    move v2, v3

    goto/16 :goto_1

    :cond_d
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->isCSRingingCall()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x1db0

    move v2, v3

    goto/16 :goto_1

    :cond_e
    const/16 v0, 0x5208

    move v2, v3

    goto/16 :goto_1

    :cond_f
    const/16 v0, 0x1db0

    move v2, v3

    goto/16 :goto_1

    :sswitch_4
    const/16 v2, 0x5f

    const/16 v0, 0x177

    goto/16 :goto_1

    :sswitch_5
    const/16 v1, 0x12

    const/16 v0, 0xed8

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_6
    const/16 v2, 0x25

    const/16 v0, 0x1f4

    goto/16 :goto_1

    :sswitch_7
    const/16 v2, 0x5f

    const/16 v0, 0x177

    goto/16 :goto_1

    :sswitch_8
    const/16 v2, 0x57

    const/16 v0, 0x1388

    goto/16 :goto_1

    :sswitch_9
    const/16 v1, 0x26

    const/16 v0, 0xfa0

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "telstra_ringback"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x73

    :goto_5
    const v1, 0x7fffffeb

    move v8, v1

    move v1, v2

    move v2, v0

    move v0, v8

    goto/16 :goto_1

    :cond_10
    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const/16 v0, 0x23

    goto :goto_5

    :cond_12
    const-string v0, "singapore_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSingTelSIM()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_13
    const-string v0, "evr_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "tmu_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/16 v0, 0x67

    goto :goto_5

    :cond_15
    const/16 v0, 0x17

    goto :goto_5

    :sswitch_b
    const/16 v1, 0x15

    const/16 v0, 0xed8

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_c
    const/16 v2, 0x19

    const/16 v0, 0x3e8

    goto/16 :goto_1

    :sswitch_d
    const/16 v1, 0x63

    const/16 v0, 0x258

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_e
    const/16 v2, 0x64

    const/16 v0, 0x154

    goto/16 :goto_1

    :sswitch_f
    const v0, 0x7fffffeb

    move v1, v2

    move v2, v3

    goto/16 :goto_1

    :sswitch_10
    const/16 v1, 0x5d

    const/16 v0, 0x2bc

    move v8, v2

    move v2, v1

    move v1, v8

    goto/16 :goto_1

    :sswitch_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Voice privacy tone NYI."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to create ToneGenerator."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    :cond_16
    invoke-direct {p0}, Lcom/android/server/telecom/InCallTonePlayer;->cleanUpTonePlayer()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    :try_start_9
    const-string v1, "wait interrupted"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_b
        0xd -> :sswitch_11
        0xe -> :sswitch_c
        0x14 -> :sswitch_d
        0x15 -> :sswitch_e
        0x16 -> :sswitch_f
        0x38f -> :sswitch_10
    .end sparse-switch
.end method

.method public setVolume(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1}, Landroid/media/ToneGenerator;->setVolume(F)V

    :cond_0
    return-void
.end method

.method public startEmergencyToneBeforeCall()V
    .locals 0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    invoke-virtual {p0}, Lcom/android/server/telecom/InCallTonePlayer;->start()V

    return-void
.end method

.method public startTone()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    sget v0, Lcom/android/server/telecom/InCallTonePlayer;->sTonesPlaying:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    iget v1, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/telecom/CallAudioManager;->setIsTonePlaying(ZI)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/InCallTonePlayer;->start()V

    return-void
.end method

.method stopTone()V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    if-ne v0, v1, :cond_0

    const-string v0, "Stopping the tone %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/telecom/InCallTonePlayer;->mToneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/InCallTonePlayer;->mState:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

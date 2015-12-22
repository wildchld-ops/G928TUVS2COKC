.class Lcom/android/server/telecom/DtmfLocalTonePlayer;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "DtmfLocalTonePlayer.java"


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private final mContext:Landroid/content/Context;

.field private mShortTone:Z

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private endDtmfSession(Lcom/android/server/telecom/Call;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    iput-object v1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iput-object v1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method private static final getMappedTone(C)I
    .locals 2

    const/16 v0, 0x66

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private startDtmfSession(Lcom/android/server/telecom/Call;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "allow_local_dtmf_tones"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    const-string v3, "allow_local_dtmf_tones_always"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    iput-object p1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v3, 0x50

    invoke-direct {v0, v1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating local tone generator."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v1, v0

    goto :goto_2
.end method

.method private useBurstDtmf(Lcom/android/server/telecom/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->endDtmfSession(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->startDtmfSession(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method playTone(Lcom/android/server/telecom/Call;C)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->useBurstDtmf(Lcom/android/server/telecom/Call;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mShortTone:Z

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    const-string v0, "playTone: mToneGenerator == null, %c."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "starting local tone: %c."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->getMappedTone(C)I

    move-result v2

    if-eq v2, v1, :cond_0

    const-string v0, "support_function_sound_tuning"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v3, "situation=13"

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLocalToneIfNeeded toneVolume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v3, v0}, Landroid/media/ToneGenerator;->setVolume(F)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mShortTone:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x78

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, v2, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method stopTone(Lcom/android/server/telecom/Call;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mShortTone:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    const-string v0, "stopTone: mToneGenerator == null."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "stopping local tone."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/DtmfLocalTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

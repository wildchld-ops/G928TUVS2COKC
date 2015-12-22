.class Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;
.super Ljava/lang/Object;
.source "CallTextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CallTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;Lcom/android/server/telecom/secutils/CallTextToSpeech$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;-><init>(Lcom/android/server/telecom/secutils/CallTextToSpeech;)V

    return-void
.end method

.method private shouldWaitUserResponse()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CallTextToSpeech"

    const-string v3, "shouldWaitUserResponse when Car mode is on"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :cond_0
    const-string v2, "enhanced_driving_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string v2, "ringtone_mute_gap"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onInit(I)V
    .locals 9

    const/4 v1, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CallTextToSpeech"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "previousLocale"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " country "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " voiceLocale "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v0, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "zh"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "enhanced_driving_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    array-length v5, v4

    if-ne v0, v5, :cond_3

    new-instance v0, Ljava/util/Locale;

    aget-object v2, v4, v7

    aget-object v3, v4, v8

    invoke-direct {v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "CallTextToSpeech"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " voicetalkLocale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    :goto_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_5

    :cond_1
    const-string v0, "CallTextToSpeech"

    const-string v1, "Language is not available. Set US as default."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # setter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z
    invoke-static {v0, v8}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    goto :goto_1

    :cond_5
    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInit...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # setter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->IsTtsInitiated:Z
    invoke-static {v0, v8}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1202(Lcom/android/server/telecom/secutils/CallTextToSpeech;Z)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1000(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v1

    # invokes: Lcom/android/server/telecom/secutils/CallTextToSpeech;->speakTts(I)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$900(Lcom/android/server/telecom/secutils/CallTextToSpeech;I)V

    goto :goto_2

    :cond_6
    const-string v0, "CallTextToSpeech"

    const-string v1, "Could not initialize TextToSpeech."

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_1
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x1

    const-string v0, "CallTextToSpeech"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted...TTS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    if-ne v0, v5, :cond_4

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->shouldWaitUserResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "remove_fade_effect_on_international_call_tts"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntIncomingCallVoiceNoti()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$700(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # operator++ for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsRepeatCount:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$708(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12c

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mInstance:Lcom/android/server/telecom/secutils/CallTextToSpeech;
    invoke-static {}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$300()Lcom/android/server/telecom/secutils/CallTextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$1300(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->stopTts()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mTtsId:I
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$800(Lcom/android/server/telecom/secutils/CallTextToSpeech;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    # getter for: Lcom/android/server/telecom/secutils/CallTextToSpeech;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CallTextToSpeech;->access$100(Lcom/android/server/telecom/secutils/CallTextToSpeech;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CallTextToSpeech$TtsListener;->this$0:Lcom/android/server/telecom/secutils/CallTextToSpeech;

    iget-object v1, v1, Lcom/android/server/telecom/secutils/CallTextToSpeech;->afChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    goto :goto_0
.end method

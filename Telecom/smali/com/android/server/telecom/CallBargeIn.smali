.class public Lcom/android/server/telecom/CallBargeIn;
.super Landroid/os/Handler;
.source "CallBargeIn.java"

# interfaces
.implements Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;


# instance fields
.field private mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

.field private mBargeInType:I

.field private mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mRinger:Lcom/android/server/telecom/Ringer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    iput-object p1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mRinger:Lcom/android/server/telecom/Ringer;

    return-void
.end method

.method private getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isVibrateMode(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CallBargeIn"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "CallBargeIn"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private manageRejectMessage()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "drivelink_rejectmessage_on"

    const-string v0, "drivelink_rejectmessage_body"

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarmodeHome()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "DRIVELINK_SETTINGS_REJECT_MESSAGE_ON"

    const-string v0, "DRIVELINK_REJECT_MESSAGE_BODY"

    :cond_0
    iget-object v4, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reject message mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when Car mode is on"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v4, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v5, v2, [I

    const/4 v6, 0x4

    aput v6, v5, v3

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private needStartBargeIn()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVoiceControlOn(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->hasRingingCallOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->needVibration()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkVoiceRecorder()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iget-object v3, v3, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v3}, Lcom/android/server/telecom/CallAudioManager;->isBluetoothDeviceAvailable()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needStartBargeIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    return v0
.end method

.method private needStartDialBargeIn()Z
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needStartDialBargeIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    return v2
.end method

.method private needVibration()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallBargeIn;->isVibrateMode(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/telecom/CallBargeIn;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vib_mode =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "vib when ring = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method


# virtual methods
.method public getBargeInGuideString()Ljava/lang/String;
    .locals 7

    const v1, 0x7f08002d

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "j_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f070000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v2, v6

    aput-object v4, v3, v6

    aget-object v2, v2, v5

    aput-object v2, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBargeInGuideString: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->setVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-wide/16 v6, 0x3e8

    const/16 v4, 0x8

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartIncomingBargeIn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->hasInCallUIWindowFocus()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHOW_BARGE_IN_NOTIFY - InCallUI has window focused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    const-string v1, "tablet_device"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const-string v0, "SHOW_BARGE_IN_NOTIFY - delay 1000"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    const/16 v0, 0x9b

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v0, "SHOW_BARGE_IN_NOTIFY -showBargeInNotification "

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->showBargeInNotification()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Still ringing state, try again"

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    const/16 v0, 0x99

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    iget v1, v0, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    if-eq v0, v4, :cond_0

    const-string v0, "TURN_ON_SPEAKER_FOR_BARGE_IN : turn on speaker"

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0, v4}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hideBargeInNotification()V
    .locals 2

    const/16 v1, 0x9b

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallBargeIn;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/CallBargeIn;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x7001

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-direct {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->isBargeInEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->InitBargeInRecognizer(Lcom/sec/android/app/IWSpeechRecognizer/IWSpeechRecognizerListener;)V

    const/16 v0, 0x9a

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    const-string v0, "onCreate(): bargeIn disabled.."

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    goto :goto_0
.end method

.method public needStartIncomingBargeIn()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v3, v1, [I

    const/4 v4, 0x5

    aput v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasRingingCall()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->getInstance()Lcom/android/server/telecom/secutils/AutoAnswer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/secutils/AutoAnswer;->isAutoAnswering()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needStartIncomingBargeIn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    move v2, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public onResults([Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWSpeechRecognizerListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getIntBargeInResult()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IWSpeechRecognizerListener : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v3, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isVideoCall(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mRinger:Lcom/android/server/telecom/Ringer;

    invoke-virtual {v1}, Lcom/android/server/telecom/Ringer;->earlyStopRinging()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    const-string v1, "answer call by Barge-In"

    invoke-direct {p0, v1, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v2, "com.android.phone"

    const-string v3, "ABVC"

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    const/16 v0, 0x99

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    const-string v0, "reject call by Barge-In"

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->manageRejectMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    new-array v1, v3, [I

    aput v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState([I)Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v4, v2}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendBargeInNotification()V
    .locals 3

    const/16 v2, 0x9b

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/CallBargeIn;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/CallBargeIn;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "locked - SHOW_BARGE_IN_NOTIFY -1st delay 2sec"

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_1
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showBargeInNotification()V
    .locals 8

    const-string v0, "support_second_screen"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->getBargeInGuideString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f02000f

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/app/Notification;->flags:I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.callsettings.AnsweringCall"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5, v2, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v1, 0x7001

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-string v0, "showBargeInNotification() complete."

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startBargeIn(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startBargeIn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iput p1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    iget-object v2, p0, Lcom/android/server/telecom/CallBargeIn;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->getDriveLinkLocale(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->startBargeIn(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBargeInType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopBargeIn()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBargeIn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->stopBargeIn()V

    iput v2, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    invoke-virtual {v0}, Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iput v2, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    goto :goto_0
.end method

.method public stopBargeIn(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopBargeIn : mBargeInType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bargeInType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInType:I

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    :cond_0
    return-void
.end method

.method public updateBargeInState()V
    .locals 2

    const-string v0, "updateBargeInState"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallBargeIn;->log(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallBargeIn;->mBargeInRecognizer:Lcom/sec/android/app/IWSpeechRecognizer/BargeInRecognizer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartBargeIn()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartIncomingBargeIn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->sendBargeInNotification()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->startBargeIn(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/CallBargeIn;->needStartDialBargeIn()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallBargeIn;->startBargeIn(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn()V

    goto :goto_0
.end method

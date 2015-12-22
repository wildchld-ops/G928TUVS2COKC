.class public Lcom/android/phone/operator/sec/SecCallNotifier;
.super Landroid/os/Handler;
.source "SecCallNotifier.java"

# interfaces
.implements Lcom/android/phone/operator/OperatorCallNotifier;


# static fields
.field private static isRegisterFwim:Z


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private final mApp:Lcom/android/phone/PhoneGlobals;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private final m_Fwim_Receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/operator/sec/SecCallNotifier;->isRegisterFwim:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1    # Lcom/android/phone/PhoneGlobals;
    .param p2    # Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "SecCallNotifier"

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGeneratorLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/phone/operator/sec/SecCallNotifier$3;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/sec/SecCallNotifier$3;-><init>(Lcom/android/phone/operator/sec/SecCallNotifier;)V

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->m_Fwim_Receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mApp:Lcom/android/phone/PhoneGlobals;

    iput-object p2, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecCallNotifier"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->registerForNotifications()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/operator/sec/SecCallNotifier;Ljava/lang/String;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/operator/sec/SecCallNotifier;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/operator/sec/SecCallNotifier;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGeneratorLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/operator/sec/SecCallNotifier;)Landroid/media/ToneGenerator;
    .locals 1
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/operator/sec/SecCallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    .locals 0
    .param p0    # Lcom/android/phone/operator/sec/SecCallNotifier;
    .param p1    # Landroid/media/ToneGenerator;

    iput-object p1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private onPhoneStateChanged()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phone state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fg call state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    const-string v7, "support_fwim"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SUPPORT_FWIM CallNotifier state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  isRegisterFwim : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/phone/operator/sec/SecCallNotifier;->isRegisterFwim:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_9

    sget-boolean v7, Lcom/android/phone/operator/sec/SecCallNotifier;->isRegisterFwim:Z

    if-nez v7, :cond_9

    const-string v7, "SUPPORT_FWIM CallNotifier m_Fwim_Receiver registerReceiver"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->m_Fwim_Receiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.intent.action.SS_INFO_FWIM_NSS_REL"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v10, Lcom/android/phone/operator/sec/SecCallNotifier;->isRegisterFwim:Z

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v10, :cond_1

    const/4 v7, 0x3

    if-eq v5, v7, :cond_1

    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_1
    const-string v7, "separate_ringback_gain"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_a

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_a

    const-string v7, "ringbacktone=on"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_3

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_4

    :cond_3
    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_5

    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-direct {p0, v2, v10}, Lcom/android/phone/operator/sec/SecCallNotifier;->playCallConnectTone(Landroid/content/Context;I)Z

    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const-string v7, "notify WFC about phone state change"

    invoke-direct {p0, v7}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/WfcCallNotifier;->onPhoneStateChanged(Lcom/android/internal/telephony/Call;)V

    :cond_7
    iput-object v4, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    const-string v7, "show_ota_popup"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string v7, "audio"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v7

    if-eq v7, v12, :cond_f

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_f

    const-string v7, "setting MODE_IN_CALL for OTA"

    invoke-direct {p0, v7}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v11, v12}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    invoke-virtual {v1, v12}, Landroid/media/AudioManager;->setMode(I)V

    const-string v7, "realcall=on"

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void

    :cond_9
    const-string v7, "SUPPORT_FWIM CallNotifier call state condition not registerReceiver"

    invoke-direct {p0, v7, v10}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_b

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_b

    const-string v7, "ringbacktone=off"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_2

    const-string v7, "ringbacktone=off"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0, v2, v11}, Lcom/android/phone/operator/sec/SecCallNotifier;->playCallConnectTone(Landroid/content/Context;I)Z

    goto :goto_2

    :cond_d
    if-ne v5, v12, :cond_5

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_e

    iget-object v7, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPreviousFgCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_5

    :cond_e
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v7, :cond_5

    invoke-direct {p0, v2, v11}, Lcom/android/phone/operator/sec/SecCallNotifier;->playCallConnectTone(Landroid/content/Context;I)Z

    goto/16 :goto_2

    :cond_f
    const-string v7, "setting MODE_NORMAL after OTA"

    invoke-direct {p0, v7}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Landroid/media/AudioManager;->setMode(I)V

    invoke-virtual {v1}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    const-string v7, "realcall=off"

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private playCallConnectTone(Landroid/content/Context;I)Z
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v3, 0x0

    const/4 v8, 0x1

    const-string v6, "call_conn_tone"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_conn_tone"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ge v7, v8, :cond_0

    const-string v0, "call connect tone is unchecked"

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v2, 0x7f080000

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/operator/sec/SecCallNotifier;->playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)V

    move v0, v8

    goto :goto_0
.end method

.method private playMediaTone(Landroid/content/Context;ILandroid/media/MediaPlayer$OnCompletionListener;ILandroid/media/MediaPlayer$OnErrorListener;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Landroid/media/MediaPlayer$OnCompletionListener;
    .param p4    # I
    .param p5    # Landroid/media/MediaPlayer$OnErrorListener;

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v6, 0x0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    if-nez p4, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_2
    :goto_2
    const-string v1, "support_function_sound_tuning"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioManager;

    const-string v1, "situation=14;device=0"

    invoke-virtual {v9, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "situation=14;device=0"

    invoke-virtual {v9, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playMediaTone->Call Connection Gain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "situation=14;device=0"

    invoke-virtual {v9, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    if-nez p3, :cond_4

    new-instance v7, Lcom/android/phone/operator/sec/SecCallNotifier$1;

    invoke-direct {v7, p0}, Lcom/android/phone/operator/sec/SecCallNotifier$1;-><init>(Lcom/android/phone/operator/sec/SecCallNotifier;)V

    move-object p3, v7

    :cond_4
    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    if-nez p5, :cond_6

    new-instance v1, Lcom/android/phone/operator/sec/SecCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/sec/SecCallNotifier$2;-><init>(Lcom/android/phone/operator/sec/SecCallNotifier;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    :goto_3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    const/16 v1, 0xb

    :try_start_4
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_5
    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_6
    :try_start_7
    invoke-virtual {v0, p5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_6
    const/4 v6, 0x0

    throw v1

    :catch_2
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_4

    :catch_3
    move-exception v8

    iget-object v1, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v2, "close failed:"

    const/4 v3, 0x1

    invoke-static {v1, v2, v8, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_5

    :catch_4
    move-exception v8

    iget-object v2, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->LOG_TAG:Ljava/lang/String;

    const-string v3, "close failed:"

    const/4 v4, 0x1

    invoke-static {v2, v3, v8, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)I

    goto :goto_6
.end method

.method private registerForNotifications()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "MSG_PRECISE_CALL_STATE_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->onPhoneStateChanged()V

    goto :goto_0

    :pswitch_1
    const-string v1, "PHONE_DISCONNECT"

    invoke-direct {p0, v1}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    const-string v1, "support_fwim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SUPPORT_FWIM CallStateMonitor.PHONE_DISCONNECT"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/phone/operator/sec/SecCallNotifier;->isRegisterFwim:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->m_Fwim_Receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "m_Fwim_Receiver not register"

    invoke-direct {p0, v1, v3}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateAfterRadioTechnologyChange()V
    .locals 1

    const-string v0, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-direct {p0, v0}, Lcom/android/phone/operator/sec/SecCallNotifier;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/sec/SecCallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/phone/operator/sec/SecCallNotifier;->registerForNotifications()V

    return-void
.end method

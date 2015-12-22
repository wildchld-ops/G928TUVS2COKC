.class public final Lcom/android/services/telephony/cdma/PstnCallNotifier;
.super Ljava/lang/Object;
.source "PstnCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;
    }
.end annotation


# static fields
.field static sVoiceCapable:Z


# instance fields
.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneBase:Lcom/android/internal/telephony/Phone;

.field private final mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private final mRATReceiver:Landroid/content/BroadcastReceiver;

.field private mSignalInfoToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier$1;-><init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/services/telephony/cdma/PstnCallNotifier$2;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier$2;-><init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mCallManager:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/services/telephony/cdma/PstnCallNotifier;->sVoiceCapable:Z

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->registerForNotifications()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->handlePhoneStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/cdma/PstnCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleDisconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/cdma/PstnCallNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->handleSignalInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->registerForNotifications()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/cdma/PstnCallNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->createSignalInfoToneGenerator()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/services/telephony/cdma/PstnCallNotifier;)Landroid/media/ToneGenerator;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    return-object v0
.end method

.method private createSignalInfoToneGenerator()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x50

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    const-string v1, "PstnCallNotifier"

    const-string v2, "CallNotifier: mSignalInfoToneGenerator created when toneplay"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PstnCallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CallNotifier: Exception caught while creating mSignalInfoToneGenerator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mSignalInfoToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0

    :cond_0
    const-string v1, "PstnCallNotifier"

    const-string v2, "mSignalInfoToneGenerator created already, hence skipping"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleDisconnect()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->onDisconnected()V

    return-void
.end method

.method private handleNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private handlePhoneStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->onPhoneStateChanged()V

    return-void
.end method

.method private handleSignalInfo(Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDisconnected()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->stopSignalInfoTone()V

    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ctc_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "no_alert_tone_signal"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v3}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->setSilence(Z)V

    :cond_1
    const-string v0, "enable_volte_hold_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PstnCallNotifier"

    const-string v1, "updatePhoneState : stopCallHoldTone"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    :cond_2
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setHasVzwVideoCall(Z)V

    :cond_3
    return-void
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    const-string v1, "PstnCallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewRingingConnection(): state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", conn = { "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PstnCallNotifier"

    const-string v2, "onNewRingingConnection(): connection not ringing!"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->stopSignalInfoTone()V

    goto :goto_0
.end method

.method private onPhoneStateChanged()V
    .locals 3

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->stopSignalInfoTone()V

    :cond_1
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    :cond_2
    return-void
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 12

    const/4 v11, 0x0

    sget-boolean v8, Lcom/android/services/telephony/cdma/PstnCallNotifier;->sVoiceCapable:Z

    if-nez v8, :cond_1

    const-string v8, "PstnCallNotifier"

    const-string v9, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->stopSignalInfoTone()V

    const-string v8, "usa_cdma_smc_fac_req"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "ctc_cdma_smc_fac_req"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "no_alert_tone_signal"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_2
    iget-object v8, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    const-string v8, "PstnCallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSignalInfo - state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v8, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v8, :cond_0

    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v8

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    iget-boolean v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    const-string v8, "PstnCallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSignalInfo: isPresent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const-string v8, "PstnCallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSignalInfo: uSignal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getSilence()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v11}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->setSilence(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/utils/SecTelecomAdapter;->restartRingingOrCallWaiting()V

    goto/16 :goto_0

    :cond_3
    iget-object v8, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    move-object v2, v8

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    if-eqz v2, :cond_0

    iget-boolean v1, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    const-string v8, "PstnCallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSignalInfo: isPresent="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    iget v7, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    iget v5, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    iget v6, v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    const-string v8, "PstnCallNotifier"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSignalInfo: uSignalType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uAlertPitch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", uSignal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7, v5, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v4

    const-string v8, "usa_cdma_smc_fac_req"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "ctc_cdma_smc_fac_req"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "no_alert_tone_signal"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {v7, v5, v6}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isCdmaStandardSignal(III)Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v0, 0x1

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    new-instance v8, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;

    invoke-direct {v8, p0, v4}, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;I)V

    invoke-virtual {v8}, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->start()V

    :cond_6
    invoke-static {v7, v5, v6}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->isCdmaSilenceSignal(III)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->setSilence(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/services/utils/SecTelecomAdapter;->silence()V

    goto/16 :goto_0

    :cond_7
    invoke-static {v7, v5, v6}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->ignoreSignalForTFN(III)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v11}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->setSilence(Z)V

    goto/16 :goto_0
.end method

.method private registerForNotifications()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->unregisterForNotifications()V

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneBase:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method stopSignalInfoTone()V
    .locals 3

    const-string v0, "PstnCallNotifier"

    const-string v1, "stopSignalInfoTone: Stopping SignalInfo tone player"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;

    const/16 v1, 0x62

    invoke-direct {v0, p0, v1}, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;-><init>(Lcom/android/services/telephony/cdma/PstnCallNotifier;I)V

    invoke-virtual {v0}, Lcom/android/services/telephony/cdma/PstnCallNotifier$SignalInfoTonePlayer;->start()V

    return-void
.end method

.method public teardown()V
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/cdma/PstnCallNotifier;->unregisterForNotifications()V

    iget-object v0, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mPhoneProxy:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/cdma/PstnCallNotifier;->mRATReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

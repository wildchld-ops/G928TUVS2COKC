.class public Lcom/android/server/telecom/secutils/SecCallsManagerListener;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "SecCallsManagerListener.java"


# instance fields
.field private final REDIAL_DELAY:I

.field private callBarringPass:Z

.field private mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

.field private mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

.field private mCall:Lcom/android/server/telecom/Call;

.field private mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOldState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->REDIAL_DELAY:I

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    iput-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->callBarringPass:Z

    new-instance v0, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener$1;-><init>(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/AutoRedial;

    invoke-direct {v0, p1}, Lcom/android/server/telecom/secutils/AutoRedial;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecCallsManagerListener;)Lcom/android/server/telecom/secutils/AutoRedial;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedial:Lcom/android/server/telecom/secutils/AutoRedial;

    return-object v0
.end method

.method private cancelBargeIn()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->hideBargeInNotification()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    :cond_0
    return-void
.end method

.method private runBargeIn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/CallBargeIn;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallBargeIn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->init()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallBargeIn;->updateBargeInState()V

    goto :goto_0
.end method

.method private sendOnDisconnected(Lcom/android/server/telecom/Call;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerInfo()Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/android/server/telecom/wearable/BluetoothVendorCommand;->sendOnDisconnected(Ljava/lang/String;)V

    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallAdded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/wearable/BluetoothVendorCommand;->sendIncomingVT()V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->runBargeIn()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/AutoAnswer;->getInstance()Lcom/android/server/telecom/secutils/AutoAnswer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/AutoAnswer;->checkAutoAnsweringMode(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    :cond_1
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getActiveCall(I)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "setLineCtrl to set call time title"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallRemoved : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->clearLGTSendEmptyFlashFlag()V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->sendOnDisconnected(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "onCallStateChanged %s -> %s, call: %s"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p3}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p3, v8, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    :cond_0
    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_6

    :cond_1
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneRelaxMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneRelaxMode()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_2
    const-string v0, "do not wakeUpScreen in carrier-phone relax mode"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasActiveOrHoldingCall()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/MinuteMinder;->stopMinuteMinderAlarm()V

    :cond_3
    const-string v0, "auto_redial_time_delay"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mAutoRedialTimeDelay:Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/secutils/AutoRedialTimeDelay;->startAutoRedialTimeDelay(Lcom/android/server/telecom/Call;I)V

    :goto_1
    const-string v0, "end_call_when_dial_e911"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dcm_emergency_conflict"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "non-e911 redialing..."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-static {v2, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sput-object v7, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    :cond_5
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v0, "VoLTE tc 14.2, redialing..."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    sget-object v3, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    invoke-static {v2, v3, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    sput-object v7, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    :cond_6
    if-ne p3, v8, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/MinuteMinder;->startMinuteMinderAlarm(Landroid/content/Context;)V

    :cond_7
    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    if-ne p3, v8, :cond_9

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    const-string v1, "call_answer_vib"

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_9
    if-ne p2, v6, :cond_a

    if-ne p3, v8, :cond_a

    const-string v0, "onCallStateChanged sendAcceptIntentForRecorder "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendAcceptIntentForRecorder(Landroid/content/Context;)V

    :cond_a
    const-string v0, "support_mobilecarrier"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x7

    if-eq p3, v0, :cond_b

    const/16 v0, 0x8

    if-ne p3, v0, :cond_17

    :cond_b
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-nez v0, :cond_c

    if-eqz v1, :cond_15

    :cond_c
    const-string v0, "another call disconnected!!"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    :goto_4
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    const/4 v1, 0x7

    if-eq p2, v1, :cond_f

    const/4 v1, 0x7

    if-ne p3, v1, :cond_f

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSplitFromConference(Lcom/android/server/telecom/Call;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getDisconnectForCallBarring()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_e
    const-string v0, "if conference call or end by callbarring, not vibration "

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    :goto_5
    if-eq p2, v6, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    :cond_10
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_photoring_mt_content_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_photoring_mt_content_url"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged url : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v2, "key_photoring_mt_content_url"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->cancelBargeIn()V

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->wakeUpScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_14
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCall:Lcom/android/server/telecom/Call;

    iput p2, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mOldState:I

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    const-string v0, "original call disconnected!! so carrier-phone variable initialize"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRejectMode(I)V

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneUpgradeInstallingState(I)V

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRADDialingToKorea(I)V

    goto/16 :goto_4

    :cond_16
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRejectMode(I)V

    goto/16 :goto_4

    :cond_17
    if-ne p2, v6, :cond_d

    if-eq p3, v6, :cond_d

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setTPhoneRelaxMode(I)V

    goto/16 :goto_4

    :cond_18
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {v4}, Lcom/android/services/telephony/common/SystemDBInterface;->setOllehPhoneRelaxMode(I)V

    goto/16 :goto_4

    :cond_19
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    const-string v1, "call_end_vib"

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    goto/16 :goto_5
.end method

.method public onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCallAnswered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mCallBargeIn:Lcom/android/server/telecom/CallBargeIn;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallBargeIn;->stopBargeIn(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.telecom.IncomingCallAnsweredDuringRecord"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallsManagerListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->sendAcceptIntentForRecorder(Landroid/content/Context;)V

    return-void
.end method

.class public Lcom/android/server/telecom/secutils/ErrorDialog;
.super Ljava/lang/Object;
.source "ErrorDialog.java"


# static fields
.field private static sIsSupportSecWFC:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

.field private mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsLastMoCallEmergency:Z

.field private mIsRegistServiceState:Z

.field private mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/telecom/secutils/ErrorDialog;->sIsSupportSecWFC:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mIsRegistServiceState:Z

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mIsLastMoCallEmergency:Z

    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$1;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$2;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->startCallAgain()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/ErrorDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->isSimReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->unregisterForServiceStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->registerForServiceStateChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->showAirplaneModeOffProgressDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/telecom/secutils/ErrorDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private finishActivity()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->unregisterForServiceStateChanged()V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getDefaultVoiceCallSubId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog$3;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$4;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    goto :goto_0
.end method

.method private isKeyguardLocked(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isKeyguardLocked - true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-string v0, "isKeyguardLocked - false"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneId :  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ErrorDialog"

    const-string v1, "isSimReady: registry is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v3

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    const-string v6, "E"

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v2

    :cond_2
    const-string v6, "ErrorDialog"

    const-string v7, "PhoneAccountHandle %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v0, "ErrorDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPhoneAccountReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    :goto_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method private outgoingCSVoicecallWithToast(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "ErrorDialog"

    const-string v1, "outgoingCSVoicecallWithToast"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeVideoCallExtra(Landroid/content/Intent;)V

    const-string v1, "cs_voice_call_outgoing"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "ErrorDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private sendRadioOnTimerMessageDelayed()V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simSlot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "simSlot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v3

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendRadioOnTimerMessageDelayed  subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->registerForServiceStateChanged()V

    const/16 v0, 0x4e20

    const-string v1, "single_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isLGTSIM()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v0, 0x7d00

    :cond_2
    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getDefaultVoiceCallSubId()I

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    goto :goto_1
.end method

.method private showAirplaneModeOffProgressDialog()V
    .locals 3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$9;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$9;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$10;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$10;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getWfcLastMoCallIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mIsLastMoCallEmergency:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->sendRadioOnTimerMessageDelayed()V

    const-string v0, "feature_tmo"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private showBlockVideoCallInRoamingAreaDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$18;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$18;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$17;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$17;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showTryCSVoicecallDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$16;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$16;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$15;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$15;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$14;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$14;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showTryVoicecallDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$13;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$13;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$12;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$12;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$11;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$11;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startCallAgain()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ErrorDialog"

    const-string v1, "STATE_IN_SERVICE : start call "

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ErrorDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string v0, "ErrorDialog"

    const-string v1, "startCallAgain intent == null"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private unregisterForServiceStateChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mSimPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismissAirplaneModeErrorDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isSpecificErrorDialog(I)Z
    .locals 1

    const v0, 0x7f080024

    if-eq p1, v0, :cond_0

    const v0, 0x7f080033

    if-eq p1, v0, :cond_0

    const v0, 0x7f080082

    if-eq p1, v0, :cond_0

    const v0, 0x7f080081

    if-eq p1, v0, :cond_0

    const v0, 0x7f080083

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiSimOnServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 8

    const-wide/16 v6, 0x7d0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x0

    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mIsLastMoCallEmergency:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/telecom/secutils/ErrorDialog;->sIsSupportSecWFC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->isImsRegisteredOverWifi(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "ErrorDialog"

    const-string v1, "onServiceStateChanged: STATE_OUT_OF_SERVICE: ignore the state change"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v0, "ErrorDialog"

    const-string v1, "onServiceStateChanged: STATE_OUT_OF_SERVICE: emergency mode for T-Mobile WFC"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_1
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->checkServiceInStateOfCurrentCall()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isIntent_PSVT(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailablePSVT()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ErrorDialog"

    const-string v1, "start IMS_REGISTRATION_TIMER_VT"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "feature_kor_open"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/server/telecom/operator/OperatorUtils;->isLGTSIM()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableVoLTE()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ErrorDialog"

    const-string v1, "start IMS_REGISTRATION_TIMER_VOLTE"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->isSimReady()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM is not ready.. : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->startCallAgain()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showAirplaneModeErrorDialog(I)V
    .locals 3

    const v0, 0x104000a

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$8;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$8;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog$7;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$7;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$6;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$6;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$5;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$5;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/ErrorDialog;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method public showSpecificErrorDialog(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "ErrorDialog"

    const-string v1, "showSpecificErrorDialog : There is no matched dialog "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    const-string v0, "ErrorDialog"

    const-string v1, "showSpecificErrorDialog : There is no matched dialog "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->showAirplaneModeErrorDialog(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->showTryVoicecallDialog(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->showTryCSVoicecallDialog(I)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->outgoingCSVoicecallWithToast(I)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/ErrorDialog;->showBlockVideoCallInRoamingAreaDialog(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f080024 -> :sswitch_0
        0x7f080033 -> :sswitch_1
        0x7f080081 -> :sswitch_3
        0x7f080082 -> :sswitch_2
        0x7f080083 -> :sswitch_4
    .end sparse-switch
.end method

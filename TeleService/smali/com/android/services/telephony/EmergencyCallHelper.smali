.class public Lcom/android/services/telephony/EmergencyCallHelper;
.super Ljava/lang/Object;
.source "EmergencyCallHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/EmergencyCallHelper$Callback;
    }
.end annotation


# static fields
.field public static TIME_BETWEEN_RETRIES_MILLIS:J


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNumRetriesSoFar:I

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1388

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/EmergencyCallHelper$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/EmergencyCallHelper$1;-><init>(Lcom/android/services/telephony/EmergencyCallHelper;)V

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-string v0, "EmergencyCallHelper constructor."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    const-string v0, "single_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isNoSim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_uicc_mobility"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x7d00

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    return-void

    :cond_1
    const-wide/16 v0, 0x3e80

    sput-wide v0, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/services/telephony/EmergencyCallHelper;Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/EmergencyCallHelper;->startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/EmergencyCallHelper;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;
    .param p1    # Landroid/telephony/ServiceState;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/EmergencyCallHelper;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->onRetryTimeout()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/services/telephony/EmergencyCallHelper;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/EmergencyCallHelper;Z)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/EmergencyCallHelper;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/EmergencyCallHelper;

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    return-void
.end method

.method private cancelRetryTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cleanup()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "cleanup()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    return-void
.end method

.method private isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 7
    .param p1    # I
    .param p2    # Lcom/android/internal/telephony/PhoneConstants$State;

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v4, :cond_0

    if-eqz p1, :cond_0

    if-eq p1, v5, :cond_0

    iget v4, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    if-ne v4, v6, :cond_6

    if-ne p1, v3, :cond_6

    :cond_0
    move v0, v3

    :goto_0
    const-string v4, "emergency_call_sprd_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p2, v4, :cond_2

    if-eqz p1, :cond_2

    if-ne p1, v5, :cond_1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    if-ne v4, v6, :cond_7

    if-ne p1, v3, :cond_7

    :cond_2
    move v0, v3

    :cond_3
    :goto_1
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isNoSim()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v4, 0x3

    if-eq p1, v4, :cond_8

    move v0, v3

    :cond_5
    :goto_2
    return v0

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method private onComplete(Z)V
    .locals 2
    .param p1    # Z

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/EmergencyCallHelper$Callback;->onComplete(Z)V

    :cond_0
    return-void
.end method

.method private onRetryTimeout()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const-string v2, "onRetryTimeout():  phone state = %s, service state = %d, retries = %d."

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v1, v0}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "onRetryTimeout: Radio is on. Cleaning up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0, v7}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNumRetriesSoFar is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mNumRetriesSoFar:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    const-string v2, "Hit MAX_NUM_RETRIES; giving up."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    goto :goto_0

    :cond_1
    const-string v2, "Trying (again) to turn on the radio."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    goto :goto_0
.end method

.method private onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1    # Landroid/telephony/ServiceState;

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v2, 0x0

    const-string v0, "onServiceStateChanged(), new state = %s."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged() state.getState() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/EmergencyCallHelper;->isOkToCall(ILcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "onServiceStateChanged: ok to call!"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "support_uicc_mobility"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v0

    if-eq v0, v3, :cond_0

    const-string v0, "onServiceStateChanged isIMSRegistered : false !"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->finishEmergencyRadioOnDialog()V

    invoke-direct {p0, v3}, Lcom/android/services/telephony/EmergencyCallHelper;->onComplete(Z)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    goto :goto_0

    :cond_4
    const-string v0, "onServiceStateChanged: not ready to call yet, keep waiting."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private powerOnRadio()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v2, "powerOnRadio()."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->registerForServiceStateChanged()V

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "==> Turning off airplane mode."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "==> (Apparently) not in airplane mode; manually powering radio on."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method private registerForServiceStateChanged()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->unregisterForServiceStateChanged()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private startRetryTimer()V
    .locals 4

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cancelRetryTimer()V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    sget-wide v2, Lcom/android/services/telephony/EmergencyCallHelper;->TIME_BETWEEN_RETRIES_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSequenceInternal(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const/4 v2, 0x0

    const-string v0, "startSequenceInternal()"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->cleanup()V

    iput-object p1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mCallback:Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Set ril.volte.911call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "ril.volte.911call"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->powerOnRadio()V

    invoke-direct {p0}, Lcom/android/services/telephony/EmergencyCallHelper;->startRetryTimer()V

    invoke-static {}, Lcom/android/phone/utils/EmergencyRadioOnDialogActivity;->startEmergencyRadioOnDialog()V

    return-void
.end method

.method private unregisterForServiceStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public sendECMPStateChangedMsg()V
    .locals 3

    const/4 v2, 0x6

    const-string v0, "sendECMPStateChangedMsg()..."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startTurnOnRadioSequence(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/EmergencyCallHelper$Callback;)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Phone;
    .param p2    # Lcom/android/services/telephony/EmergencyCallHelper$Callback;

    const-string v1, "startTurnOnRadioSequence"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/services/telephony/EmergencyCallHelper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.class public Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;
.super Ljava/lang/Object;
.source "SecConnectionServiceWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;
    }
.end annotation


# instance fields
.field private mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mHandler:Landroid/os/Handler;

.field private mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

.field private final mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;


# direct methods
.method public constructor <init>(Lcom/android/server/telecom/CallIdMapper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    new-instance v0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$1;-><init>(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Lcom/android/server/telecom/CallIdMapper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->onModifyCall(Lcom/android/server/telecom/Call;ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onModifyCall(Lcom/android/server/telecom/Call;ZILjava/lang/String;)V
    .locals 7

    const v6, 0x7f08007b

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v0, "SecConnectionServiceWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onModifyCall : isIncoming : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " callType : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Error : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz p4, :cond_16

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    :goto_0
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    :goto_1
    if-eqz p2, :cond_12

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-ne p3, v2, :cond_3

    :cond_0
    if-nez v0, :cond_2

    const-string v0, "SecConnectionServiceWrapper"

    const-string v2, "secCallExtra == null"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string v2, "SecConnectionServiceWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secCallExtra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " secCallExtra.getType() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f080079

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    :goto_4
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_3

    :cond_4
    const v0, 0x7f080078

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-ne v0, v5, :cond_9

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    if-nez p3, :cond_10

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    :cond_9
    :goto_5
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/telecom/secutils/SecInCallController;->onModifyCall(ZILjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "mpcs_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_5

    :cond_c
    const-string v0, "tmo_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v2, "%s"

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "Caller"

    :cond_d
    const v3, 0x7f080093

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const v0, 0x7f08007a

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    :goto_6
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    const-string v0, "ll_phone_os_up"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_3

    :cond_f
    invoke-static {v6}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto :goto_6

    :cond_10
    if-ne p3, v5, :cond_9

    const-string v0, "us_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "canada_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_11
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_5

    :cond_12
    if-lez v2, :cond_13

    invoke-static {p4, p3}, Lcom/android/server/telecom/secutils/TelecomUtils;->handleModifyCallException(Ljava/lang/String;I)V

    goto :goto_5

    :cond_13
    if-nez p3, :cond_9

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "feature_chn"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "feature_dcm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_14
    const v0, 0x7f08007c

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    goto/16 :goto_5

    :cond_15
    move-object v0, v1

    goto/16 :goto_1

    :cond_16
    move v2, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public answerRingingCallInUI()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/secutils/SecInCallController;->answerRingingCallInUI()V

    :cond_0
    return-void
.end method

.method public bind()V
    .locals 4

    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "bind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.services.utils.SEC_CONNECTION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.services.utils.SecConnectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_0
    return-void
.end method

.method public getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getParticipantsCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->getParticipantsCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSilence()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->getSilence()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostDialPause(Ljava/lang/String;CZ)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onPostDialPause : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/telecom/secutils/SecInCallController;->onPostDialPause(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPostDialPauseComplete(Ljava/lang/String;C)V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onPostDialPauseComplete : "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->getSecInCallController()Lcom/android/server/telecom/secutils/SecInCallController;

    move-result-object v0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, v1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/telecom/secutils/SecInCallController;->onPostDialPauseComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {p2}, Lcom/android/services/telephony/common/ISecConnectionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/services/telephony/common/ISecConnectionService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionServiceAdaper:Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper$SecConnectionServiceAdaper;

    invoke-interface {v0, v1}, Lcom/android/services/telephony/common/ISecConnectionService;->setSecConnectionServiceAdapter(Lcom/android/services/telephony/common/ISecConnectionServiceAdapter;)V

    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "onServiceConnected. - setSecConnectionServiceAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    return-void
.end method

.method public requestModifyCall(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isCriticalLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080079

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestModifyCall(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const v0, 0x7f080078

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionService;->requestModifyCall(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public requestOllehPhoneStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestOllehPhoneStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestRingtoneUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->requestRingtoneUri()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestTPhoneStart(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->requestTPhoneStart(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestTransfer(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1}, Lcom/android/services/telephony/common/ISecConnectionService;->transfer(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public respondModifyCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->respondModifyCall(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public respondModifyCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/services/telephony/common/ISecConnectionService;->respondModifyCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendEmptyFlash()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0}, Lcom/android/services/telephony/common/ISecConnectionService;->sendEmptyFlash()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAudioEffect(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    invoke-interface {v0, p1, p2}, Lcom/android/services/telephony/common/ISecConnectionService;->setAudioEffect(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unbind()V
    .locals 3

    const-string v0, "SecConnectionServiceWrapper"

    const-string v1, "unbind()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/SecConnectionServiceWrapper;->mSecConnectionService:Lcom/android/services/telephony/common/ISecConnectionService;

    :cond_0
    return-void
.end method

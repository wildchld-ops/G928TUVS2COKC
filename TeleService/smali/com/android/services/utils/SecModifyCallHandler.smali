.class public Lcom/android/services/utils/SecModifyCallHandler;
.super Landroid/os/Handler;
.source "SecModifyCallHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static isIncomingModifyCall:Z

.field public static isRequestingModifyCall:Z


# instance fields
.field private isCall:Z

.field public isSimulationModifyProcess:Z

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallID:Ljava/lang/String;

.field private mConnection:Lcom/android/services/telephony/TelephonyConnection;

.field private mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/services/utils/SecModifyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/services/utils/SecModifyCallHandler;->isRequestingModifyCall:Z

    sput-boolean v1, Lcom/android/services/utils/SecModifyCallHandler;->isIncomingModifyCall:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    iput-boolean v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->isSimulationModifyProcess:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object p1, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCallID:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/services/utils/SecModifyCallHandler;->registerForNotifications()V

    return-void
.end method

.method public static getInstance(Lcom/android/internal/telephony/Connection;)Lcom/android/services/utils/SecModifyCallHandler;
    .locals 2

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getSecModifyCallHandler()Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/services/utils/SecModifyCallHandler;
    .locals 2

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getSecModifyCallHandler()Lcom/android/services/utils/SecModifyCallHandler;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleModifyCallException(Landroid/os/AsyncResult;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x2

    aget v0, v3, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModifyCallException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModifyCallException ex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleModifyCallException nex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleModifyCallResult(Landroid/os/AsyncResult;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/services/utils/SecModifyCallHandler;->isRequestingModifyCall:Z

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    const-string v0, "0"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->handleModifyCallException(Landroid/os/AsyncResult;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleModifyCallResult : failed"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V

    :cond_0
    :goto_0
    if-nez p2, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleModifyCallResult isCall : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    iget-object v6, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v6}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setDowngradeCall(Z)V

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_1
    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleModifyCallResult newCallType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCallID:Ljava/lang/String;

    invoke-virtual {v1, v3, v5, p2, v0}, Lcom/android/services/utils/SecTelecomAdapter;->onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/phone/OllehPhoneService;->sendVideoCallResult(I)V

    goto :goto_0

    :cond_4
    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ne p2, v3, :cond_0

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleModifyCallResult : succeeded"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/TPhoneService;->getInstance()Lcom/android/phone/TPhoneService;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/phone/TPhoneService;->sendVideoCallResult(I)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOllehPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/OllehPhoneService;->getInstance()Lcom/android/phone/OllehPhoneService;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/phone/OllehPhoneService;->sendVideoCallResult(I)V

    goto :goto_2

    :cond_6
    move v3, v5

    goto/16 :goto_1
.end method

.method public static isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z
    .locals 14

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v0, "mtconference"

    const-string v10, "mt_conference_pref"

    const/4 v11, 0x5

    invoke-virtual {v3, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v10, "modifiable"

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v10, "mtconference"

    invoke-virtual {v2, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_0

    const-string v10, "true"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-eqz v5, :cond_1

    const-string v10, "true"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v7, 0x1

    :cond_1
    sget-object v10, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isMtConefrence mtconference :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isMtConefrence = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    sget-object v10, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isSessionModifyPossible supported :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v9
.end method

.method public static isSessionModifyPossible(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    return v1
.end method

.method private onIncomingModifyCall(Landroid/os/AsyncResult;)V
    .locals 16

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/services/utils/SecModifyCallHandler;->mCallID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    :cond_2
    sget-object v11, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v12, "onIncomingModifyCall - return"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    :cond_4
    if-eqz v3, :cond_5

    iget v7, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    :cond_5
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneMode()Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v7, :cond_6

    sget-object v11, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v12, "onIncomingModifyCall do not act(For carrier-phone mode)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, v4}, Lcom/android/internal/telephony/CallManager;->getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I

    move-result v8

    new-instance v11, Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-direct {v11}, Lcom/android/services/utils/SecUpgradeTonePlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    sget-object v11, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onIncomingModifyCall proposedCallType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v11, "us_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    const-string v11, "vzw_volte_ui"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    if-nez v7, :cond_8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_7

    const/4 v11, 0x2

    if-eq v8, v11, :cond_7

    const/4 v11, 0x1

    if-ne v8, v11, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/android/services/utils/SecModifyCallHandler;->respondModifyCall(ZLjava/lang/String;)V

    const/4 v1, 0x0

    :cond_9
    :goto_2
    if-nez v8, :cond_13

    const/4 v11, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    sget-object v11, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onIncomingModifyCall isCall : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v12}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v10

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->isCall:Z

    invoke-virtual {v10, v11}, Lcom/android/services/telephony/common/SecCallExtra;->setDowngradeCall(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v9, v11, v10}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_a
    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayStopped:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v11}, Lcom/android/services/utils/SecUpgradeTonePlayer;->startTone()V

    :cond_b
    const-string v11, "video_conference"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "ims_voice_conference"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    if-nez v8, :cond_d

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->destroyConferenceActivity()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mCallID:Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "0"

    invoke-virtual {v9, v11, v12, v8, v13}, Lcom/android/services/utils/SecTelecomAdapter;->onModifyCall(Ljava/lang/String;ZILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->isSimulationModifyProcess:Z

    if-eqz v11, :cond_f

    if-eqz v7, :cond_e

    const/4 v11, 0x3

    if-ne v8, v11, :cond_f

    :cond_e
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/services/utils/SecModifyCallHandler;->simulationModifyProgressing(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v11}, Lcom/android/services/utils/SecUpgradeTonePlayer;->releaseTone()V

    goto/16 :goto_0

    :cond_10
    const/4 v11, 0x3

    if-eq v8, v11, :cond_11

    const/4 v11, 0x2

    if-eq v8, v11, :cond_11

    const/4 v11, 0x1

    if-ne v8, v11, :cond_8

    :cond_11
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_12
    if-nez v7, :cond_9

    const/4 v11, 0x3

    if-ne v8, v11, :cond_9

    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v6

    :try_start_1
    sget-object v11, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onIncomingModifyCall CallStateException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v11}, Lcom/android/services/utils/SecUpgradeTonePlayer;->releaseTone()V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    :try_start_2
    const-string v11, "Failed to create ToneGenerator."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v11}, Lcom/android/services/utils/SecUpgradeTonePlayer;->releaseTone()V

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v12, :cond_14

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v12}, Lcom/android/services/utils/SecUpgradeTonePlayer;->releaseTone()V

    :cond_14
    throw v11
.end method


# virtual methods
.method public ReleaseUpgradeTonePlayer()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v0}, Lcom/android/services/utils/SecUpgradeTonePlayer;->stopTone()V

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayStopped:Z

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v0}, Lcom/android/services/utils/SecUpgradeTonePlayer;->releaseTone()V

    :cond_0
    return-void
.end method

.method public createModifyCallResultMessage(I)Landroid/os/Message;
    .locals 3

    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/services/utils/SecModifyCallHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    sget-object v1, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/services/utils/SecModifyCallHandler;->onIncomingModifyCall(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/services/utils/SecModifyCallHandler;->handleModifyCallResult(Landroid/os/AsyncResult;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public registerForNotifications()V
    .locals 3

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForConnectionTypeChangeRequest(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestModifyCall(I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/services/utils/SecModifyCallHandler;->isRequestingModifyCall:Z

    iget-object v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v5}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    :try_start_0
    iget-object v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {p0, p1}, Lcom/android/services/utils/SecModifyCallHandler;->createModifyCallResultMessage(I)Landroid/os/Message;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, p1, v7}, Lcom/android/internal/telephony/CallManager;->changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V

    sget-object v5, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestModifyCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->isSimulationModifyProcess:Z

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    :cond_2
    if-eqz v4, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-virtual {p0, v10}, Lcom/android/services/utils/SecModifyCallHandler;->simulationModifyProgressing(Z)V

    :cond_4
    return-void

    :catch_0
    move-exception v3

    sget-object v5, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while trying to requestModifyCall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public respondModifyCall(ZLjava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "ChangeCalltype"

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sput-boolean v8, Lcom/android/services/utils/SecModifyCallHandler;->isIncomingModifyCall:Z

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :try_start_0
    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "respondModifyCall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    invoke-virtual {v3}, Lcom/android/services/utils/SecUpgradeTonePlayer;->stopTone()V

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mSecUpgradeTonePlayer:Lcom/android/services/utils/SecUpgradeTonePlayer;

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/services/utils/SecUpgradeTonePlayer;->mPlayStopped:Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0, v2}, Lcom/android/internal/telephony/CallManager;->acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V

    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/CallManager;->rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIncomingModifyCall CallStateException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public simulationModifyProgressing(Z)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "simulationModifyProgressing"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "simulationModifyProgressing error!  secAdapter is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v4}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v3, Lcom/android/services/utils/SecModifyCallHandler;->LOG_TAG:Ljava/lang/String;

    const-string v4, "simulationModifyProgressing error!  secExtra is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    :goto_1
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    iget-object v3, p0, Lcom/android/services/utils/SecModifyCallHandler;->mConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1, v3, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    goto :goto_1
.end method

.method public unRegisterForNotifications()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/utils/SecModifyCallHandler;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForConnectionTypeChangeRequest(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

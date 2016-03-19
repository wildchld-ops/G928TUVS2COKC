.class public Lcom/android/services/utils/SecTelephonyUtil;
.super Ljava/lang/Object;
.source "SecTelephonyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/utils/SecTelephonyUtil$2;,
        Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    }
.end annotation


# static fields
.field private static BOOSTING_TIMEOUT:I

.field private static BOOSTING_TIMEOUT_FOR_TABLET:I

.field private static mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field public static mhFDNQueryHanlder:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const/16 v0, 0x7d0

    sput v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT:I

    const/16 v0, 0xfa0

    sput v0, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT_FOR_TABLET:I

    new-instance v0, Lcom/android/services/utils/SecTelephonyUtil$1;

    invoke-direct {v0}, Lcom/android/services/utils/SecTelephonyUtil$1;-><init>()V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    return-void
.end method

.method public static boostCPU()V
    .locals 11

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PhoneApp"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    if-lez v0, :cond_0

    aget v0, v7, v10

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_0
    sget v6, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT:I

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v6, Lcom/android/services/utils/SecTelephonyUtil;->BOOSTING_TIMEOUT_FOR_TABLET:I

    :cond_1
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    :try_start_0
    const-string v0, "SecTelephonyUtil"

    const-string v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    new-instance v0, Landroid/os/DVFSHelper;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PhoneApp"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v9

    if-eqz v9, :cond_3

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    aget v2, v9, v10

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    :cond_3
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "SecTelephonyUtil"

    const-string v1, "mCpuBooster.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil;->mCpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v8

    const-string v0, "SecTelephonyUtil"

    const-string v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v0, "SecTelephonyUtil"

    const-string v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static createFailedConnectionForOther(I)Landroid/telecom/Connection;
    .locals 8

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    const/4 v5, -0x1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/16 v0, 0x25

    if-ne p0, v0, :cond_1

    invoke-static {p0}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    const-string v0, "SecTelephonyUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createFailedConnectionForOther DisconnectCauseReason : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telecom/DisconnectCause;

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-string v4, "ILLEGAL_MS"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_3

    const-string v4, "ILLEGAL_ME"

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_4

    const-string v4, "NETWORK_REG_FAIL"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_5

    const-string v4, "LOCATION_REG_FAIL"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_6

    const-string v4, "LOCATION_REGSTERING"

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_7

    const-string v4, "IMSI_UNKNOWN"

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_8

    const-string v4, "FREQ_SEARCHING"

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_9

    const-string v4, "GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED"

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_a

    const-string v4, "GPRS_SERVICE_NOT_ALLOWED"

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_b

    const-string v4, "GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN"

    goto/16 :goto_0

    :cond_b
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_c

    const-string v4, "NOT_REGISTERED_NUMBER"

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_d

    const-string v4, "ETC_CAUSE_REJECT"

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_e

    const-string v4, "RESTRICT_CALL_FACTORY_MODE"

    goto/16 :goto_0

    :cond_e
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_f

    const-string v4, "IMS_NOT_REGISTERED"

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    invoke-virtual {v0}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-string v4, "RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA"

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x2b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown service state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;
    .locals 7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SecTelephonyUtil"

    const-string v1, "SIM_STATE_ABSENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    const/16 v4, 0x25

    invoke-static {v4}, Landroid/telephony/DisconnectCause;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2b

    const-string v1, "Phone is null"

    invoke-static {v0, v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method private static doCheckRtsState(ILandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 12

    const/4 v7, 0x0

    const/4 v11, 0x3

    if-ne p0, v11, :cond_1

    move-object v2, v7

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-nez p0, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getKorCallStateCode(ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v2

    const-string v8, "SecTelephonyUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RTSLOG : doCheckRtsState() korState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v6

    const-string v8, "feature_ktt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v2, :cond_3

    sget-object v8, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-eq v2, v8, :cond_3

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doCheckRtsState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/services/telephony/common/SystemDBInterface;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v8

    if-ne v8, v11, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_4
    const-string v8, "handle_not_registered"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    move-object v2, v7

    goto/16 :goto_0

    :cond_6
    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RTSLOG : doCheckRtsState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isDefaultIMEI()Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_7
    const-string v7, "gsm.sim.operator.numeric"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "ril.simtype"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "45001"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc

    if-ne v7, v8, :cond_8

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_CALL_FACTORY_MODE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v7

    if-ne v7, v11, :cond_b

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "feature_kor_open"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_a
    const-string v7, "feature_lgt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-eq v2, v7, :cond_b

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->RESTRICT_OUTGOING_VIDEOCALL_IN_ROAMING_AREA:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_b
    if-eqz v2, :cond_c

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    if-ne v2, v7, :cond_0

    :cond_c
    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0
.end method

.method private static getKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x2

    const/4 v5, 0x0

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_0

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    const/4 p1, 0x1

    :cond_1
    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getKTCallStatusCode() isSvc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRtsStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- isCSCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_a

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v6, :cond_3

    const-string v5, "SecTelephonyUtil"

    const-string v6, "SIM_STATE_ABSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    :goto_1
    return-object v5

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getKTCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_7

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_5

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_5

    move v0, v6

    :goto_2
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_4

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_4

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_6

    :cond_4
    move v7, v6

    :goto_3
    or-int/2addr v0, v7

    if-eqz v0, :cond_7

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move v7, v5

    goto :goto_3

    :cond_7
    if-nez v1, :cond_9

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v10, :cond_8

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_8

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_8

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_9

    :cond_8
    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_9
    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_a
    if-nez p1, :cond_b

    if-eqz v3, :cond_11

    :cond_b
    if-eqz v1, :cond_f

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_e

    move v0, v6

    :goto_4
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_c

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_c

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_d

    :cond_c
    move v5, v6

    :cond_d
    and-int/2addr v0, v5

    if-eqz v0, :cond_f

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_2
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_3
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_4
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_5
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_6
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_7
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_8
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_9
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_a
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_b
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_c
    aget-object v5, p0, v6

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_d
    aget-object v5, p0, v6

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_e
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :cond_e
    move v0, v5

    goto :goto_4

    :cond_f
    if-nez v1, :cond_10

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_2

    :cond_10
    if-eqz v1, :cond_11

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_1

    :sswitch_f
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_10
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_11
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_12
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_13
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_14
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_15
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_16
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_17
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_18
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_19
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_1a
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_1b
    if-nez p1, :cond_11

    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_1c
    aget-object v5, p0, v10

    aput-object v5, p0, v12

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    :sswitch_1d
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x16 -> :sswitch_5
        0xfe -> :sswitch_6
        0xff -> :sswitch_7
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0xb -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_d
        0x11 -> :sswitch_d
        0x16 -> :sswitch_d
        0xfe -> :sswitch_d
        0xff -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_f
        0x3 -> :sswitch_10
        0x6 -> :sswitch_11
        0x7 -> :sswitch_12
        0x8 -> :sswitch_13
        0xb -> :sswitch_13
        0xc -> :sswitch_13
        0xd -> :sswitch_13
        0xe -> :sswitch_12
        0xf -> :sswitch_13
        0x10 -> :sswitch_14
        0x11 -> :sswitch_14
        0x16 -> :sswitch_14
        0xfe -> :sswitch_15
        0xff -> :sswitch_16
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x2 -> :sswitch_17
        0x3 -> :sswitch_18
        0x6 -> :sswitch_19
        0x7 -> :sswitch_1b
        0x8 -> :sswitch_1a
        0xb -> :sswitch_1a
        0xc -> :sswitch_1a
        0xd -> :sswitch_1a
        0xe -> :sswitch_1b
        0xf -> :sswitch_1a
        0x10 -> :sswitch_1c
        0x11 -> :sswitch_1c
        0x16 -> :sswitch_1c
        0xff -> :sswitch_1d
    .end sparse-switch
.end method

.method private static getKorCallStateCode(ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getSKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getLGTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->getOPENCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLGTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 10

    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLGTCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLGTCallStatusCode() isSvc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- isCSCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- rtsValue[3]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v9, p0, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    const-string v7, "single_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isRoamingArea()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "SecTelephonyUtil"

    const-string v8, "LTE N/W."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const v8, 0x7f0a0473

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMS_NOT_REGISTERED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    :goto_0
    return-object v7

    :cond_0
    if-eqz v2, :cond_5

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    const-string v7, "SecTelephonyUtil"

    const-string v8, "SIM_STATE_ABSENT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_5

    const/4 v7, 0x1

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x1

    :goto_1
    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_2

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_2

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_4

    :cond_2
    const/4 v7, 0x1

    :goto_2
    or-int/2addr v1, v7

    if-eqz v1, :cond_5

    const-string v7, "SecTelephonyUtil"

    const-string v8, "FOLLOW_ON_REQ"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_6
    :goto_3
    if-eqz p1, :cond_f

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_b

    const/4 v1, 0x1

    :goto_4
    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x10

    if-eq v7, v8, :cond_7

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_7

    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_c

    :cond_7
    const/4 v7, 0x1

    :goto_5
    and-int/2addr v1, v7

    if-eqz v1, :cond_d

    const-string v7, "SecTelephonyUtil"

    const-string v8, "FOLLOW_ON_REQ"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_0
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_1
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_2
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_3
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_4
    const/4 v7, 0x4

    const/4 v8, 0x2

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_5
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_6
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_7
    const/4 v7, 0x4

    const/4 v8, 0x2

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_8
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_8
    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_9

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_9

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_9

    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_6

    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "single_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_6

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_a
    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_9
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_a
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_b
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_c
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_d
    const/4 v7, 0x4

    const/4 v8, 0x3

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_e
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_f
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_10
    const/4 v7, 0x4

    const/4 v8, 0x3

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_11
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_5

    :cond_d
    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "single_lte"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x3

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x13

    if-ne v7, v8, :cond_f

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x2

    aget-object v7, p0, v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    :sswitch_12
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_13
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_14
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_ME:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_15
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICES_AND_NON_GPRS_SERVICES_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_16
    const/4 v7, 0x4

    const/4 v8, 0x2

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_17
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_18
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_19
    const/4 v7, 0x4

    const/4 v8, 0x2

    aget-object v8, p0, v8

    aput-object v8, p0, v7

    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    :sswitch_1a
    sget-object v7, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->FREQ_SEARCHING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_5
        0x8 -> :sswitch_3
        0xb -> :sswitch_4
        0xc -> :sswitch_4
        0xd -> :sswitch_4
        0xe -> :sswitch_6
        0xf -> :sswitch_4
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x16 -> :sswitch_7
        0x5f -> :sswitch_8
        0x60 -> :sswitch_8
        0x61 -> :sswitch_8
        0x63 -> :sswitch_8
        0x6f -> :sswitch_8
        0xfe -> :sswitch_8
        0xff -> :sswitch_8
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_9
        0x3 -> :sswitch_a
        0x6 -> :sswitch_b
        0x7 -> :sswitch_e
        0x8 -> :sswitch_c
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0xe -> :sswitch_f
        0xf -> :sswitch_d
        0x10 -> :sswitch_10
        0x11 -> :sswitch_10
        0x16 -> :sswitch_10
        0xff -> :sswitch_11
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_13
        0x6 -> :sswitch_14
        0x7 -> :sswitch_17
        0x8 -> :sswitch_15
        0xb -> :sswitch_16
        0xc -> :sswitch_16
        0xd -> :sswitch_16
        0xe -> :sswitch_18
        0xf -> :sswitch_16
        0x10 -> :sswitch_19
        0x11 -> :sswitch_19
        0x16 -> :sswitch_19
        0xff -> :sswitch_1a
    .end sparse-switch
.end method

.method public static getNameFromFDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNameFromSDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const-string v5, "TFG"

    const-string v6, "ro.csc.sales_code"

    const-string v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v5, "SecTelephonyUtil"

    const-string v6, "sales version is TFG"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_0
    const/16 v5, 0x2de

    if-eq v1, v5, :cond_1

    const/16 v5, 0x14e

    if-eq v1, v5, :cond_1

    const/16 v5, 0x2e4

    if-eq v1, v5, :cond_1

    move-object v4, v3

    :goto_0
    return-object v4

    :cond_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil;->mhFDNQueryHanlder:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6, p0, v2}, Lcom/android/phone/FDNContactsCache;->queryFDNContactByNumber(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    invoke-static {v2}, Lcom/android/phone/FDNContactsCache;->getNameFromMsg(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    goto :goto_0
.end method

.method private static getOPENCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 13

    const/16 v12, 0x10

    const/4 v11, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x2

    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v2

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- isSvc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCSCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-eqz p1, :cond_5

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_1

    move v1, v5

    :goto_0
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v12, :cond_0

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_0

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_2

    :cond_0
    move v7, v5

    :goto_1
    and-int/2addr v1, v7

    if-eqz v1, :cond_3

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    :goto_2
    return-object v5

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_4
    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_a

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :pswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v5, :cond_6

    const-string v5, "SecTelephonyUtil"

    const-string v6, "SIM_STATE_ABSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getOPENCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_4

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_8

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_8

    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_8

    move v1, v5

    :goto_3
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v12, :cond_7

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_7

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_9

    :cond_7
    move v7, v5

    :goto_4
    or-int/2addr v1, v7

    if-eqz v1, :cond_4

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :cond_8
    move v1, v6

    goto :goto_3

    :cond_9
    move v7, v6

    goto :goto_4

    :cond_a
    aget-object v5, p0, v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v11, :cond_b

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b

    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_d

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_d

    :cond_b
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLTEDomain()Z

    move-result v5

    if-eqz v5, :cond_c

    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_1

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :sswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :sswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :cond_c
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5

    :sswitch_2
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ILLEGAL_MS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :sswitch_3
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :sswitch_4
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x6 -> :sswitch_0
        0x8 -> :sswitch_1
        0xb -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0xf -> :sswitch_1
        0xfe -> :sswitch_1
        0xff -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0xe -> :sswitch_3
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method private static getRtsValueForKor()[Ljava/lang/Integer;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x1

    const-string v3, "ril.skt.network_regist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Idle"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_0

    const-string v3, "SecTelephonyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRtsValueForKor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/Integer;

    const-string v3, ";"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v3, v2, v8

    const-string v4, "Status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    aget-object v3, v2, v6

    const-string v4, "Idle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aget-object v3, v2, v9

    const-string v4, "CS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v9

    aget-object v3, v2, v10

    const-string v4, "PS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v10

    const/4 v3, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getSKTCallStatusCode([Ljava/lang/Integer;ZLandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;
    .locals 13

    const/16 v12, 0x10

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x2

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v11, :cond_0

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_0

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_0

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v3, v6

    :goto_0
    invoke-static {p2}, Lcom/android/services/utils/SecTelephonyUtil;->isCSCall(Landroid/telecom/ConnectionRequest;)Z

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSKTCallStatusCode() isSvc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isRtsStatus = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- isCSCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    aget-object v7, p0, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_4

    move v0, v6

    :goto_1
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v12, :cond_1

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_1

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_2

    :cond_1
    move v5, v6

    :cond_2
    and-int/2addr v0, v5

    if-eqz v0, :cond_5

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    :goto_2
    return-object v5

    :cond_3
    move v3, v5

    goto/16 :goto_0

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    aget-object v5, p0, v10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_3
    const/4 v5, 0x0

    goto :goto_2

    :sswitch_0
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :sswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v6, :cond_7

    const-string v5, "SecTelephonyUtil"

    const-string v6, "SIM_STATE_ABSENT"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    const-string v7, "SecTelephonyUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getSKTCallStatusCode, isLimitedService = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    aget-object v7, p0, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_a

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_a

    aget-object v7, p0, v11

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v10, :cond_a

    move v0, v6

    :goto_4
    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eq v7, v12, :cond_8

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_8

    aget-object v7, p0, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x16

    if-ne v7, v8, :cond_9

    :cond_8
    move v5, v6

    :cond_9
    or-int/2addr v0, v5

    if-eqz v0, :cond_b

    const-string v5, "SecTelephonyUtil"

    const-string v6, "FOLLOW_ON_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->SUCCESS:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :cond_a
    move v0, v5

    goto :goto_4

    :cond_b
    if-eqz v3, :cond_c

    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :cond_c
    aget-object v5, p0, v11

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    sget-object v5, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static hasIMSCall()Z
    .locals 15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v12, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_2
    const-string v12, "SecTelephonyUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "hasIMSCall : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private static isCSCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v5, "sip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v5

    if-ne v5, v4, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public static isDefaultIMEI()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "357858010034783"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "000000000000000"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "004400152020002"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "SecTelephonyUtil"

    const-string v4, "International Mobile Equipment Identity is initial state"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_1
    const-string v3, "SecTelephonyUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDefaultIMEI : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isLGTSIM()Z
    .locals 5

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecTelephonyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ril.simtype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isLTEDomain()Z
    .locals 4

    const-string v0, ""

    const-string v1, "ril.reject.rat"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecTelephonyUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTSLOG : isLTEDomain() ril.reject.rat = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "L"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static preCheckRtsState(ILandroid/telecom/ConnectionRequest;)I
    .locals 5

    const-string v2, "feature_kor"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return p0

    :cond_1
    move v0, p0

    invoke-static {p0, p1}, Lcom/android/services/utils/SecTelephonyUtil;->doCheckRtsState(ILandroid/telecom/ConnectionRequest;)Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/services/utils/SecTelephonyUtil$2;->$SwitchMap$com$android$services$utils$SecTelephonyUtil$CallStatusCode:[I

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelephonyUtil$CallStatusCode;->ordinal()I

    move-result v0

    :goto_1
    const-string v2, "SecTelephonyUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preCheckRtsState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v0

    goto :goto_0

    :pswitch_0
    const-string v2, "SecTelephonyUtil"

    const-string v3, "success "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const-string v2, "SecTelephonyUtil"

    const-string v3, "emergency_only"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x25

    goto :goto_1

    :pswitch_2
    const-string v2, "SecTelephonyUtil"

    const-string v3, "out of service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const-string v2, "SecTelephonyUtil"

    const-string v3, "power off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static saveCallWaitingStatus(Z)V
    .locals 4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "call_waiting_enable_key"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SecTelephonyUtil"

    const-string v3, "failed to commit CallWaitingStatus preference"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static setIMSPreRegState()V
    .locals 5

    const-string v3, "single_lte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "feature_kor_open"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->isLGTSIM()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v3, "SecTelephonyUtil"

    const-string v4, "setIMSPreRegState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    :cond_3
    const-string v3, "SecTelephonyUtil"

    const-string v4, "set PreRegState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ril.ims.pre_regstate"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

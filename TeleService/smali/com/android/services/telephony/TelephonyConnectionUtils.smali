.class public Lcom/android/services/telephony/TelephonyConnectionUtils;
.super Ljava/lang/Object;
.source "TelephonyConnectionUtils.java"


# static fields
.field private static SERVICE_TYPE_MODIFIED_CALL:I

.field private static mCSVideoCall:Z

.field private static mCallHoldPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCSVideoCall:Z

    const/16 v0, 0x1f

    sput v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->SERVICE_TYPE_MODIFIED_CALL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TTYNotification(Lcom/android/internal/telephony/Call;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->TTYNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    return v0
.end method

.method public static TTYNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "TTYNotification()"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "vzw_volte_ui"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setTtyNotification(I)V

    const-string v2, "ttytype"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setTtyType(I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static applyOperatorCapabilities(ILcom/android/services/telephony/TelephonyConnection;)I
    .locals 2

    move v0, p0

    invoke-static {p1}, Lcom/android/services/utils/SecModifyCallHandler;->isSessionModifyPossible(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :cond_0
    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAvailableAddUser(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static checkAdditionalFailedState(Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)I
    .locals 2

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCSVTRequest(Landroid/telecom/ConnectionRequest;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->is2GNetwork(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static checkAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 14

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_12

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v9, :cond_4

    invoke-static {v0, v8}, Lcom/android/services/telephony/TelephonyConnectionUtils;->TTYNotification(Lcom/android/internal/telephony/Call;Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-eqz v8, :cond_3

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSessionId(Lcom/android/internal/telephony/CallDetails;)I

    move-result v9

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getSessionId()I

    move-result v10

    if-eq v9, v10, :cond_3

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    :cond_3
    const-string v9, "callmodifystatus"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "modify_call_us"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    if-eqz v3, :cond_14

    if-nez v4, :cond_4

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    :cond_4
    :goto_1
    const-string v9, "enable_conference_info_banner"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v8, :cond_5

    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "secCallExtra.isVolteConference() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mtconference : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mtconference"

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_5

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v9

    const-string v10, "true"

    const-string v11, "mtconference"

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eq v9, v10, :cond_5

    const/4 v4, 0x1

    :cond_5
    const-string v9, "call_details_for_hd_icon"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v8, :cond_6

    invoke-static {v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getHdIcon(Lcom/android/internal/telephony/Connection;)I

    move-result v2

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v9

    if-eq v2, v9, :cond_6

    if-nez v4, :cond_6

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    :cond_6
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    if-nez v4, :cond_7

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getVideoResolution()I

    move-result v9

    const-string v10, "resolution"

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSecVideoResolution(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_7

    const/4 v4, 0x1

    :cond_7
    const-string v9, "cdnip_supplementary_service"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    if-nez v4, :cond_8

    if-eqz v8, :cond_8

    invoke-static {v8, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateCdnipNumber(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v4, 0x1

    :cond_8
    const-string v9, "disable_waiting_tone"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v4, :cond_9

    if-eqz v8, :cond_9

    invoke-static {v8, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateCWToneSignal(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v4, 0x1

    :cond_9
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v9, :cond_d

    if-eqz v8, :cond_d

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_b

    :cond_a
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    :cond_b
    if-eqz v8, :cond_c

    invoke-static {v8, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    const/4 v4, 0x0

    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "updateSecCallExtra for srvcc"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_c
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->onEpdgStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_d
    const-string v9, "radiotech"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "epdg"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    if-eqz v8, :cond_10

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    const-string v9, "lte"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_e
    if-eqz v8, :cond_f

    invoke-static {v8, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    const/4 v4, 0x0

    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "updateSecCallExtra for epdg"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_f
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->onEpdgStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_10
    if-eqz v4, :cond_11

    invoke-static {v8, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v9

    invoke-virtual {v9, p0, v8}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_11
    :goto_2
    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndUpdate : state["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] callType["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] domain["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] callmodifystatus["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "callmodifystatus"

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getHasBeenVideoCall()Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/TelephonyConnection;->setHasBeenVideoCall(Z)V

    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "setHasBeenVideoCall is set for capability"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkAndUpdate : Updated["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    if-eqz v8, :cond_16

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v8}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v10

    if-eq v9, v10, :cond_16

    const-string v9, "ui_for_kor"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-static {v8, p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->saveModifiedCallLog(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v8

    :cond_15
    if-nez v4, :cond_16

    if-eqz v8, :cond_16

    const/4 v4, 0x1

    :cond_16
    const-string v9, "video_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_17
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v9, v10, :cond_4

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    if-nez v4, :cond_4

    if-eqz v8, :cond_4

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_18
    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "could not update secCallextra"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public static createDisconnecCausetReason(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v2

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getSipErrorCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public static createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SystemDBInterface;->isAirplainModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    const-string v1, "ServiceState.STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->createFailedConnectionForPhoneIsNull()Landroid/telecom/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public static destroyConferenceActivity()V
    .locals 1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->onConferenceActivityDestroy()V

    :cond_0
    return-void
.end method

.method public static dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/telecom/ConnectionRequest;)Lcom/android/internal/telephony/Connection;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v3, 0x3

    :cond_0
    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v4, 0x2

    :cond_1
    const/4 v5, 0x0

    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    const-string v2, "participants=unknown"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v2

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;III[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-eqz v9, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/internal/telephony/Connection;->setVideoState(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v9

    :cond_4
    const-string v0, "video_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ims_voice_conference"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isOutngoingConfCall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    const-string v2, "participants=unknown"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    goto :goto_0

    :cond_6
    const-string v0, "ims_support_multimedia_caller_id"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v7, 0x0

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v7

    :cond_7
    invoke-static {}, Lcom/android/phone/photoring/PhotoRingMgr;->getInstance()Lcom/android/phone/photoring/PhotoRingMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/photoring/PhotoRingMgr;->getAlertInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/photoring/PhotoringUtil;->getContentUrl()Ljava/lang/String;

    move-result-object v8

    const-string v12, "letter"

    const-string v11, "="

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v8, :cond_9

    if-eqz v7, :cond_8

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alertinfo"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    goto/16 :goto_0

    :cond_8
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "alertinfo"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    goto/16 :goto_0

    :cond_9
    if-eqz v7, :cond_2

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    goto/16 :goto_0

    :cond_a
    const-string v0, "ims_call_message"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Lcom/android/services/telephony/common/SecCallExtra;->getOutgoingCallMessage()Ljava/lang/String;

    move-result-object v7

    :cond_b
    const-string v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_2

    const-string v12, "letter"

    const-string v11, "="

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v5, v0

    const-string v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extras[0] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial, phone.dial exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v10, v0, v1}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v10
.end method

.method private static displaySSInfo(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 3

    iget v1, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileOriginated(I)V

    invoke-static {p0, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileOriginatedMessage(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileTerminated(I)V

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileTerminatedMessage(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyHoldStateOfTheOtherParty(ILjava/lang/String;)V

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->notifyCallIsConfParticipant(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private static existVoLTEVoiceCall()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "existVoLTEVoiceCall true"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "existVoLTEVoiceCall false"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getCallForHoldTone()Lcom/android/internal/telephony/Call;
    .locals 5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "TelephonyConnectionUtils"

    const-string v3, "no foreground call"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getHdIcon(Lcom/android/internal/telephony/Connection;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "hdicon"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHdIcon - hdIcon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHdIcon - showHDIcon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method public static getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-nez p0, :cond_2

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v5

    goto :goto_0
.end method

.method private static getSecCallExtraFromNumber(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    move-object v3, v2

    goto :goto_0
.end method

.method private static getSecVideoResolution(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x1

    const-string v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecVideoResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "qcif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "qvga"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "hd"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v1, "hd_land"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "cif"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    const-string v1, "hd720"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0
.end method

.method public static getSessionId(Lcom/android/internal/telephony/CallDetails;)I
    .locals 6

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v3, "sessionId"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_1
    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSessionId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 4

    const-string v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTelephonyConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Ljava/lang/String;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasRingingVideoCallWithMultipartyCall(Lcom/android/internal/telephony/Phone;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v0, :cond_1

    iget v6, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    iget v6, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    move v1, v4

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v6, "TelephonyConnectionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasRingingVideoCallWithMultipartyCall "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1
    move v1, v5

    goto :goto_0
.end method

.method private static is2GNetwork(Lcom/android/internal/telephony/Phone;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Currently connected network Tech. type is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method public static isAutoRejectCall(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isAutoRejectCall()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isAvailableAddUser(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_1

    const-string v4, "video_conference"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ims_voice_conference"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-static {v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    const-string v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAvailableAddUser - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_2
    if-eqz v1, :cond_1

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "TelephonyConnectionUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAvailableAddUser() toCallType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v4, v5, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "skt_conf_support"

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isCSVTRequest(Landroid/telecom/ConnectionRequest;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    sput-boolean v5, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCSVideoCall:Z

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v2

    if-ne v2, v4, :cond_0

    const/4 v0, 0x1

    sput-boolean v4, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCSVideoCall:Z

    :cond_0
    const-string v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCSVTRequest : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static isCSVideoCall()Z
    .locals 1

    sget-boolean v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCSVideoCall:Z

    return v0
.end method

.method public static isCdmaSubscriptionNv(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getServiceState()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "subscription_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "E"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    if-ne v0, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isCshRunning(Landroid/content/Context;)Z
    .locals 6

    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ComponentInfo{com.samsung.rcs/com.samsung.rcs.share.ContentShareActivity}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isImsCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLowBatt()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "isLowBatt error!  secAdapter is null"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/services/utils/SecTelecomAdapter;->isLowBatt()Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static isNoSim()Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isOutngoingConfCall(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "\\$"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "silent_redial"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    const-string v7, "TelephonyConnectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPhoneTypeChanged - callState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v7, :cond_0

    instance-of v7, p0, Lcom/android/services/telephony/GsmConnection;

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v6, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isImsCall(Lcom/android/services/telephony/common/SecCallExtra;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v1

    const-string v7, "TelephonyConnectionUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isPhoneTypeChanged - isImsCallExtra : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / isImsCall : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    const-string v7, "TelephonyConnectionUtils"

    const-string v8, "isPhoneTypeChanged : GSM -> CDMA"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, v6}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V

    move v5, v6

    goto/16 :goto_0
.end method

.method public static isPhoneTypeChangedCall(Landroid/telecom/ConnectionRequest;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getPhoneTypeChanged()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTWTWM()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x0

    const-string v3, "common_volte_tw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "46697"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private static isTtyType(Lcom/android/internal/telephony/Call;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "TTY_OFF"

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isTtyType(Lcom/android/internal/telephony/Call;ILjava/lang/String;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    const-string v6, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTtyType CALL_DOMAIN_PS : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v3, v9, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v6, v3, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v3, v9, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "preferred_tty_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ttytype"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TelephonyConnectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isTtyType callDetailsTtyType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", preferredTtyMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    const-string v3, "TelephonyConnectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isIncoming... preferredTtyMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / callDetailsTtyType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p1, v2, :cond_1

    const-string v3, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TelephonyConnectionUtils"

    const-string v6, "isTtyType and return"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v3, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v4

    :cond_0
    move v3, v5

    goto/16 :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public static makeIncomingConnection(Landroid/telecom/Connection;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 3

    move-object v0, p0

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setVideoState(I)V

    :cond_0
    return-object v0
.end method

.method public static makeIncomingSecCallExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {p0, p1}, Lcom/android/services/utils/AutoRejectUtils;->getAutoRejectBundleExtra(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v2}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    const-string v4, "TelephonyConnectionUtils"

    const-string v5, "this is waiting call, add secExtra"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lcom/android/services/telephony/common/SecCallExtra;->setWaitingCall(Z)V

    :cond_1
    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TelephonyConnectionUtils"

    const-string v5, "For multisim models, add subId secExtra"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setSubId(I)V

    :cond_2
    invoke-virtual {v2, v8}, Lcom/android/services/telephony/common/SecCallExtra;->setReceivedCall(B)V

    invoke-static {v2, p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v4

    return-object v4
.end method

.method private static notifyCallIsConfParticipant(ILjava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x4

    if-eq p0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "notifyCallIsConfParticipant"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "notifyCallIsConfParticipant error!  connection is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "notifyHoldStateOfTheOtherParty error!  secExtra is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setConfParticipant(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static notifyEccCallStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "notifyEccCallStateChanged"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "notifyEccCallStateChanged  connection is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "notifyEccCallStateChanged error!  secExtra is null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setUpdateEmerencyCallState(Z)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static notifyHoldStateOfTheOtherParty(ILjava/lang/String;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "TelephonyConnectionUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyHoldStateOfTheOtherParty "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    const/4 v6, 0x2

    if-eq p0, v6, :cond_0

    const/16 v6, 0x20

    if-ne p0, v6, :cond_3

    :cond_0
    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getOriginalConnectionByNumber(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionService;->getInstance()Lcom/android/services/telephony/TelephonyConnectionService;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/services/telephony/TelephonyConnectionService;->getTelephonyConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/TelephonyConnection;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_4

    const-string v6, "TelephonyConnectionUtils"

    const-string v7, "notifyHoldStateOfTheOtherParty error!  connection is null"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_3
    const/4 v6, 0x3

    if-eq p0, v6, :cond_1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v6, "TelephonyConnectionUtils"

    const-string v7, "notifyHoldStateOfTheOtherParty error!  secExtra is null"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v6, v7, v8}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v3, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setHoldStateOfTheOtherParty(B)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_1
.end method

.method public static onEpdgStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 6

    const/4 v5, 0x1

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "onEpdgStateChanged"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/utils/SecTelecomAdapter;->onEpdgStateChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 8

    const/4 v7, 0x1

    const-string v2, "TelephonyConnectionUtils"

    const-string v3, "onLineCtrlEvent"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    :cond_0
    invoke-virtual {v0, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setLineCtrl(Z)V

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "call_answer_vib"

    invoke-static {v2, v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public static onSSInfo(Landroid/os/AsyncResult;)V
    .locals 6

    const/4 v5, 0x1

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "onSSInfo()..."

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->displaySSInfo(Landroid/content/Context;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    invoke-static {}, Lcom/android/services/utils/SSInfoManager;->getInstance()Lcom/android/services/utils/SSInfoManager;

    move-result-object v1

    iget v2, v0, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SSInfoManager;->onSSInfo(I)V

    return-void
.end method

.method private static playCallHoldTone()V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/services/utils/SecTelecomAdapter;->setOtherPartyHold(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getCallForHoldTone()Lcom/android/internal/telephony/Call;

    move-result-object v7

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "Playing holding call tone"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTECall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "hold tone is ringing already"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-class v1, Lcom/android/services/telephony/TelephonyConnectionUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    :try_start_1
    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_6

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "afd is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_4

    :try_start_2
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    :try_start_4
    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :try_start_5
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/services/telephony/TelephonyConnectionUtils$1;

    invoke-direct {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_7

    :try_start_6
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_2
    move-exception v8

    :try_start_7
    const-string v0, "TelephonyConnectionUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallHoldPlayer exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v6, :cond_8

    :try_start_8
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_8
    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v9

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "close failed:"

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v9, v2, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_9
    :goto_5
    const/4 v6, 0x0

    throw v0

    :catch_4
    move-exception v9

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "close failed:"

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v9, v3, v12

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public static preCheckAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "preCheckAndUpdate"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "cdnip_supplementary_service"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v2, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateCdnipNumber(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v3, "disable_waiting_tone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    invoke-static {v2, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateCWToneSignal(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static saveModifiedCallLog(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 18

    const-string v13, "TelephonyConnectionUtils"

    const-string v14, "saveModifiedCallLog"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_1

    const-string v13, "TelephonyConnectionUtils"

    const-string v14, "onModifiedCall error. secCallExtra is null"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getModifiedTimeMillis()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-nez v13, :cond_6

    move-wide v2, v4

    :goto_1
    cmp-long v13, v8, v4

    if-lez v13, :cond_2

    sub-long v2, v6, v8

    :cond_2
    const-wide/16 v14, 0x3e8

    rem-long v14, v2, v14

    sub-long/2addr v6, v14

    sget-object v13, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedLogType(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getLogServiceType()I

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setInitModifiedLogType(I)V

    sget v13, Lcom/android/services/telephony/TelephonyConnectionUtils;->SERVICE_TYPE_MODIFIED_CALL:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/services/telephony/common/SecCallExtra;->setLogServiceType(I)V

    :cond_3
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v13, v0, v1}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_4
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/services/utils/SecTelecomAdapter;->saveModifiedCallLog(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setModifiedTimeMillis(J)V

    goto :goto_0

    :cond_6
    sub-long v2, v6, v4

    goto :goto_1
.end method

.method public static saveParticipantLog(Ljava/lang/String;JJ)V
    .locals 7

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/services/utils/SecTelecomAdapter;->saveParticipantLog(Ljava/lang/String;JJ)V

    return-void
.end method

.method public static setAudioEffect(Z)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setAudioEffect(Z)V

    return-void
.end method

.method public static setConnectionCallId(Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V
    .locals 6

    const/4 v5, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    const-string v1, "TelephonyConnectionUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConnectionCallId. secCallExtra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setCallId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setEcholocateCallState(ILandroid/net/Uri;II)V
    .locals 1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/services/utils/SecTelecomAdapter;->setEcholocateCallState(ILandroid/net/Uri;II)V

    return-void
.end method

.method public static setPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setPhoneTypeChanged(I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    :cond_0
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public static setSecCallExtraFromCallDetails(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static startCallVibration(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v4, "call_answer_vib"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "call_end_vib"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ge v1, v3, :cond_2

    :goto_0
    return v2

    :cond_1
    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "startCallVibration : There are no machted type "

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    new-instance v0, Landroid/os/SystemVibrator;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/SystemVibrator;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/os/SystemVibrator;->vibrateImmVibe(II)V

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static stopCallHoldTone()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/services/utils/SecTelecomAdapter;->setOtherPartyHold(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "Stopping call holding tone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnectionUtils;->mCallHoldPlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_2
    const-string v0, "TelephonyConnectionUtils"

    const-string v1, "Not stopping call hold tone"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static suppServiceNotificationMobileOriginated(I)V
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static suppServiceNotificationMobileOriginatedMessage(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const-string v1, "disable_toast_popup_when_mo_ccf"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, p1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->displayLongToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static suppServiceNotificationMobileTerminated(I)V
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "enable_volte_hold_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTWTWM()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->playCallHoldTone()V

    goto :goto_0

    :sswitch_2
    const-string v0, "enable_volte_hold_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTWTWM()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    goto :goto_0

    :sswitch_3
    const-string v0, "enable_volte_hold_tone"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->stopCallHoldTone()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_3
    .end sparse-switch
.end method

.method private static suppServiceNotificationMobileTerminatedMessage(Landroid/content/Context;I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "vzw_volte_ui"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    if-ne p1, v6, :cond_2

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->existVoLTEVoiceCall()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VZW concept no toast : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "ims_rcs"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne p1, v6, :cond_3

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isCshRunning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.rcs.contentsharing.action.DISCONNECT_SHARE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    array-length v2, v1

    if-ge p1, v2, :cond_1

    aget-object v2, v1, p1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->displayLongToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static suppServiceNotificationMobileTerminatedMessage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileTerminatedMessage(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSecCallExtraFromNumber(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHoldStateOfTheOtherParty()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "TelephonyConnectionUtils"

    const-string v2, "show toast for first MT_CODE_CALL_ON_HOLD_WITHOUT_TONE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->suppServiceNotificationMobileTerminatedMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static updateCWToneSignal(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCWToneSignal()I

    move-result v1

    const-string v2, "TelephonyConnectionUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCWToneSignal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getCWToneSignal()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setCWToneSignal(I)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static updateCdnipNumber(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v2, v1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- cdnipNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCdnipNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/common/SecCallExtra;->setCdnipNumber(Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public static updateEpdgStateBeforeDial(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/TelephonyConnection;Landroid/telecom/ConnectionRequest;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/LegacyIms;->isWfcRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "updateEpdgStateBeforeDial error!  secCallExtra is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v7}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const-string v3, "TelephonyConnectionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEpdgStateBeforeDial. isWfcRegistered : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v3, "TelephonyConnectionUtils"

    const-string v4, "updateEpdgStateBeforeDial error!  secAdapter is null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/services/utils/SecTelecomAdapter;->onEpdgStateChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateIMSCapabilities(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Lcom/android/phone/ims/IMSCapabilityService;->getInstance()Lcom/android/phone/ims/IMSCapabilityService;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSCapabilityService;->getInstance()Lcom/android/phone/ims/IMSCapabilityService;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/phone/ims/IMSCapabilityService;->getCapabilities(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->onConferenceDisconnect(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->onConferenceStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0
.end method

.method public static updateRecordSaveFilePath(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/PhoneVoiceRecorder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordedCallId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TelephonyConnectionUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- updateRecordSaveFilePath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/SecCallExtra;->getRecordSaveFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "TelephonyConnectionUtils"

    const-string v6, "- updateRecordSaveFilePath : recordSaveFilePath is exist"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setRecordSaveFilePath(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lcom/android/services/utils/SecTelecomAdapter;->setSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    goto :goto_0
.end method

.method public static updateSecCallExtraFromCallDetails(Lcom/android/services/telephony/common/SecCallExtra;Lcom/android/internal/telephony/Connection;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 14

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    :cond_0
    if-nez p0, :cond_2

    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "updateSecCallExtraFromCallDetails secCallExtra null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :cond_1
    :goto_0
    return-object p0

    :cond_2
    if-eqz v1, :cond_1

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getSessionId(Lcom/android/internal/telephony/CallDetails;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setSessionId(I)V

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    :goto_1
    const-string v9, "radiotech"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "radioTech = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "epdg"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    :goto_2
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    :cond_3
    const-string v9, "TelephonyConnectionUtils"

    const-string v10, "setHasBeenVideoCall is set by video"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->setHasBeenVideoCall()V

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setHasVzwVideoCall(Z)V

    :cond_4
    const-string v9, "callmodifystatus"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "modify_call_us"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_15

    if-eqz v6, :cond_15

    const-string v9, "cms_moprogress"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    :cond_5
    :goto_3
    const-string v9, "concept_usa_att"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_14

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    :cond_6
    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallDetails;->toCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v9, v10, :cond_8

    const-string v9, "video_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCall(B)V

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setNameForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setNumberForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setFirstCallerForIMSConference(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getStateChanged()Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceStateChanged(Z)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setAliveParticipantNumber(Ljava/lang/String;)V

    const-string v9, "ims_voice_conference_cmcc_tbd"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveStateCount()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantCount(I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumberArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantNumber([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNameArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantName([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantPhotoUriArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantPhotoUri([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantLookupKeyArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantLookupKey([Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantStateArray()[I

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantState([I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantStatusArray()[I

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantStatus([I)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantCreateTimeArray()[J

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantCreateTime([J)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantStartDurationArray()[J

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantStartDuration([J)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantDurationArray()[J

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantDuration([J)V

    :cond_8
    const-string v9, "call_details_for_hd_icon"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getHdIcon(Lcom/android/internal/telephony/Connection;)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setHDIcon(I)V

    :cond_9
    const-string v9, "vzw_volte_ui"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isTtyType(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setTtyType(I)V

    :cond_a
    const-string v9, "redirectnm"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setForwardingNumber(Ljava/lang/String;)V

    const-string v9, "redirectpi"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setForwardingPresentation(Ljava/lang/String;)V

    const-string v9, "automatic_answering_machine"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "true"

    const-string v10, "isGroupCall"

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    const/4 v4, 0x1

    :goto_5
    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVoicePartyCall = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setIsVoicePartyCall(I)V

    :cond_b
    const-string v9, "ims_voice_conference"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "true"

    const-string v10, "isGroupCall"

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    const/4 v5, 0x1

    :goto_6
    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVolteGroupCall = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/common/SecCallExtra;->setIsVolteGroupCall(I)V

    :cond_c
    const-string v9, "cvoenable"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "volte_cvo_feature"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-eqz v3, :cond_25

    const-string v9, "true"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    const/4 v9, -0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    :cond_d
    :goto_7
    const-string v9, "enable_conference_info_banner"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mtconference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mtconference"

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v9, "true"

    const-string v10, "mtconference"

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVolteConference(Z)V

    :cond_e
    const-string v9, "TelephonyConnectionUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getUpdatedSecCallExtra call state["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] secCallExtra"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setDomain(I)V

    goto/16 :goto_1

    :cond_10
    const-string v9, "lte"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {p0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    :goto_8
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    goto/16 :goto_2

    :cond_11
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    goto :goto_8

    :cond_12
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgCall(Z)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setEpdgW2L(Z)V

    goto/16 :goto_2

    :cond_13
    const-string v9, "cms_mtprogress"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    goto/16 :goto_3

    :cond_14
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_15
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v9, :cond_16

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    goto/16 :goto_4

    :cond_16
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_17

    const-string v9, "common_volte_hk"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f

    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1f

    :cond_17
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    const-string v9, "resolution"

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    if-eqz v2, :cond_18

    const-string v9, "qcif"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    const/4 v8, 0x1

    :cond_18
    :goto_9
    const-string v9, "concept_usa_vzw"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    const/4 v8, 0x3

    :cond_19
    invoke-virtual {p0, v8}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_1a
    const-string v9, "qvga"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    const/4 v8, 0x2

    goto :goto_9

    :cond_1b
    const-string v9, "hd"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    const/4 v8, 0x3

    goto :goto_9

    :cond_1c
    const-string v9, "hd_land"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    const/4 v8, 0x4

    goto :goto_9

    :cond_1d
    const-string v9, "cif"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v8, 0x5

    goto :goto_9

    :cond_1e
    const-string v9, "hd720"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v8, 0x6

    goto :goto_9

    :cond_1f
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    const-string v9, "concept_usa_att"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_20
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_21
    iget v9, v1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setType(I)V

    const-string v9, "concept_usa_att"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_22

    const/4 v9, 0x2

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_22
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setVideoResolution(I)V

    goto/16 :goto_4

    :cond_23
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_24
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_25
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/SecCallExtra;->setCVOStatus(I)V

    goto/16 :goto_7
.end method

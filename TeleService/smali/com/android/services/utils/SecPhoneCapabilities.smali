.class public Lcom/android/services/utils/SecPhoneCapabilities;
.super Ljava/lang/Object;
.source "SecPhoneCapabilities.java"


# direct methods
.method private static canMergeInCDMA(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .param p0    # Lcom/android/internal/telephony/Phone;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "SecPhoneCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "firstConnection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    if-eq v1, v3, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    const-string v5, "SecPhoneCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "canMerge: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static getCdmaPhoneCapabilities(Lcom/android/internal/telephony/Phone;I)I
    .locals 14
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # I

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const-string v12, "SecPhoneCapabilities"

    const-string v13, "getCdmaPhoneCapabilities:"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v12, "feature_multisim"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v9

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v10

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    aget v13, v10, v11

    invoke-static {v12, v13, v8}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    :cond_0
    :goto_0
    if-eqz v7, :cond_8

    const/4 v3, 0x0

    :goto_1
    const v12, -0x80001

    and-int/2addr p1, v12

    and-int/lit16 p1, p1, -0x81

    const-string v12, "feature_chn"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "feature_hktw"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_1
    or-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_3
    const/4 v1, 0x1

    :cond_4
    :goto_2
    if-eqz v1, :cond_a

    or-int/lit8 p1, p1, 0x1

    :cond_5
    :goto_3
    if-nez v3, :cond_6

    and-int/lit8 p1, p1, -0x41

    :cond_6
    return p1

    :cond_7
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v8}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    goto :goto_1

    :cond_9
    move v1, v11

    goto :goto_2

    :cond_a
    and-int/lit8 p1, p1, -0x2

    goto :goto_3
.end method

.method private static getGsmPhoneCapabilities(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;I)I
    .locals 15
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v13, "SecPhoneCapabilities"

    const-string v14, "getGsmPhoneCapabilities:"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string v13, "feature_multisim"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v12, v14

    invoke-static {v13, v14, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    :cond_0
    :goto_0
    if-eqz v8, :cond_b

    const/4 v4, 0x0

    :goto_1
    invoke-static {v0}, Lcom/android/services/utils/SecPhoneCapabilities;->isVzwVolteCall(Lcom/android/internal/telephony/Call;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_c

    invoke-static {p0}, Lcom/android/services/utils/SecPhoneCapabilities;->canMergeInCDMA(Lcom/android/internal/telephony/Phone;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v13

    if-nez v13, :cond_c

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_f

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_f

    const/4 v5, 0x1

    :goto_3
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_2

    :cond_1
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_10

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_2
    const/4 v2, 0x1

    :goto_4
    const-string v13, "feature_org"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v8, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v13

    iget v13, v13, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-eqz v3, :cond_4

    const-string v13, "support_merge_call"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    or-int/lit8 p2, p2, 0x4

    :cond_4
    const-string v13, "emergency_call_active_always"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v8, :cond_5

    and-int/lit8 p2, p2, -0x5

    :cond_5
    if-eqz v5, :cond_6

    or-int/lit8 p2, p2, 0x8

    :cond_6
    const-string v13, "emergency_call_active_always"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v8, :cond_7

    and-int/lit8 p2, p2, -0x9

    :cond_7
    if-eqz v6, :cond_8

    const-string v13, "support_call_transfer"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/high16 v13, 0x100000

    or-int p2, p2, v13

    :cond_8
    if-eqz v2, :cond_11

    or-int/lit8 p2, p2, 0x1

    :goto_5
    if-nez v4, :cond_9

    and-int/lit8 p2, p2, -0x41

    :cond_9
    const-string v13, "vzw_volte_ui"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    const v13, -0x80001

    and-int p2, p2, v13

    :goto_6
    return p2

    :cond_a
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v9}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_d
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_e

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_e

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v3, 0x1

    :goto_7
    goto/16 :goto_2

    :cond_e
    const/4 v3, 0x0

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_11
    and-int/lit8 p2, p2, -0x2

    goto :goto_5

    :cond_12
    const/high16 v13, 0x80000

    or-int p2, p2, v13

    goto :goto_6
.end method

.method public static getPhoneCapabilities(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;I)I
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Phone;
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    if-nez p0, :cond_0

    move v0, p2

    :goto_0
    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/services/telephony/GsmConnection;

    if-eqz v1, :cond_2

    invoke-static {p0, p1, p2}, Lcom/android/services/utils/SecPhoneCapabilities;->getGsmPhoneCapabilities(Lcom/android/internal/telephony/Phone;Landroid/telecom/Connection;I)I

    move-result p2

    :cond_1
    :goto_1
    invoke-static {p2}, Lcom/android/services/utils/SecPhoneCapabilities;->log(I)V

    move v0, p2

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_1

    invoke-static {p0, p2}, Lcom/android/services/utils/SecPhoneCapabilities;->getCdmaPhoneCapabilities(Lcom/android/internal/telephony/Phone;I)I

    move-result p2

    goto :goto_1
.end method

.method public static final getTelephonyConferenceCapabilities(Landroid/telecom/Conference;Ljava/util/List;I)I
    .locals 17
    .param p0    # Landroid/telecom/Conference;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Conference;",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;I)I"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-nez p0, :cond_0

    move/from16 v6, p2

    :goto_0
    return v6

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v8}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    sget-object v14, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v13, v14, :cond_2

    sget-object v14, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v7, v7, 0x1

    :cond_3
    :goto_2
    invoke-virtual {v8}, Lcom/android/services/telephony/TelephonyConnection;->getHasBeenVideoCall()Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/utils/SecPhoneCapabilities;->isVzwVolteCall(Lcom/android/internal/telephony/Call;)Z

    move-result v14

    if-eqz v14, :cond_8

    if-eqz v11, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-static {v14}, Lcom/android/services/utils/SecPhoneCapabilities;->canMergeInCDMA(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v14

    if-nez v14, :cond_7

    const/4 v4, 0x1

    :goto_3
    const-string v14, "vzw_volte_ui"

    invoke-static {v14}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v9, :cond_6

    const/4 v4, 0x0

    :cond_6
    if-eqz v11, :cond_a

    const/4 v5, 0x1

    :goto_4
    invoke-static/range {p1 .. p1}, Lcom/android/services/utils/SecPhoneCapabilities;->okToHoldCall(Ljava/util/List;)Z

    move-result v3

    const-string v14, "SecPhoneCapabilities"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getConferenceCapabilities conf. cnt. : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", nonconf. cnt. : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_b

    or-int/lit8 p2, p2, 0x4

    :goto_5
    if-eqz v5, :cond_c

    or-int/lit8 p2, p2, 0x8

    :goto_6
    if-eqz v3, :cond_d

    or-int/lit8 p2, p2, 0x1

    :goto_7
    invoke-static/range {p2 .. p2}, Lcom/android/services/utils/SecPhoneCapabilities;->log(I)V

    move/from16 v6, p2

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_9

    const/4 v14, 0x5

    if-ge v7, v14, :cond_9

    const/4 v4, 0x1

    :goto_8
    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    goto :goto_4

    :cond_b
    and-int/lit8 p2, p2, -0x5

    goto :goto_5

    :cond_c
    and-int/lit8 p2, p2, -0x9

    goto :goto_6

    :cond_d
    and-int/lit8 p2, p2, -0x2

    goto :goto_7
.end method

.method public static final getTelephonyConferenceInitialCapabilities(Landroid/telecom/Conference;I)I
    .locals 1
    .param p0    # Landroid/telecom/Conference;
    .param p1    # I

    const-string v0, "support_conference_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "disable_manage_conference_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->hasIMSCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    and-int/lit16 p1, p1, -0x81

    :cond_1
    return p1
.end method

.method private static isEpdgCall(Lcom/android/internal/telephony/Call;)Z
    .locals 6
    .param p0    # Lcom/android/internal/telephony/Call;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "radiotech"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "epdg"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "SecPhoneCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEpdgCall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static isVzwVolteCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2
    .param p0    # Lcom/android/internal/telephony/Call;

    const-string v0, "vzw_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/services/utils/SecPhoneCapabilities;->isEpdgCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SecPhoneCapabilities"

    const-string v1, "isVzwVolteCall. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(I)V
    .locals 6
    .param p0    # I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v1, "PhoneCapabilities"

    invoke-static {v1}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/String;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "MERGE_CONFERENCE"

    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "SWAP_CONFERENCE"

    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "CALL_TRANSFER"

    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "HOLD"

    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_3

    move v1, v2

    :goto_3
    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v4

    const-string v5, "CONTROL_WAITINGCALL"

    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-lez v1, :cond_4

    move v1, v2

    :goto_4
    invoke-virtual {v4, v5, v1}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    const-string v4, "MANAGE_CONFERENCE"

    and-int/lit16 v5, p0, 0x80

    if-lez v5, :cond_5

    :goto_5
    invoke-virtual {v1, v4, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecPhoneCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v2, v3

    goto :goto_5
.end method

.method private static okToHoldCall(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    :cond_1
    if-nez v5, :cond_2

    const-string v7, "SecPhoneCapabilities"

    const-string v8, "phone is null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_2
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    goto :goto_0
.end method

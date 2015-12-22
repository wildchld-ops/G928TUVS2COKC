.class public Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;
.super Ljava/lang/Object;
.source "PhoneSearchIndexablesUtils.java"


# direct methods
.method public static getVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isCDMA(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isWorldPhone(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "global_network_cdma_gsm_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "cdma_apn_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoPhoneGlobalsHere()Z
    .locals 4

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "PhoneSearchIndexablesUtils"

    const-string v3, "isNoPhoneGlobalsHere - No PhoneGlobals here!"

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static isOwnerMode()Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneSearchIndexablesUtils"

    const-string v1, "The device isn\'t owner mode"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isWorldPhone(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static updateIndexableRes(Landroid/content/Context;)[Landroid/provider/SearchIndexableResource;
    .locals 7
    .param p0    # Landroid/content/Context;

    const v3, 0x7f07002e

    const/4 v2, 0x2

    const/4 v6, 0x0

    const v5, 0x7f030001

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->getVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PhoneSearchIndexablesUtils"

    const-string v2, "The device does not support Voice call"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v1, "feature_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v0, v4, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const v2, 0x7f07002f

    const-class v3, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/android/phone/phonesearch/PhoneSearchIndexablesUtils;->isCDMA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v2, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const v2, 0x7f07001a

    const-class v3, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v4

    goto :goto_0

    :cond_3
    new-array v0, v2, [Landroid/provider/SearchIndexableResource;

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v3, v2, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v6

    new-instance v1, Landroid/provider/SearchIndexableResource;

    const v2, 0x7f070022

    const-class v3, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v4, v2, v3, v5}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    aput-object v1, v0, v4

    goto :goto_0
.end method

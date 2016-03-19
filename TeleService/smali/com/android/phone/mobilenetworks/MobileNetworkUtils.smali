.class public Lcom/android/phone/mobilenetworks/MobileNetworkUtils;
.super Ljava/lang/Object;
.source "MobileNetworkUtils.java"


# direct methods
.method public static checkDisableNetworkSelection()Z
    .locals 13

    const/4 v12, 0x6

    const/4 v7, 0x0

    const/4 v11, 0x3

    const/4 v6, 0x1

    const/4 v10, 0x2

    const-string v8, "ril.skt.network_regist"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "Idle"

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    :cond_0
    move v6, v7

    :cond_1
    :goto_0
    return v6

    :cond_2
    const-string v8, ";"

    const/4 v9, 0x4

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    aget-object v8, v5, v7

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v8, v5, v6

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v8, v5, v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v8, v5, v11

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v11, :cond_1

    if-eq v2, v12, :cond_1

    const/16 v8, 0x8

    if-eq v2, v8, :cond_1

    if-eq v3, v11, :cond_1

    if-eq v3, v12, :cond_1

    const/16 v8, 0x8

    if-eq v3, v8, :cond_1

    if-ne v2, v10, :cond_3

    if-eq v4, v10, :cond_1

    if-eq v4, v11, :cond_1

    const/16 v8, 0xc

    if-eq v4, v8, :cond_1

    const/16 v8, 0xd

    if-eq v4, v8, :cond_1

    :cond_3
    if-eq v1, v10, :cond_1

    move v6, v7

    goto :goto_0
.end method

.method public static findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public static getGlobalType()I
    .locals 2

    const-string v1, "network_mode_global_lte_cdma_gsm_umts"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const-string v1, "network_mode_global_lte_gsm"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const-string v1, "network_mode_global_lte_wcdma"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xc

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public static getNetworkModePreferenceTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPlmnNumeric()Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x3

    const-string v3, "gsm.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-lt v0, v5, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->CheckBoxPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->SwitchPreference:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v1, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getSimNumeric(Z)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-lt v0, v6, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-lt v0, v7, :cond_0

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getTwoStateTypes()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "menu_simplification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->SwitchPreference:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->CheckBoxPreference:Ljava/lang/String;

    aput-object v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->CheckBoxPreference:Ljava/lang/String;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/mobilenetworks/MobileNetworksConstants;->SwitchPreference:Ljava/lang/String;

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static isDataNetworkModeVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isDisableNetwork()Z
    .locals 10

    const/16 v9, 0xb

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "ril.skt.network_regist"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Idle"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_2

    :cond_0
    move v4, v5

    :cond_1
    :goto_0
    return v4

    :cond_2
    const-string v6, ";"

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v6, v3, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v9, :cond_1

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eq v2, v9, :cond_1

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public static isKtSim()Z
    .locals 3

    const-string v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isLgtSim()Z
    .locals 3

    const-string v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isRegisteredOnNetwork()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "ril.skt.network_regist"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v5, ";"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, v3

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v4, :cond_2

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static isRoamingArea(Landroid/content/Context;)Z
    .locals 6

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const-string v3, "MobileNetworkUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ServiceState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_0

    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    const-string v3, "domestic"

    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSktSim()Z
    .locals 3

    const-string v1, "ril.simtype"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method public static updatePreferenceToSpecificActivity(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;I)Z
    .locals 8

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

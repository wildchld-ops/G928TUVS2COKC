.class public Lcom/android/phone/mobilenetworks/MobileNetworksManager;
.super Ljava/lang/Object;
.source "MobileNetworksManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCdmaOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const-string v0, "remove_cdma_options_cdma_system_select"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "cdma_system_select_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCdmaSubscription()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "cdma_subscription_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCdmaActivateDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "cdma_activate_device_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsCarrierSettings()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "carrier_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveCdmaOptionsApnExpand()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_apn_key_cdma"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v0, "remove_cdma_options_carrier_sel"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_carrier_sel_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "remove_cdma_options_dun"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_dun_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p2
.end method

.method private getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method private getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsApn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_apn_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsCarrierSel(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_carrier_sel_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsCarrierSettings()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "carrier_settings_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v0, "network_mode_spinner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "network_mode_spinner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkMode1()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "network_mode_spinner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkMode2()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "network_mode_spinner"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    const-string v0, "remove_gsm_umts_options_global_gsm_umts_system_select"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_global_gsm_umts_system_select_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p2

    :cond_7
    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmode2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner1_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v1, "button_prefer_networkmodespinner2_key"

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    return-object v0
.end method

.method private getMobileNetworkSettingsKorRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_data_enabled_key"

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_data_enabled_key"

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "remove_mobile_networks_kor_roaming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_roaming_key"

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_roaming_key"

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "remove_mobile_networks_kor_lte_roaming"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_lte_roaming_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorApn()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_apn_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "remove_mobile_networks_kor_carrier_sel"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_carrier_sel_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorDataNetworkMode()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_data_network_mode_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksKorNetworkStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_network_status_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p2
.end method

.method private getMobileNetworkSettingsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferedNetworkMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "preferred_network_mode_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_roaming_key"

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_roaming_key"

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "remove_mobile_networks_cdma_lte_data_service"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "cdma_lte_data_service_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string v1, "remove_mobile_networks_enabled_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "enabled_networks_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "remove_mobile_networks_enhanced_4g_lte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "enhanced_4g_lte"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksDataEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_data_enabled_key"

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_data_enabled_key"

    aget-object v3, v0, v5

    invoke-direct {v1, v2, v3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "remove_mobile_networks_enhanced_4glte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_enhanced_4glte_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v1, "remove_mobile_networks_international_enhanced_4glte"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_international_enhanced_4glte_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferredRoaming()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "preferred_roaming_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v1, "remove_mobile_networks_global_data_roaming_access"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "global_data_roaming_access_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v1, "remove_mobile_networks_roaming_state"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "roaming_state_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string v1, "remove_mobile_networks_signal_strength"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "signal_strength_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksPreferredNetworks()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_preferred_networks_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksEnhancedRoamingMode()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "enhanced_roaming_mode_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksConnectionsOptimizer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "connections_optimizer_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveMobileNetworksVolteCall()Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "volte_call_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string v1, "remove_mobile_networks_roaming_settings"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    const-string v2, "button_roaming_settings_key"

    invoke-direct {v1, v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object p2
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v2

    if-ge v1, v2, :cond_0

    if-ne v1, p1, :cond_2

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hasConnectionsOptimizer(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.birdstep.android.cm"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.smithmicro.mnd"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-lez v0, :cond_0

    :goto_2
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private isEmergencyMode(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p1}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v1

    goto :goto_0
.end method

.method private isLteOnCdma()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isNotCdmaPhone(I)Z
    .locals 3
    .param p1    # I

    const/4 v1, 0x1

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-static {p1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isRemoveCdmaOptionsApnExpand()Z
    .locals 3

    const/4 v1, 0x1

    const-string v2, "remove_cdma_options_apn_cdma"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRemoveCdmaOptionsCarrierSettings()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v2, "remove_cdma_options_carrier_settings"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRemoveCdmaOptionsCdmaActivateDevice()Z
    .locals 1

    const-string v0, "remove_cdma_options_cdma_activate_device"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isLteOnCdma()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveCdmaOptionsCdmaSubscription()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "remove_cdma_options_cdma_subscription"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "cdma_subscription_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveGsmUmtsOptionsApn(I)Z
    .locals 4
    .param p1    # I

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "remove_gsm_umts_options_apn"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isNotCdmaPhone(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0f000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const-string v3, "chn_cdma_network_on_all_rat"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRemoveGsmUmtsOptionsCarrierSel(I)Z
    .locals 6
    .param p1    # I

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, "remove_gsm_umts_options_carrier_sel"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isNotCdmaPhone(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f0f000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0f000c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const-string v4, "chn_cdma_network_on_all_rat"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCtcSimCardInsertedForSixMode()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    const-string v4, "feature_ctc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eq p1, v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isLte()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCTCSIM()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0
.end method

.method private isRemoveGsmUmtsOptionsCarrierSettings()Z
    .locals 3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v2, "carrier_settings_enable"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRemoveGsmUmtsOptionsPreferNetworkMode()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "remove_gsm_umts_options_prefer_networkmode"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "global_network_cdma_gsm_enable_for_vzw"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "global_network_cdma_gsm_enable_for_usc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string v3, "network_mode_spinner"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private isRemoveGsmUmtsOptionsPreferNetworkModes()Z
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksConnectionsOptimizer(Landroid/content/Context;)Z
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_connections_optimizer"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->hasConnectionsOptimizer(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksDataEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "remove_mobile_networks_data_enabled"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    const-string v3, "support_safetycare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    :cond_2
    const-string v3, "menu_simplification"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "disable_mobile_data_settings"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->shouldHideCarrierSettings(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksEnhancedRoamingMode()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_enhanced_roaming_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->displayRoamingNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksKorApn()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_kor_apn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SHW-M250L"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksKorDataEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "remove_mobile_networks_kor_data_enabled"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    const-string v2, "feature_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksKorDataNetworkMode()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_kor_data_network_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isDataNetworkModeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SHW-M480S"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksKorNetworkStatus()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_kor_network_status"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SHW-M480K"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "SHW-M480S"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksPreferedNetworkMode(Landroid/content/Context;)Z
    .locals 10
    .param p1    # Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "remove_mobile_networks_preferred_network_mode"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->shouldHideCarrierSettings(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eq v5, v6, :cond_3

    const v8, 0x7f0f0003

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eq v8, v6, :cond_3

    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isLteOnCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v8, "feature_hktw"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "feature_chn"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v8, 0x2

    if-eq v2, v8, :cond_2

    const-string v8, "global_network_cdma_gsm_enable"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    if-eqz v0, :cond_3

    const-string v8, "feature_vzw"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "preferred_network_mode_pst_vzw"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_3

    const-string v8, "global_network_cdma_gsm_enable"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method private isRemoveMobileNetworksPreferredNetworks()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "remove_mobile_networks_preferred_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsCHN;->isCtcSimCardInsertedForSixMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRemoveMobileNetworksPreferredRoaming()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "remove_mobile_networks_preferred_roaming"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "national_roaming_mode_menu"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "national_roaming_mode_menu_play"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "26006"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isRemoveMobileNetworksRoaming()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "remove_mobile_networks_roaming"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getSimNumeric(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "national_roaming_mode_menu_play"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "26006"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isRemoveMobileNetworksVolteCall()Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "remove_mobile_networks_volte_call"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, "persist.ril.ims.eutranParam"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v1

    const-string v4, "volte_settings_in_mobile_networks_eur"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    :cond_2
    const-string v4, "volte_settings_in_mobile_networks_chn"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    const-string v4, "volte_settings_in_mobile_networks_common"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "thl_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    const-string v4, "support_safetycare"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isUltraPowerSavingMode()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method private shouldHideCarrierSettings(Landroid/content/Context;)I
    .locals 4
    .param p1    # Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hide_carrier_network_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getRemovePreferences(II)Ljava/util/ArrayList;
    .locals 2
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRemovePreferences(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(II)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getRemovePreferences(Landroid/content/Context;II)Ljava/util/ArrayList;
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sparse-switch p2, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getMobileNetworkSettingsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getCdmaOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getGsmUmtsOptionsRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getMobileNetworkSettingsKorRemovePreferences(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f07001a -> :sswitch_1
        0x7f070022 -> :sswitch_2
        0x7f07002e -> :sswitch_0
        0x7f07002f -> :sswitch_3
    .end sparse-switch
.end method

.method public isRemoveGsmUmtsOptionsPreferNetworkMode1()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "remove_gsm_umts_options_prefer_networkmode1"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkModes()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoveGsmUmtsOptionsPreferNetworkMode2()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "remove_gsm_umts_options_prefer_networkmode2"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->isRemoveGsmUmtsOptionsPreferNetworkModes()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePreferences(Landroid/preference/PreferenceScreen;I)V
    .locals 2
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # I

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;II)V

    return-void
.end method

.method public removePreferences(Landroid/preference/PreferenceScreen;II)V
    .locals 6
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # I
    .param p3    # I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getRemovePreferences(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/phone/mobilenetworks/MobileNetworksManager$Preferences;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v5}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

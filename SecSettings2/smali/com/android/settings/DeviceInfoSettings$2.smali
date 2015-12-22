.class final Lcom/android/settings/DeviceInfoSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private isPropertyMissing(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    const-string v17, "Enabled"

    const-string v18, "ro.security.mdpp.ux"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "security_sw_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "com.samsung.helphub"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    const-string v17, "icon_glossary"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxContainerVersion()Landroid/os/PersonaManager$KnoxContainerVersion;

    move-result-object v7

    sget-object v17, Landroid/os/PersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Landroid/os/PersonaManager$KnoxContainerVersion;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/PersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v17

    if-gez v17, :cond_3

    const-string v17, "knox_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const-string v18, "com.samsung.helphub"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v17, v0

    rem-int/lit8 v17, v17, 0xa

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    const-string v17, "icon_glossary"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    const-string v17, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings$2;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    const-string v17, "selinux_status"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v17, "ro.ril.fccid"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings$2;->isPropertyMissing(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "fcc_equipment_id"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "baseband_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    # invokes: Lcom/android/settings/DeviceInfoSettings;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/DeviceInfoSettings;->access$200(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "device_feedback"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string v17, "SMA"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "XTC"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "XTE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "GLB"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "service_information"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "ntc_approval"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string v17, "XSG"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XSD"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XST"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XSZ"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XSM"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XSS"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    const-string v17, "XSI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    :cond_a
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "country_cert_info_enable"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "country_cert_info_traid"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "country_cert_info_ta"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "country_cert_info_name"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v6, :cond_b

    if-eqz v5, :cond_b

    if-eqz v4, :cond_b

    const-string v17, "country_certification_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_1
    const-string v17, "ro.product.name"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v17, "iconvmu"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string v17, "telespree_activation"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v17

    if-nez v17, :cond_d

    const-string v17, "sim_card_status"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "regulatory_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string v17, "com.samsung.ccr"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "diagnostics_and_usage"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    const-string v17, "hardware_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v17

    if-eqz v17, :cond_21

    const-string v17, "hardware_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_DisableMenuSoftwareUpdate"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    # invokes: Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/DeviceInfoSettings;->access$300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const-string v17, "com.ctc.epush"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    const-string v17, "ctc_epush"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string v17, "plmn_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "sprint_4g_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "ro.csb_val"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v17, "unknown"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string v17, "ABSENT"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_13
    const-string v17, "csb_value"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v9, "A3LSMG928T"

    const-string v13, "DC 9 V; 1.67 A"

    const-string v2, "3000 mAh"

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const-string v17, "fcc_id"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "rated_value"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    const-string v17, "battery_capacity"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_18

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    :cond_18
    const-string v17, "customer_services"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v17, ""

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    :cond_1a
    const-string v17, "sdm_config_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v17

    if-eqz v17, :cond_22

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0f0005

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "additional_system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_EnableRegionalDevice"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1e

    const-string v17, "installed_variant_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1e
    const-string v17, "VZW"

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    const-string v17, "status_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isSimplifiedAboutDevice2015()Z

    move-result v17

    if-eqz v17, :cond_2a

    const-string v17, "firmware_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "baseband_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "kernel_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "build_number"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "selinux_status"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "security_sw_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "knox_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "fcc_id"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "rated_value"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "battery_capacity"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    return-object v12

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1f
    :try_start_2
    const-string v17, "country_certification_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_20
    const-string v17, "country_certification_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_21
    const-string v17, "hardware_version_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_version"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/android/settings/DeviceInfoSettings;->removeSoftwareUpdateKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    # invokes: Lcom/android/settings/DeviceInfoSettings;->readSoftwareUpdateType(Landroid/content/Context;)Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/settings/DeviceInfoSettings;->access$300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removeSoftwareUpdateKey : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : only sfota "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "com.sec.android.fotaclient"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1c

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_23
    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : only na_gsm "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_24
    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : only no subtree "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_25
    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : only gota "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_26
    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : only spr "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_27
    const-string v17, "no_software_update_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    const-string v17, "software_update_settings_no_subtree"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_na_gsm"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings_spr"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "system_update_settings"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "removed key : no setting "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_28
    const-string v17, "DeviceInfoSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "no removed key : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_29
    const-string v17, "status_info_vzw"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_2a
    const-string v17, "battery_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "software_info"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const v5, 0x7f0a15da

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "VZW"

    # getter for: Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/DeviceInfoSettings;->access$100()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "device_name"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0a123e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "selinux_status"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0a0623

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSimplifiedAboutDevice2015()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v3, "status_info"

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    const v3, 0x7f0a0635

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    const v1, 0x7f070030

    iput v1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/provider/SearchIndexableResource;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

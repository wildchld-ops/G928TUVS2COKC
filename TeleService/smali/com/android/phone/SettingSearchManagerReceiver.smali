.class public Lcom/android/phone/SettingSearchManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingSearchManagerReceiver.java"


# static fields
.field private static final SETTINGINFO_URI:Landroid/net/Uri;

.field private static salesCode:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.providers.settingsearch/searchinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SettingSearchManagerReceiver;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "SettingSearchManagerReceiver"

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    return-void
.end method

.method private addSearchInfoDB()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private addSearchInfoDB_NetworkSettings()V
    .locals 8

    const v7, 0x7f0a0125

    const v6, 0x7f0a0124

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x63

    if-gt v0, v1, :cond_1

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "Guest Mode Active"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v1, "parentskey"

    const-string v2, "mobile_network_settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "button_data_enabled_key"

    const v1, 0x7f0a06a5

    const v2, 0x7f0a06a6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_2
    :goto_1
    const-string v0, "roaming_enhancement"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sprint_mvno_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "global_data_roaming_access_key"

    const v1, 0x7f0a04ff

    const v2, 0x7f0a0501

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_3
    :goto_2
    const-string v0, "button_apn_key"

    const v1, 0x7f0a00aa

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0a06a1

    const v2, 0x7f0a06a2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_4
    :goto_3
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f0a06a3

    const v2, 0x7f0a06a4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_5
    :goto_4
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0a06a7

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_6
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0a00ab

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    :cond_7
    const-string v0, "sprint_connections_optimizer"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "connections_optimizer_key"

    const v1, 0x7f0a0516

    const v2, 0x7f0a0515

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const-string v0, "enhanced_4glte_key"

    const v1, 0x7f0a0419

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_a
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "button_data_enabled_key"

    const v1, 0x7f0a0419

    const v2, 0x7f0a0123

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_1

    :cond_b
    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "button_roaming_key"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v6, v7, v1}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_c
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "button_roaming_key"

    invoke-direct {p0, v0, v6, v7, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_d
    const-string v0, "volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "non_volte_settings_in_mobile_networks"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string v0, "button_international_enhanced_4glte_key"

    const v1, 0x7f0a05a7

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_f
    const-string v0, "button_roaming_key"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_2

    :cond_10
    const-string v0, "setting_search_vzw"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "network_mode_automatic_cdma_lte_gsm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "network_mode_cdma_lte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_11
    const-string v0, "preferred_network_mode_key"

    const v1, 0x7f0a010d

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3

    :cond_12
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "network_mode_not_support_att"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "remove_network_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "button_prefer_networkmode_key"

    const v1, 0x7f0a010d

    invoke-direct {p0, v0, v1, v4, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_3

    :cond_13
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ACG"

    sget-object v1, Lcom/android/phone/SettingSearchManagerReceiver;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SPR"

    sget-object v1, Lcom/android/phone/SettingSearchManagerReceiver;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "LRA"

    sget-object v1, Lcom/android/phone/SettingSearchManagerReceiver;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "button_carrier_sel_key"

    const v1, 0x7f0a00b4

    const v2, 0x7f0a0108

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/phone/SettingSearchManagerReceiver;->putValues(Ljava/lang/String;III)V

    goto/16 :goto_4
.end method

.method private addSearchInfoDBforTablet()V
    .locals 2

    const-string v0, "SettingSearchManagerReceiver"

    const-string v1, "addSearchInfoDB for Tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB_NetworkSettings()V

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->endInsert()V

    return-void
.end method

.method private endInsert()V
    .locals 3

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "endInsert"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.FINISH_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private putValues(Ljava/lang/String;III)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "id_key"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "title_res_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "summary_res_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "icon_res_id"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "menu_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    const-string v2, "package_name"

    const-string v3, "com.android.phone"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/phone/SettingSearchManagerReceiver;->SETTINGINFO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/phone/SettingSearchManagerReceiver;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putValues : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    if-nez p2, :cond_1

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "onReceive - intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SettingSearchManagerReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SettingSearchManagerReceiver"

    const-string v2, "The device does not support Voice call..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingSearchManagerReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.settings.INSERT_SEARCHDB_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.settings.INSERT_SEARCHDB_VER_TWO_EXTRA_APPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDBforTablet()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SettingSearchManagerReceiver;->addSearchInfoDB()V

    goto :goto_0
.end method

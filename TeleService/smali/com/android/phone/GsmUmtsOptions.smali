.class public Lcom/android/phone/GsmUmtsOptions;
.super Ljava/lang/Object;
.source "GsmUmtsOptions.java"


# instance fields
.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mSimId:I

.field private mXmlResId:I


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ne v0, p3, :cond_1

    invoke-static {p3}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    iput-object p1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iput p3, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->create()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsOptions;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private clickOperatorSelectionExpand()Z
    .locals 7

    const/16 v6, 0x12

    const/4 v5, 0x2

    const/4 v2, 0x1

    const-string v3, "feature_ctc"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-static {p0, v3, v4}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getIrNetworkSettingIntent(Ljava/lang/Object;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v2, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "NetworkSetting"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.MobileNetworkSettingsTab"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "feature_zvv"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mNetworkModeAutoManual"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1, v6}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "sim_id"

    iget v4, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "feature_zvv"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "mNetworkModeAutoManual"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1, v6}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v3, "feature_zvv"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "mNetworkModeAutoManual"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v3, v1, v6}, Landroid/preference/PreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private clickPreferredNetworks()V
    .locals 3

    const/4 v2, 0x1

    const-string v1, "preferenceTreeClick: preferred networks"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v1

    if-le v1, v2, :cond_0

    const-string v1, "PreferredNetworks"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettingsTab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.PreferredNetworks"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method private setNetworkOperatorName()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->setNetworkOperatorName(Z)V

    return-void
.end method

.method private setNetworkOperatorName(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkOperatorName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->setOperatorSelectionExpandSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateGlobalGsmUmtsSystemSelect()V
    .locals 3

    const-string v1, "global_network_cdma_gsm_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "set SYSYEM_SELECTION_MANUAL"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "set SYSYEM_SELECTION_AUTOMATIC"

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRemovedAPNExpand(IZ)Z
    .locals 1

    const-string v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    return p2
.end method


# virtual methods
.method protected create()V
    .locals 9

    const/4 v7, 0x1

    const v5, 0x7f070022

    iput v5, p0, Lcom/android/phone/GsmUmtsOptions;->mXmlResId:I

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget v6, p0, Lcom/android/phone/GsmUmtsOptions;->mXmlResId:I

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_apn_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_carrier_sel_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "button_global_gsm_umts_system_select_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    iput-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    :cond_0
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsOptions;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-eq v5, v7, :cond_7

    const-string v5, "Not a GSM phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    const-string v5, "feature_multisim_dsda_cdma_gsm"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    if-ne v1, v7, :cond_6

    const-string v5, "CTC Dual Mode and curr phone is GSM"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-direct {p0, v1, v3}, Lcom/android/phone/GsmUmtsOptions;->updateRemovedAPNExpand(IZ)Z

    move-result v3

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v5, "carrier_settings_enable"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v6, "carrier_settings_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_4
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/phone/GsmUmtsOptions$1;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsOptions$1;-><init>(Lcom/android/phone/GsmUmtsOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsOptions;->updateGlobalGsmUmtsSystemSelect()V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsOptions;->updateOperatorSelectionExpand()V

    const-string v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget v7, p0, Lcom/android/phone/GsmUmtsOptions;->mXmlResId:I

    iget v8, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;II)V

    :goto_1
    return-void

    :cond_6
    const-string v5, "chn_cdma_network_on_all_rat"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    const-string v5, "Not a CDMA phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    :cond_8
    const v5, 0x7f0f000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_9
    const v5, 0x7f0f000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "[CSP] Enabling Operator Selection menu."

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    const-string v5, "[CSP] Disabling Operator Selection menu."

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget v7, p0, Lcom/android/phone/GsmUmtsOptions;->mXmlResId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "GsmUmtsOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_prefer_networkmode_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsOptions;->clickOperatorSelectionExpand()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "button_preferred_networks_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsOptions;->clickPreferredNetworks()V

    goto :goto_0

    :cond_3
    const-string v0, "preferenceTreeClick: return false"

    invoke-virtual {p0, v0}, Lcom/android/phone/GsmUmtsOptions;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOperatorSelectionExpandEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsOptions;->setNetworkOperatorName(Z)V

    return-void
.end method

.method public setOperatorSelectionExpandSummary(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showGlobalGsmSystemSelectDialog()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonGlobalGsmUmtsSystemSelect:Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/GlobalGsmUmtsSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public updateOperatorSelectionExpand()V
    .locals 3

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/GsmUmtsOptions;->setNetworkOperatorName()V

    :cond_0
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/phone/GsmUmtsOptions;->mSimId:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/PhoneFeature;->isLte()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    :cond_1
    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getOperatorSelectionExpandEnabled(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/phone/GsmUmtsOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    return-void
.end method

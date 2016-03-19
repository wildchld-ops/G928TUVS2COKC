.class public Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;
.super Ljava/lang/Object;
.source "MobileNetworksSearchController.java"


# static fields
.field private static final sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;


# instance fields
.field private mFromSearch:Z

.field private mParentPreferenceKey:Ljava/lang/String;

.field private mSettingValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    invoke-direct {v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;-><init>()V

    sput-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    return-void
.end method

.method public static getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;
    .locals 1

    sget-object v0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->sInstance:Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;

    return-object v0
.end method

.method private simulatePreferenceClick(Landroid/preference/PreferenceActivity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;Landroid/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/PreferenceActivity;Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v3, v1, :cond_0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private simulatePreferenceTreeClick(Landroid/preference/PreferenceActivity;)V
    .locals 3

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1, v0}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private startApnExpand(Landroid/preference/PreferenceActivity;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, ":settings:show_fragment_as_subsetting"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startEnhanced4gLte(Landroid/preference/PreferenceActivity;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.Enhanced4GLTE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MobileNetworksSearchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startOperatorSelectionExpand(Landroid/preference/PreferenceActivity;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.NetworkSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "feature_zvv"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mNetworkModeAutoManual"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MobileNetworksSearchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startPreferredNetworks(Landroid/preference/PreferenceActivity;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.PreferredNetworks"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MobileNetworksSearchController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    return-void
.end method

.method public earlyTwoStatePreference()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "button_data_enabled_key"

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "button_roaming_key"

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getSettingValue()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchPreferences(Landroid/preference/PreferenceActivity;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-boolean v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->getTwoStateTypes()[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v4

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    const-string v3, "button_data_enabled_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "button_roaming_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->findPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const-string v3, "preferred_roaming_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceTreeClick(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_3
    const-string v3, "button_apn_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "button_apn_key_cdma"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "button_apn_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->startApnExpand(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_5
    const-string v3, "preferred_network_mode_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_6
    const-string v3, "global_data_roaming_access_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_7
    const-string v3, "button_carrier_sel_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->startOperatorSelectionExpand(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_8
    const-string v3, "button_enhanced_4glte_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->startEnhanced4gLte(Landroid/preference/PreferenceActivity;)V

    goto :goto_0

    :cond_9
    const-string v3, "button_preferred_networks_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->startPreferredNetworks(Landroid/preference/PreferenceActivity;)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "connections_optimizer_key"

    iget-object v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    goto/16 :goto_0
.end method

.method public launchiNetworkModePreference(Landroid/preference/PreferenceActivity;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    const-string v0, "button_prefer_networkmode_key"

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->simulatePreferenceClick(Landroid/preference/PreferenceActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    goto :goto_0
.end method

.method public updateSearchIntent(Landroid/preference/PreferenceActivity;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "extra_fragment_bundle_key"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "extra_from_search"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    iget-boolean v4, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mFromSearch:Z

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/preference/PreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->clear()V

    :goto_1
    return v2

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    const-string v2, "extra_setting_value"

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    const-string v2, "MobileNetworksSearchController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSearchIntent - fragmentBundle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "MobileNetworksSearchController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSearchIntent - parentPreferenceKey : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mParentPreferenceKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / settingValue : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->mSettingValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_2
    :goto_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/mobilenetworks/MobileNetworksSearchController;->clear()V

    goto :goto_2
.end method

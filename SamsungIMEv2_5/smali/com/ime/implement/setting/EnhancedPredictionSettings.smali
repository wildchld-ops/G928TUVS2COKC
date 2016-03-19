.class public Lcom/ime/implement/setting/EnhancedPredictionSettings;
.super Landroid/preference/PreferenceActivity;
.source "EnhancedPredictionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final GET_CODE:I

.field dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field private mChnEngMixedPref:Landroid/preference/TwoStatePreference;

.field private mCloudNetworkPre:Landroid/preference/ListPreference;

.field private mFuzzyPinyinPref:Landroid/preference/Preference;

.field private mLinkToContactsPref:Landroid/preference/TwoStatePreference;

.field private mPreference:Landroid/preference/Preference;

.field private sPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->GET_CODE:I

    new-instance v0, Lcom/ime/implement/setting/EnhancedPredictionSettings$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$1;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    new-instance v0, Lcom/ime/implement/setting/EnhancedPredictionSettings$2;

    invoke-direct {v0, p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$2;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;)V

    iput-object v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->sPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ime/implement/setting/EnhancedPredictionSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method private showCloudNetworkDialog()V
    .locals 9

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f03001b

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x7f100034

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v6, 0x7f100033

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f0d0387

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setText(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v6, Lcom/ime/implement/setting/EnhancedPredictionSettings$3;

    invoke-direct {v6, p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$3;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0d016e

    invoke-virtual {p0, v6}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    const v8, 0x7f0d0338

    invoke-virtual {p0, v8}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v6, 0x7f0d016d

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v6, 0x104000a

    new-instance v7, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;

    invoke-direct {v7, p0, v0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$4;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    new-instance v7, Lcom/ime/implement/setting/EnhancedPredictionSettings$5;

    invoke-direct {v7, p0, v0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$5;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;

    invoke-direct {v6, p0, v0}, Lcom/ime/implement/setting/EnhancedPredictionSettings$6;-><init>(Lcom/ime/implement/setting/EnhancedPredictionSettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f03006e

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    :cond_1
    const-string v4, "com.sec.android.inputmethod_preferences"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->sPrefs:Landroid/content/SharedPreferences;

    const-string v4, "setting_db_update_key"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;

    const-string v4, "SETTINGS_DEFAULT_CLOUD_LINK"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isHKTWBinaryByCSC()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    const-string v4, "SETTINGS_DEFAULT_CHN_ENG_MIXED_INPUT"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/TwoStatePreference;

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mChnEngMixedPref:Landroid/preference/TwoStatePreference;

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mChnEngMixedPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "SETTINGS_DEFAULT_LINK_TO_CONTACTS"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/TwoStatePreference;

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mLinkToContactsPref:Landroid/preference/TwoStatePreference;

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mLinkToContactsPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "setting_fuzzy_pinyin_input_key"

    invoke-virtual {p0, v4}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mFuzzyPinyinPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mFuzzyPinyinPref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->fuzzysettingsclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->dbUpdateclickListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "SETTINGS_DEFAULT_CLOUD_LINK"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SamsungIME_UnifiedIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnhancedPredictionSetting onPreferenceClick pref key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mChnEngMixedPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mLinkToContactsPref:Landroid/preference/TwoStatePreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07004b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->mCloudNetworkPre:Landroid/preference/ListPreference;

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v4, p0, Lcom/ime/implement/setting/EnhancedPredictionSettings;->sPrefs:Landroid/content/SharedPreferences;

    const-string v5, "cloud_use_network_dialog"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/ime/implement/setting/EnhancedPredictionSettings;->showCloudNetworkDialog()V

    goto :goto_0
.end method

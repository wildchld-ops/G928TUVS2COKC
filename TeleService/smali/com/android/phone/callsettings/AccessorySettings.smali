.class public Lcom/android/phone/callsettings/AccessorySettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AccessorySettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private fromSettingSearch:Z

.field private mAnsweringTimeList:Landroid/preference/ListPreference;

.field private mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/AccessorySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AccessorySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AccessorySettings;->putAutoAnswerSetting(Z)V

    return-void
.end method

.method private confirmSelectionDialog(Landroid/content/SharedPreferences;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a068f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AccessorySettings$1;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/callsettings/AccessorySettings$1;-><init>(Lcom/android/phone/callsettings/AccessorySettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AccessorySettings$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AccessorySettings$2;-><init>(Lcom/android/phone/callsettings/AccessorySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "EarsetSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private putAutoAnswerSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "automatic_answering_enable_sharedpref"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSystemSettingsForAutoAnswer(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "answeringmode_auto_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public autoAnsweringInit()V
    .locals 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenu:Z

    if-eqz v8, :cond_2

    sget v8, Lcom/android/phone/callsettings/AccessorySettings;->mSettingValue:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    sget-object v8, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v8, :cond_2

    sget-object v8, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "automatic_answer_preference"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    sget-boolean v8, Lcom/android/phone/callsettings/AccessorySettings;->mCheckValue:Z

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iput-boolean v7, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x0

    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v8, "ro.product.model"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v8, "SM-G900R7"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "SM-G900R6"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "answeringmode_auto_mode"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_4

    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "automatic_answering_enable_sharedpref"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_6

    move v1, v6

    :goto_2
    const-string v6, "EarsetSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoAnsweringInit : isOn - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_6
    move v1, v7

    goto :goto_2

    :cond_7
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_8

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/high16 v1, 0x7f070000

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "automatic_answer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    const-string v1, "automatic_answer_timer_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAnsweringTimeList:Landroid/preference/ListPreference;

    const-string v1, "video_call_not_support"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v2, "callsettings_bt_type"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AccessorySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "automatic_answering_enable_sharedpref"

    iget-object v5, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AccessorySettings;->putAutoAnswerSetting(Z)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v4, "set_system_setting_for_auto_answer"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AccessorySettings;->setSystemSettingsForAutoAnswer(Z)V

    :cond_0
    const-string v4, "automatic_answering_machine"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "automatic_answering_enable_sharedpref"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "callsettings_answer_memo"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v2, :cond_1

    if-eq v0, v6, :cond_1

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AccessorySettings;->confirmSelectionDialog(Landroid/content/SharedPreferences;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->outgoingBTInit()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->autoAnsweringInit()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is called by SettingSearch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AccessorySettings;->log(Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenu:Z

    iput-boolean v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->fromSettingSearch:Z

    sget-object v0, Lcom/android/phone/callsettings/AccessorySettings;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v1, "automatic_answer_preference"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AccessorySettings;->mAutoAnsweringPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/callsettings/AccessorySettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11

    const v10, 0x7f09000b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/AccessorySettings;->log(Ljava/lang/String;)V

    const-string v6, "callsettings_bt_condition"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_condition"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.phone"

    const-string v8, "COND"

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v2

    invoke-static {v6, v7, v8, v9}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v10, v2}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    :cond_0
    const-string v6, "callsettings_bt_type"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_headset_call_type"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const v6, 0x7f09000c

    invoke-virtual {p0, p2, v6, v4}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    :cond_1
    const-string v6, "automatic_answer_timer_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "answeringmode_auto_time"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public outgoingBTInit()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_condition"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v2, "callsettings_bt_condition"

    const v3, 0x7f09000b

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v3, "callsettings_bt_type"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_headset_call_type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "callsettings_bt_type"

    const v3, 0x7f09000c

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/phone/callsettings/AccessorySettings;->updateBTSummary(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public updateBTSummary(Ljava/lang/String;II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AccessorySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/AccessorySettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    aget-object v2, v1, p3

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.class public Lcom/android/phone/KTHDVoiceSetting;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "KTHDVoiceSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/KTHDVoiceSetting$EmptyView;
    }
.end annotation


# instance fields
.field private fromSettingSearch:Z

.field private mHDVoiceChecked:Landroid/preference/TwoStatePreference;

.field private mLTENetworkChecked:Landroid/preference/TwoStatePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 4
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "CheckBoxPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :goto_1
    return-object v3

    :cond_0
    const-string v3, "SwitchPreference"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const-string v0, "KTHDVoiceSetting"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070029

    invoke-virtual {p0, v2}, Lcom/android/phone/KTHDVoiceSetting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "menu_simplification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "kt_hd_voice"

    const-string v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    const-string v2, "kt_hd_voice_lte_pref"

    const-string v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/KTHDVoiceSetting$1;

    invoke-direct {v3, p0}, Lcom/android/phone/KTHDVoiceSetting$1;-><init>(Lcom/android/phone/KTHDVoiceSetting;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    check-cast v2, Landroid/preference/SwitchPreference;

    new-instance v3, Lcom/android/phone/KTHDVoiceSetting$2;

    invoke-direct {v3, p0}, Lcom/android/phone/KTHDVoiceSetting$2;-><init>(Lcom/android/phone/KTHDVoiceSetting;)V

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "kt_hd_voice"

    const-string v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "kt_hd_voice_lte_pref"

    const-string v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "kt_hd_voice"

    const-string v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    const-string v2, "kt_hd_voice_lte_pref"

    const-string v3, "CheckBoxPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    const-string v2, "kt_hd_voice"

    const-string v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "kt_hd_voice_lte_pref"

    const-string v3, "SwitchPreference"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/KTHDVoiceSetting;->getPreference(Landroid/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-ne p2, v5, :cond_e

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    const/4 v1, 0x0

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVolteSupported = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_6

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-static {v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setHDVoiceNetworkPref(Z)V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "hd_voice_network_pref"

    invoke-static {v5, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "voicecall_type"

    invoke-static {v5, v9, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const-string v5, "support_uicc_mobility"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "menu_simplification"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "feature_ktt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    if-eqz v4, :cond_9

    move v5, v6

    :goto_2
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hd_voice_network_pref"

    if-eqz v4, :cond_a

    move v5, v7

    :goto_3
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v5, :cond_3

    iget-object v8, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v4, :cond_b

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_3
    const-string v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_c

    if-ne v2, v7, :cond_c

    move v3, v6

    :goto_5
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "enable"

    if-nez v3, :cond_d

    move v5, v7

    :goto_6
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_4

    move v6, v7

    :cond_4
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    :cond_5
    :goto_7
    return v7

    :cond_6
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    if-eqz v4, :cond_8

    move v5, v6

    :goto_8
    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v5, v7

    goto :goto_8

    :cond_9
    move v5, v7

    goto :goto_2

    :cond_a
    move v5, v6

    goto :goto_3

    :cond_b
    move v5, v6

    goto :goto_4

    :cond_c
    move v3, v7

    goto :goto_5

    :cond_d
    move v5, v6

    goto :goto_6

    :cond_e
    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-ne p2, v5, :cond_14

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "hd_voice_network_pref"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_10

    move v5, v7

    :goto_9
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "voicecall_type"

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v6

    :goto_a
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v5, "interworking_hd_voice_by_intent"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_12

    move v3, v6

    :goto_b
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "enable"

    if-nez v3, :cond_13

    move v5, v7

    :goto_c
    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v3, :cond_f

    move v6, v7

    :cond_f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v7}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    goto/16 :goto_7

    :cond_10
    move v5, v6

    goto :goto_9

    :cond_11
    move v5, v8

    goto :goto_a

    :cond_12
    move v3, v7

    goto :goto_b

    :cond_13
    move v5, v6

    goto :goto_c

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_7
.end method

.method public onResume()V
    .locals 11

    const/4 v10, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    iput-boolean v7, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "voicecall_type"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "hd_voice_network_pref"

    invoke-static {v6, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v6, "common_volte"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isVoLTESettingEnabled()Z

    move-result v3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isVolteSupported = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_1

    sget-boolean v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v6, :cond_6

    sget v6, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v6, v10, :cond_6

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "kt_hd_voice"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    sget-boolean v9, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v8, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_2

    sget-boolean v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    if-eqz v6, :cond_8

    sget v6, Lcom/android/phone/KTHDVoiceSetting;->mSettingValue:I

    if-eq v6, v10, :cond_8

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_8

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "kt_hd_voice_lte_pref"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    sget-boolean v9, Lcom/android/phone/KTHDVoiceSetting;->mCheckValue:Z

    invoke-virtual {v6, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iput-boolean v8, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    :cond_2
    :goto_1
    const-string v6, "KTHDVoiceSetting"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fromSettingSearch = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-boolean v6, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " is called by SettingSearch"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v8}, Lcom/android/phone/KTHDVoiceSetting;->log(Ljava/lang/String;Z)V

    sput-boolean v7, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenu:Z

    iput-boolean v7, p0, Lcom/android/phone/KTHDVoiceSetting;->fromSettingSearch:Z

    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "kt_hd_voice"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0, v6, v9}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v5, v6, :cond_c

    move v1, v8

    :goto_3
    const-string v6, "KTHDVoiceSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KTHDVoiceSetting isCalling :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_4
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_5
    :goto_4
    return-void

    :cond_6
    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-ne v0, v8, :cond_7

    move v6, v7

    :goto_5
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v6, v8

    goto :goto_5

    :cond_8
    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-lez v4, :cond_9

    move v6, v8

    :goto_6
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    if-eqz v3, :cond_a

    if-eq v0, v8, :cond_a

    move v2, v8

    :goto_7
    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v2}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    move v6, v7

    goto :goto_6

    :cond_a
    move v2, v7

    goto :goto_7

    :cond_b
    sget-object v6, Lcom/android/phone/KTHDVoiceSetting;->mOpenDetailMenuKey:Ljava/lang/String;

    const-string v9, "kt_hd_voice_lte_pref"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {p0, v6, v9}, Lcom/android/phone/KTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_c
    move v1, v7

    goto :goto_3

    :cond_d
    const-string v6, "support_uicc_mobility"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "menu_simplification"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_4

    :cond_e
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mHDVoiceChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/phone/KTHDVoiceSetting;->mLTENetworkChecked:Landroid/preference/TwoStatePreference;

    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/phone/KTHDVoiceSetting;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lcom/android/phone/KTHDVoiceSetting$EmptyView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/KTHDVoiceSetting$EmptyView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method

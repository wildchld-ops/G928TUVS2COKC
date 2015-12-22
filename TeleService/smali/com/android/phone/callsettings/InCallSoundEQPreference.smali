.class public Lcom/android/phone/callsettings/InCallSoundEQPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "InCallSoundEQPreference.java"


# instance fields
.field private mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

.field private mVoiceCallEqListSetting:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/InCallSoundEQPreference;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "InCallSoundEQPreference"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method


# virtual methods
.method public isOffHook()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected makeEQDialog()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0090

    new-instance v2, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$2;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a008e

    new-instance v2, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$3;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a033b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0346

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f070023

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "voicecall_eq_list_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const-string v2, "voicecall_eq_analysis_setting"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    new-instance v3, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;-><init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "support_safetycare"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->makeEQDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f7
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.phone"

    const-string v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->finish()V

    const/4 v3, 0x1

    :goto_1
    return v3

    :catch_0
    move-exception v0

    const-string v3, "InCallSoundEQPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "com.android.phone"

    const-string v8, "PERS"

    invoke-static {v6, v7, v8}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_revision"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_4

    move v3, v4

    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_diagnosis"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_direction"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v9, :cond_5

    if-eq v1, v10, :cond_0

    if-ne v1, v11, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    const v7, 0x7f0a0344

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->isOffHook()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setEnabled(Z)V

    :cond_2
    :goto_3
    const-string v6, "support_safetycare"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_4
    return-void

    :cond_4
    move v3, v5

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x3

    goto :goto_1

    :cond_6
    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x4

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    aget-object v7, v0, v1

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqListSetting:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference;->mVoiceCallEqAnalysisSetting:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4
.end method

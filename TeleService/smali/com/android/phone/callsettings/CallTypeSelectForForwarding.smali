.class public Lcom/android/phone/callsettings/CallTypeSelectForForwarding;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForForwarding.java"


# static fields
.field public static mSimId:I


# instance fields
.field private mDataEnabledObserver:Landroid/database/ContentObserver;

.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding$1;-><init>(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mDataEnabledObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/CallTypeSelectForForwarding;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v6, "CallTypeSelectForForwarding"

    const-string v9, "Registering for Airplane mode listener"

    invoke-static {v6, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v9}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v9, v7, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v6, "feature_multisim"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v6, "CallSettingTab"

    invoke-virtual {v1, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    const-string v6, "CallTypeSelectForForwarding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimId from bundle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v6, "CallTypeSelectForForwarding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mSimId : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v6, 0x7f07000d

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v6, "button_voicecall"

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string v6, "button_videocall"

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    iget-object v9, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->isAirplaneModeOn()Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    const-string v6, "video_call_not_support"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "enabled"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "feature_rwc"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_3
    move v5, v7

    :goto_3
    iget-object v6, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_5

    if-eqz v5, :cond_4

    const-string v6, "sim2_2g_only"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget v6, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    if-ne v6, v7, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "feature_hktw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_6
    move v2, v7

    :goto_4
    const-string v6, "CallTypeSelectForForwarding"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCHNHKTW : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "support_psvt_only"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "CallTypeSelectForForwarding"

    const-string v9, "not isAvailablePSVT"

    invoke-static {v6, v9, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v6, "button_videocall"

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_8
    return-void

    :cond_9
    sget v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v6, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto/16 :goto_0

    :cond_a
    move v6, v8

    goto/16 :goto_1

    :cond_b
    move v6, v8

    goto/16 :goto_2

    :cond_c
    move v5, v8

    goto/16 :goto_3

    :cond_d
    move v2, v8

    goto :goto_4

    :cond_e
    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    const-string v0, "CallTypeSelectForForwarding"

    const-string v1, "Unregistering for Airplane mode listener"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mDataEnabledObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "FROMWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->finish()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVoiceCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_0

    const v3, 0x7f0a0271

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsCallForwardOptions;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "fragment_title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_1

    const v3, 0x7f0a0272

    invoke-virtual {p0, v3}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "CallSettingTab"

    sget v4, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "fragment_title"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallTypeSelectForForwarding"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    :goto_0
    const-string v0, "CallTypeSelectForForwarding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSimId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForForwarding;->mSimId:I

    goto :goto_0
.end method

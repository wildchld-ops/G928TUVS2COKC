.class public Lcom/android/phone/callsettings/CallTypeSelectForBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallTypeSelectForBarring.java"


# static fields
.field public static mSimId:I


# instance fields
.field private mVideoCall:Landroid/preference/PreferenceScreen;

.field private mVoiceCall:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private onCreateMultiSIM()V
    .locals 4

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "CallSettingTab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    const-string v1, "CallTypeSelectForBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "CallTypeSelectForBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget v1, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimId:I

    sput v1, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->onCreateMultiSIM()V

    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v5, "button_voicecall"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVoiceCall:Landroid/preference/PreferenceScreen;

    const-string v5, "button_videocall"

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    const-string v5, "video_call_not_support"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "common_vt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "feature_rwc"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_0
    move v4, v7

    :goto_0
    iget-object v5, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_2

    if-eqz v4, :cond_1

    const-string v5, "sim2_2g_only"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget v5, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mSimId:I

    if-ne v5, v7, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->mVideoCall:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v5, "feature_chn"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "feature_hktw"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    move v1, v7

    :goto_1
    const-string v5, "CallTypeSelectForBarring"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCHNHKTW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "support_psvt_only"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "CallTypeSelectForBarring"

    const-string v8, "not isAvailablePSVT"

    invoke-static {v5, v8, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v5, "button_videocall"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallTypeSelectForBarring;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_5
    return-void

    :cond_6
    move v4, v6

    goto :goto_0

    :cond_7
    move v1, v6

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

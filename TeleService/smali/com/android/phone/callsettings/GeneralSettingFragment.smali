.class public Lcom/android/phone/callsettings/GeneralSettingFragment;
.super Lcom/android/phone/CallFeaturesSetting;
.source "GeneralSettingFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;-><init>()V

    return-void
.end method


# virtual methods
.method protected initializeSettings()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GeneralSettingFragment"

    const-string v1, "initializeSettings from GeneralSettingFragment"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initGeneralSetting(Z)V

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initSoundSetting(Z)V

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVideoSetting(Z)V

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVoicemailSetting(Z)V

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/GeneralSettingFragment;->initVoipSetting(Z)V

    return-void
.end method

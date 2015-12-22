.class public Lcom/android/settings/notification/VibrationsSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VibrationsSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mAudioManager:Landroid/media/AudioManager;


# instance fields
.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeviceVibration:Landroid/preference/PreferenceScreen;

.field private mKeyboardVibration:Landroid/preference/SwitchPreference;

.field private mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateWhenRinging:Landroid/preference/SwitchPreference;

.field private mVibrationOnTouch:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "VibrationsSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/VibrationsSettings;->DEBUG:Z

    new-instance v0, Lcom/android/settings/notification/VibrationsSettings$6;

    invoke-direct {v0}, Lcom/android/settings/notification/VibrationsSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VibrationsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/notification/VibrationsSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VibrationsSettings$1;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrationsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/VibrationsSettings;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/VibrationsSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Landroid/media/AudioManager;
    .locals 1

    sget-object v0, Lcom/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public isEnableAOBLE()Z
    .locals 3

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f0700b0

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "audio"

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    sput-object v4, Lcom/android/settings/notification/VibrationsSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, v8}, Lcom/android/settings/notification/VibrationsSettings;->addPreferencesFromResource(I)V

    const-string v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/settings/notification/VibrationsSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/VibrationsSettings$2;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/settings/notification/VibrationsSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/VibrationsSettings$3;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    new-instance v7, Lcom/android/settings/notification/VibrationsSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/VibrationsSettings$4;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v7, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_VIBETONZ"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "vibration_feedback_intensity"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v5, :cond_2

    const-string v4, "vibrate_on_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string v4, "keyboard_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v7, "UPSM"

    invoke-static {v4, v8, v7}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "phone_vibration"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    const-string v4, "vibrate_when_ringing"

    invoke-virtual {p0, v4}, Lcom/android/settings/notification/VibrationsSettings;->removePreference(Ljava/lang/String;)V

    :cond_4
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    iget-object v7, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->isEnableAOBLE()Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->isEnableAOBLE()Z

    move-result v7

    if-nez v7, :cond_8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    move v4, v6

    goto :goto_1

    :cond_8
    move v5, v6

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/VibrationsSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "powersaving_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "psm_switch"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/notification/VibrationsSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/VibrationsSettings$5;-><init>(Lcom/android/settings/notification/VibrationsSettings;)V

    iput-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mRingModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrateWhenRinging:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "vibrate_when_ringing"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "haptic_feedback_enabled"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "sip_key_feedback_vibration"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_c

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->updateDeviceVibrationName()V

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->isEnableAOBLE()Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->isEnableAOBLE()Z

    move-result v5

    if-nez v5, :cond_e

    :goto_5
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_7
    return-void

    :cond_8
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mVibrationOnTouch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_9
    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/notification/VibrationsSettings;->mKeyboardVibration:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_a
    move v2, v4

    goto :goto_1

    :cond_b
    move v2, v4

    goto :goto_2

    :cond_c
    move v2, v4

    goto :goto_3

    :cond_d
    move v2, v4

    goto :goto_4

    :cond_e
    move v3, v4

    goto :goto_5
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationsSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/notification/VibrationsSettings;->mDeviceVibration:Landroid/preference/PreferenceScreen;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

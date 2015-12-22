.class public Lcom/android/settings/DockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAudioOutput:Landroid/preference/ListPreference;

.field private mAutomaticUnlock:Landroid/preference/SwitchPreference;

.field private mCoverCategory:Landroid/preference/PreferenceCategory;

.field private mCoverNote:Landroid/preference/CheckBoxPreference;

.field private mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

.field private mCradleEnable:Landroid/preference/CheckBoxPreference;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mFastWirelessCharging:Landroid/preference/SwitchPreference;

.field private mHdmiCategory:Landroid/preference/PreferenceCategory;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectInfo:Landroid/preference/PreferenceScreen;

.field private mShowDeskAlertdialog:Landroid/app/AlertDialog;

.field private mShowNotifications:Landroid/preference/PreferenceScreen;

.field private mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

.field private showWireLessChargeMenu:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/DockSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DockSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mShowDeskAlertdialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/DockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DockSettings$1;-><init>(Lcom/android/settings/DockSettings;)V

    iput-object v0, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DockSettings;)Landroid/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private checkSmartDockType()Z
    .locals 11

    const/16 v8, 0x400

    const/4 v7, 0x0

    const-string v0, "sys/class/sec/switch/adc"

    new-array v1, v8, [C

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v4, v1, v8, v9}, Ljava/io/FileReader;->read([CII)I

    move-result v6

    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switch/adc :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    :try_start_2
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_0
    const-string v8, "DockSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Docktype :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "10"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v7, 0x1

    :cond_2
    return v7

    :catch_0
    move-exception v2

    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_0

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    const-string v8, "DockSettings"

    const-string v9, "does not readSmartDock! This Kernel does not have wired headset support"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_2
    :try_start_5
    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_1

    :try_start_6
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v3, :cond_3

    :try_start_7
    const-string v8, "DockSettings"

    const-string v9, "Closing the file"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_4
    throw v7

    :catch_5
    move-exception v2

    const-string v8, "DockSettings"

    const-string v9, "Fail to read SmartDocktype"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_3

    :catch_6
    move-exception v2

    move-object v3, v4

    goto :goto_2

    :catch_7
    move-exception v2

    move-object v3, v4

    goto :goto_1
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a059d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a059e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private initDockSettings()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/DockSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const-string v1, "dock_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "cradle_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mSelectInfo:Landroid/preference/PreferenceScreen;

    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    const-string v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0a11b3

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_4
    const-string v1, "cover"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string v1, "automatic_unlock"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    const-string v1, "hdmi"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mHdmiCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "audio_output"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->hasHDMImenuinAccessories()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "hdmi"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "audio_output"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    const-string v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isExistCoverNotePackage(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "cover_note"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "cover_note_weather_unit"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "show_wireless_charger_menu"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    iget v1, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-nez v1, :cond_11

    const-string v1, "fast_charing_category"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "fast_wireless_charging"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_a

    if-nez v0, :cond_e

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0a11c1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "sview_color_2014"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingOptions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "select_info"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/android/settings/Utils;->getLockscreenVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_5

    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a8lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_d
    const-string v1, "cover_show_notifications"

    invoke-virtual {p0, v1}, Lcom/android/settings/DockSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    if-ne v0, v4, :cond_a

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverCategory:Landroid/preference/PreferenceCategory;

    const v2, 0x7f0a11c2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    goto :goto_3

    :cond_f
    if-ne v0, v4, :cond_c

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mSelectInfo:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0a13fb

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_4

    :cond_10
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_11
    iget-object v1, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2
.end method

.method private needsDockSettings()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/settings/DockSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/DockSettings;->initDockSettings()V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DockSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio_output"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "hdmi_audio_output"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v4, "automatic_unlock"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const-string v4, "cover_note"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "cover_note"

    if-eqz v1, :cond_5

    move v2, v3

    :cond_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "DockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Save KEY_COVER_NOTE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string v4, "cover_note_weather_unit"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cover_note_weather_unit"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_7
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "fast_wireless_charging"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wireless_fast_charging"

    if-eqz v1, :cond_9

    move v2, v3

    :cond_9
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dock_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cradle_enable"

    if-eqz v9, :cond_3

    move v2, v1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cradle_connect"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "DockSettings"

    const-string v2, "Cradle is connected:"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "smartdock"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    if-eqz v9, :cond_5

    const/4 v6, 0x1

    :goto_3
    const-string v0, "state"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "cradle_enable"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->showOudioOutputNotiDialog()V

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :cond_6
    const-string v0, "DockSettings"

    const-string v2, "Cradle is not connected:"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/DockSettings;->checkSmartDockType()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "smartdock"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    const/4 v6, 0x0

    const-string v0, "state"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "DockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PhoneSpeakerState(0 Phone, 1 Line out): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    if-ne p2, v2, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_unlock"

    iget-object v4, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/DockSettings;->mSelectInfo:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_b

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "coversetting"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "com.android.settings.ShowInfomationMenu"

    const v3, 0x7f0a13f6

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/DockSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_b
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v7, "dock_sounds_enabled"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    const-string v7, "cradle_enable"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mAutomaticUnlock:Landroid/preference/SwitchPreference;

    const-string v7, "automatic_unlock"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_8

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string v7, "hdmi_audio_output"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/android/settings/DockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v7, "audioParam;outDevice"

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    if-eqz v4, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_0
    :goto_3
    const-string v7, "DockSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isHDMI: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_b

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_4
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_2

    const-string v7, "cover_note"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_c

    move v6, v9

    :goto_5
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNote:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_2
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    if-eqz v7, :cond_3

    const-string v7, "cover_note_weather_unit"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/DockSettings;->mCoverNoteWeatherUnit:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->hasCoverSettingShowNotifications(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mShowNotifications:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->getLockScreenShowNotificationSummary(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    iget v7, p0, Lcom/android/settings/DockSettings;->showWireLessChargeMenu:I

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mFastWirelessCharging:Landroid/preference/SwitchPreference;

    const-string v10, "wireless_fast_charging"

    invoke-static {v5, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v8, :cond_d

    :goto_6
    invoke-virtual {v7, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_5
    return-void

    :cond_6
    move v7, v9

    goto/16 :goto_0

    :cond_7
    move v7, v9

    goto/16 :goto_1

    :cond_8
    move v7, v9

    goto/16 :goto_2

    :cond_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_a

    move v2, v9

    :goto_7
    goto/16 :goto_3

    :cond_a
    move v2, v8

    goto :goto_7

    :cond_b
    iget-object v7, p0, Lcom/android/settings/DockSettings;->mAudioOutput:Landroid/preference/ListPreference;

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings/DockSettings;->mCradleEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_4

    :cond_c
    move v6, v8

    goto/16 :goto_5

    :cond_d
    move v8, v9

    goto :goto_6
.end method

.method public showOudioOutputNotiDialog()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    :cond_0
    const v1, 0x7f0a11c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a11ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a07c0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/settings/DockSettings;->mshowOudioOutputNotiDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.class public Lcom/android/settings/premiumwatch/PremiumWatchSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PremiumWatchSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mStyleItem:[Ljava/lang/String;

.field private static mStyleState:I

.field private static sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;


# instance fields
.field private mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

.field private mHelpPref:Landroid/preference/Preference;

.field private mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

.field private mWatchSignature:Landroid/preference/Preference;

.field private mWatchSound:Landroid/preference/CheckBoxPreference;

.field private mWatchStyle:Landroid/preference/Preference;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings$1;

    invoke-direct {v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/premiumwatch/PremiumWatchSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    return-void
.end method

.method private putIntToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x1000

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    move v4, v3

    :goto_1
    return v4

    :catch_0
    move-exception v0

    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_2
    :try_start_3
    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, -0x1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_3
    move v4, v3

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_2
    :goto_5
    move v4, v3

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v5, "PremiumWatchSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t close the file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void
.end method

.method private updateStyleSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    const-string v1, "premium_watch_style_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    sget-object v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    sget v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "PremiumWatchSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStyleSummary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    iget-object v2, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->requestFocus()Z

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string v1, "PremiumWatchSettings"

    const-string v2, "onCheckChanged : Premium Watch enable/disable"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "premium_watch_switch_onoff"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "/sys/class/sec/sec_touchkey/two_touch_wakeup_mode"

    const-string v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->putIntToFile(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    new-array v1, v6, [Ljava/lang/String;

    sput-object v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    sget-object v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    const v2, 0x7f0a12f8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->addPreferencesFromResource(I)V

    const-string v1, "premium_watch_help_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    const v2, 0x7f040191

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mHelpPref:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    const-string v1, "premium_watch_style_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "premium_watch_style_option"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchStyle:Landroid/preference/Preference;

    sget-object v2, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleItem:[Ljava/lang/String;

    sget v3, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mStyleState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v1, "premium_watch_signature_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSignature:Landroid/preference/Preference;

    const-string v1, "premium_watch_sound_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSound:Landroid/preference/CheckBoxPreference;

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "PremiumWatchSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;->stopObserving()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateStyleSummary()V

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->pause()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-boolean v5, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mOpenDetailMenu:Z

    if-eqz v5, :cond_0

    sget v5, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mSettingValue:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    sget v5, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mSettingValue:I

    if-ne v5, v3, :cond_2

    move v2, v3

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "premium_watch_sound"

    iget-object v6, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_1
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string v1, "PremiumWatchSettings"

    const-string v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->resume()V

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSound:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mWatchSound:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "premium_watch_sound"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_3

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateState()V

    invoke-direct {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->updateStyleSummary()V

    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;-><init>(Lcom/android/settings/premiumwatch/PremiumWatchSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    sget-object v0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->sSettingsObserver:Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchSettings$SettingsObserver;->startObserving()V

    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PremiumWatchSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mActionBarSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/premiumwatch/PremiumWatchSettings;->mPremiumWatchEnabler:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->stop()V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

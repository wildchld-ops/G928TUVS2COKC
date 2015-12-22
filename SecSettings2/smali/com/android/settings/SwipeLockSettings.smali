.class public Lcom/android/settings/SwipeLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SwipeLockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private isKioskContainer:Z

.field private mActionMemo:Landroid/preference/SwitchPreference;

.field private mUnlockEffect:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/SwipeLockSettings$1;

    invoke-direct {v0}, Lcom/android/settings/SwipeLockSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/SwipeLockSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    return-void
.end method

.method private InitPreferences()V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "unlock_effect_with_preview"

    invoke-virtual {p0, v4}, Lcom/android/settings/SwipeLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_ripple_effect"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    sget-object v7, Lcom/android/settings/UnlockEffect;->EffectName:[I

    aget v7, v7, v3

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    const-string v4, "DCM"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/settings/SwipeLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lockscreen_wallpaper"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_7

    move v1, v5

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v0, v6

    :goto_2
    if-nez v1, :cond_2

    if-gtz v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    iget-boolean v4, p0, Lcom/android/settings/SwipeLockSettings;->isKioskContainer:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    const-string v4, "action_meno_on_lock_screen"

    invoke-virtual {p0, v4}, Lcom/android/settings/SwipeLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/SwitchPreference;

    iput-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_quick_note"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    :goto_3
    invoke-virtual {v4, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    :cond_7
    move v1, v6

    goto :goto_1

    :cond_8
    move v0, v5

    goto :goto_2

    :cond_9
    move v6, v5

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/android/settings/SwipeLockSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SwipeLockSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/SwipeLockSettings;->mActionMemo:Landroid/preference/SwitchPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SwipeLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_quick_note"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "SwipeLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange mActionMemo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/settings/SwipeLockSettings;->mUnlockEffect:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.UnlockEffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/SwipeLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SwipeLockSettings;->InitPreferences()V

    return-void
.end method

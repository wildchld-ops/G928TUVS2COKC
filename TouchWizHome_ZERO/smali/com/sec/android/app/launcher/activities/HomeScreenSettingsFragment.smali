.class public Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "HomeScreenSettingsFragment.java"


# static fields
.field public static final KEY_HOMESCREEN_GRID:Ljava/lang/String; = "home_screen_grid"

.field public static final KEY_HOMESCREEN_MODE:Ljava/lang/String; = "home_screen_mode"

.field private static final SCREEN_GRID_SUMMARY:Ljava/lang/String; = "screen_grid_summary"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mHomeScreenGrid:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenSettingsFragment"

    sput-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private setHomeScreenGrid(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    if-nez v1, :cond_1

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    if-nez v1, :cond_1

    const-string v1, "screen_grid_summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "home_screen_grid"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getSystemPropertyForSprintExt()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    new-instance v2, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private setHomeScreenMode()V
    .locals 2

    const-string v1, "home_screen_mode"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0d005f

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    return-void

    :cond_1
    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f06000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->setHomeScreenGrid(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->setHomeScreenMode()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    sget-object v0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    const-string v1, "screen_grid_summary"

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeScreenSettingsFragment;->mHomeScreenGrid:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

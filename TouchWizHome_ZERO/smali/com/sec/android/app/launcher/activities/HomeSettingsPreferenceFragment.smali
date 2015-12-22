.class public Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "HomeSettingsPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final MY_MAGAZINE_PREFS:Ljava/lang/String; = "my_magazine"


# instance fields
.field private mActivityShouldRestart:Z

.field private mAppsTransitionEffect:Landroid/preference/ListPreference;

.field private mBlurWallpaperMode:Landroid/preference/SwitchPreference;

.field private mDnDEffect:Landroid/preference/ListPreference;

.field private mDoAlert:Z

.field private mFirstRunBlurWallpaperMode:Z

.field private mFirstRunParallaxEffectMode:Z

.field private mFirstRunPowerSavingModeDemo:Z

.field private mFirstRunWeatherEffectMode:Z

.field private mFragmentTransitionEffect:Landroid/preference/ListPreference;

.field private mGesturePrediction:Landroid/preference/EditTextPreference;

.field private mGestureSmoothing:Landroid/preference/EditTextPreference;

.field private mMagazineEnable:Landroid/preference/CheckBoxPreference;

.field private mParallaxEffectMode:Landroid/preference/SwitchPreference;

.field private mPowerSavingMode:Landroid/preference/SwitchPreference;

.field private mProcessShouldRestart:Z

.field private mTextureScaleRatio:Landroid/preference/EditTextPreference;

.field private mTransitionEffect:Landroid/preference/ListPreference;

.field private mWeatherEffectMode:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunPowerSavingModeDemo:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunBlurWallpaperMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunParallaxEffectMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunWeatherEffectMode:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDoAlert:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDoAlert:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mPowerSavingMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mBlurWallpaperMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mParallaxEffectMode:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z

    return v0
.end method

.method private enableBlurWallpaperMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isBlurWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "blur_wallpaper_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mBlurWallpaperMode:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunBlurWallpaperMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mBlurWallpaperMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedBlurWallpaperEnableState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedBlurWallpaperEnableState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunBlurWallpaperMode:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mBlurWallpaperMode:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$5;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private enableParallaxEffect()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isParallaxEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "parallax_effect_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mParallaxEffectMode:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunParallaxEffectMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mParallaxEffectMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedParallaxEffectEnableState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedParallaxEffectEnableState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunParallaxEffectMode:Z

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mParallaxEffectMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedPowerSavingModeEnableState()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mParallaxEffectMode:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$7;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enablePowerSavingMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isPowerSavingModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "power_saving_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mPowerSavingMode:Landroid/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunPowerSavingModeDemo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mPowerSavingMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedPowerSavingModeEnableState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedPowerSavingModeEnableState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunPowerSavingModeDemo:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mPowerSavingMode:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$4;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private enableWeatherEffect()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isWeatherEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "weather_effect_mode"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->isWifiAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunWeatherEffectMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedWeatherEffectEnableState()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSavedWeatherEffectEnableState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFirstRunWeatherEffectMode:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mWeatherEffectMode:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$6;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    return-void
.end method

.method private hidePopupsIfShown()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    return-void
.end method

.method private setAppsTransitionEffectMenu()V
    .locals 2

    const-string v0, "apps_list_transition_effect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getSavedScrollEffect()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setDnDEffectMenu()V
    .locals 2

    const-string v0, "home_settings_dnd_effect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setFragmentTransitionEffectMenu()V
    .locals 2

    const-string v0, "home_settings_fragment_transition_effect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private setGesturePrediction()V
    .locals 2

    const-string v0, "home_settings_gesture_prediction"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGesturePrediction:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$2;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setGestureSmoothing()V
    .locals 2

    const-string v0, "home_settings_gesture_smoothing"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mGestureSmoothing:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$3;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setMagazineMenu()V
    .locals 1

    const-string v0, "my_magazine"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mMagazineEnable:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mMagazineEnable:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mMagazineEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setTextureScaleRatio()V
    .locals 3

    const-string v0, "home_settings_texture_scale_ratio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTextureScaleRatio:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$1;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private setTransitionEffectMenu()V
    .locals 2

    const-string v0, "home_settings_transition_effect"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getSavedScrollEffect()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment$8;-><init>(Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;)V

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDoAlert:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v2, "Continue"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_0
.end method

.method private switchToHomeFragment()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/launcher/utils/FadeDuration;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/launcher/utils/FadeDuration;-><init>(F)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->showHomeFragmentAnimated(Lcom/sec/android/app/launcher/utils/FadeDuration;Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->resetOptionTray()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    if-eqz v0, :cond_2

    const-string v0, "To apply changes the activity must restart"

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z

    if-eqz v0, :cond_0

    const-string v0, "To apply changes the process must restart"

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->showAlert(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createPreference()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setTransitionEffectMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setAppsTransitionEffectMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setDnDEffectMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setMagazineMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setFragmentTransitionEffectMenu()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->enablePowerSavingMode()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->enableBlurWallpaperMode()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->enableWeatherEffect()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->enableParallaxEffect()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setTextureScaleRatio()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setGesturePrediction()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->setGestureSmoothing()V

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mActivityShouldRestart:Z

    iput-boolean v3, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mProcessShouldRestart:Z

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->switchToHomeFragment()V

    const/4 v0, 0x1

    return v0
.end method

.method public onHomePressed()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->hidePopupsIfShown()V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->switchToHomeFragment()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setScrollEffect(I)V

    :goto_0
    return v6

    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mAppsTransitionEffect:Landroid/preference/ListPreference;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/activities/AppsFragment;->applyScrollEffect(I)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDnDEffect(I)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mMagazineEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mMagazineEnable:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_3

    move v5, v6

    :cond_3
    invoke-virtual {v7, v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setEnableHeadlines(Z)V

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f070003

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    aget-object v5, v3, v5

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    :cond_5
    const-string v5, "home_fragment_transition_effect"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/launcher/activities/HomePresenter;->enableFragmentTransitionEffect(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getAppsFragment()Lcom/sec/android/app/launcher/activities/AppsFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/AppsFragment;->getAppsPresenter()Lcom/sec/android/app/launcher/activities/AppsPresenter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/sec/android/app/launcher/activities/AppsPresenter;->enableFragmentTransitionEffect(Z)V

    goto/16 :goto_0

    :cond_6
    move v6, v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mDnDEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->mFragmentTransitionEffect:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setVisible(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/HomeSettingsPreferenceFragment;->createPreference()V

    :cond_0
    return-void
.end method

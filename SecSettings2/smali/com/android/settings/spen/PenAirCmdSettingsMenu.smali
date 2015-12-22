.class public Lcom/android/settings/spen/PenAirCmdSettingsMenu;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PenAirCmdSettingsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAirCmdObserver:Landroid/database/ContentObserver;

.field private mAppsAndFunctionsPref:Landroid/preference/Preference;

.field private final mAppsCountObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

.field private mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$3;

    invoke-direct {v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu$3;-><init>()V

    sput-object v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/PenAirCmdSettingsMenu$1;-><init>(Lcom/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsCountObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/spen/PenAirCmdSettingsMenu$2;-><init>(Lcom/android/settings/spen/PenAirCmdSettingsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/spen/PenAirCmdSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/spen/PenAirCmdSettingsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    return-void
.end method

.method private appsCountSummaryUpdate()V
    .locals 21

    const/4 v14, 0x0

    const-string v3, ""

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const-string v16, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "air_cmd_apps_and_functions"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v18, "PenAirCmdSettingsMenu"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "UpdateSavedAirCmd SavedApplist :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, ","

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v14, v15

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v14, :cond_7

    aget-object v18, v15, v10

    const-string v19, ";"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    const-string v19, "execute"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/ExecuteManager;

    const-string v18, "0"

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v5, 0x0

    new-instance v6, Landroid/content/ComponentName;

    const/16 v18, 0x1

    aget-object v18, v13, v18

    const/16 v19, 0x2

    aget-object v19, v13, v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v18, "A"

    const/16 v19, 0x3

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    :cond_1
    :goto_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v18, v14, -0x1

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string v18, "S"

    const/16 v19, 0x3

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    goto :goto_1

    :cond_4
    const-string v18, "P"

    const/16 v19, 0x3

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_5
    const-string v18, "1"

    const/16 v19, 0x0

    aget-object v19, v13, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v9, :cond_6

    const/16 v18, 0x4

    aget-object v18, v13, v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/samsung/android/app/ExecuteManager;->getExecutableInfo(Ljava/lang/String;)Lcom/samsung/android/app/ExecutableInfo;

    move-result-object v11

    if-eqz v11, :cond_2

    const/4 v4, 0x0

    const/16 v18, 0x1

    :try_start_2
    aget-object v18, v13, v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    :goto_3
    if-eqz v4, :cond_1

    const/16 v18, 0x1

    aget-object v18, v13, v18

    invoke-virtual {v11}, Lcom/samsung/android/app/ExecutableInfo;->getLabelId()I

    move-result v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v18, "PenAirCmdSettingsMenu"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mAppName :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v7

    const-string v18, "PenAirCmdSettingsMenu"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Fail to get application info : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string v18, "PenAirCmdSettingsMenu"

    const-string v19, "ExecuteManager is null"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0a15fe

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method

.method private updateEnableState()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v4, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mContext:Landroid/content/Context;

    const v0, 0x7f07006e

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->addPreferencesFromResource(I)V

    const-string v0, "key_air_cmd_apps_and_functions"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    const-string v0, "key_air_cmd_use_minimized"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "key_air_cmd_detachment_option"

    invoke-virtual {p0, v0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsCountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v4, "key_air_cmd_use_minimized"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_cmd_use_minimized"

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    const-string v4, "key_air_cmd_detachment_option"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_cmd_detachment_option"

    if-eqz v1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsAndFunctionsPref:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.service.aircommand.action.Settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "air_cmd_apps_and_functions"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAppsCountObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->appsCountSummaryUpdate()V

    iget-object v3, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mUseMinimizedSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "air_cmd_use_minimized"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mDetachmentOptionSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_cmd_detachment_option"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->updateEnableState()V

    invoke-virtual {p0}, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "air_button_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/spen/PenAirCmdSettingsMenu;->mAirCmdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field addedSome:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field private mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private mLowPowerModeObserver:Landroid/database/ContentObserver;

.field private mPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStatsType:I

.field private mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

.field private mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addedSome:Z

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/content/Context;)V

    const v1, 0x7f040023

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setHideLabels(Z)V

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addedSome:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private refreshStats()V
    .locals 42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v35, v0

    const/16 v36, -0x7

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v35, v0

    const/16 v36, -0x6

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    if-eqz v35, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    move-object/from16 v35, v0

    const/16 v36, -0x5

    invoke-virtual/range {v35 .. v36}, Landroid/preference/SwitchPreference;->setOrder(I)V

    :cond_1
    new-instance v35, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v38

    invoke-direct/range {v35 .. v38}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v35, v0

    const/16 v36, -0x4

    invoke-virtual/range {v35 .. v36}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v16, Landroid/preference/PreferenceCategory;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0a0a84

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    const/16 v35, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v30

    new-instance v10, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    if-eqz v30, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    const-wide/16 v38, 0x3e8

    mul-long v36, v36, v38

    const/16 v35, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v36

    move/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v32

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const-wide/16 v36, 0x3e8

    div-long v36, v32, v36

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    const/16 v38, 0x1

    invoke-static/range {v35 .. v38}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const v36, 0x7f0a0a87

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput-object v13, v37, v38

    invoke-virtual/range {v35 .. v37}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v35, -0x1

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v35

    if-nez v35, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v35, "screen.full"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    cmpl-double v35, v8, v36

    if-ltz v35, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v31

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v35, v0

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v21

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v21

    if-ge v15, v0, :cond_e

    move-object/from16 v0, v31

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    const-wide v38, 0x40ac200000000000L    # 3600.0

    mul-double v36, v36, v38

    const-wide/high16 v38, 0x4014000000000000L    # 5.0

    cmpg-double v35, v36, v38

    if-gez v35, :cond_6

    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v32, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v38

    div-double v36, v36, v38

    int-to-double v0, v12

    move-wide/from16 v38, v0

    mul-double v24, v36, v38

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v36, v36, v24

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_3

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v35, v0

    sget-object v36, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_7

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v40

    const-wide/high16 v40, 0x4008000000000000L    # 3.0

    div-double v38, v38, v40

    cmpg-double v35, v36, v38

    if-ltz v35, :cond_3

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    cmpg-double v35, v24, v36

    if-ltz v35, :cond_3

    const-string v35, "user"

    sget-object v36, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    :cond_7
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v35, v0

    sget-object v36, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    if-ne v0, v1, :cond_8

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v38

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    div-double v38, v38, v40

    cmpg-double v35, v36, v38

    if-ltz v35, :cond_3

    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    cmpg-double v35, v24, v36

    if-ltz v35, :cond_3

    const-string v35, "user"

    sget-object v36, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    :cond_8
    new-instance v34, Landroid/os/UserHandle;

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v35

    invoke-direct/range {v34 .. v35}, Landroid/os/UserHandle;-><init>(I)V

    new-instance v14, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v29

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v35, v0

    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v35, v0

    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v11

    new-instance v27, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v7, v11, v14}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    move-object/from16 v0, v29

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v36, v36, v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v38

    div-double v22, v36, v38

    move-wide/from16 v0, v24

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v35, v15, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    move-object/from16 v0, v27

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v35, v0

    if-eqz v35, :cond_9

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v35

    const-string v36, "CscFeature_Setting_ConfigOperatorCallService"

    invoke-virtual/range {v35 .. v36}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v36, "tphone"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_d

    const-string v18, "com.skt.prod.phone"

    const-string v19, "com.skt.prod.dialer"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0a0e91

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v14}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v14, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    if-eqz v35, :cond_b

    iget-object v0, v14, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "com.skt.prod.phone"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_a

    iget-object v0, v14, Lcom/android/settings/fuelgauge/BatteryEntry;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "com.skt.prod.dialer"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_b

    :cond_a
    const-string v35, "PowerUsageSummary"

    const-string v36, "remove T phone"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_b
    if-eqz v6, :cond_d

    const-string v35, "com.skt.prod.phone"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_c

    const-string v35, "com.skt.prod.dialer"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_d

    :cond_c
    const-string v35, "PowerUsageSummary"

    const-string v36, "remove T phone"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addedSome:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v35

    const/16 v36, 0xb

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_3

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "powersaving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "ultra_powersaving"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "display_battery_level"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string v0, "display_battery_level"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x2

    const v2, 0x7f0a0ad1

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x72

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v6

    :pswitch_0
    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v6, v9

    goto :goto_0

    :cond_0
    iput v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move v6, v9

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0ad4

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v6, v9

    goto :goto_0

    :pswitch_3
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "helphub:appid"

    const-string v2, "power_saving_mode"

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v8}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v6, v9

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "display_battery_level"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_battery_percentage"

    if-eqz v1, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "display_battery_percentage"

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    :cond_3
    instance-of v5, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v5, :cond_4

    move v4, v3

    goto :goto_0

    :cond_4
    move-object v1, p2

    check-cast v1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-static {v3, v5, v6, v0, v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    const v2, 0x7f0a08ec

    const v1, 0x7f0a08eb

    const/16 v8, 0x64

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "tmp_bat_history.bin"

    invoke-static {v0, v5}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->useGEDBattery(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v6, "low_power"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUltraPowerSavingModePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "ultra_powersaving_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLowPowerModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mDisplayBatteryLevel:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_battery_percentage"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

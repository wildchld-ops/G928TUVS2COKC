.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Landroid/preference/PreferenceFragment;
.source "ProcessStatsUi.java"

# interfaces
.implements Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;


# static fields
.field public static final BACKGROUND_AND_SYSTEM_PROC_STATES:[I

.field public static final CACHED_PROC_STATES:[I

.field private static final DURATION_QUANTUM:J

.field public static final FOREGROUND_PROC_STATES:[I

.field public static final RED_MEM_STATES:[I

.field public static final YELLOW_MEM_STATES:[I

.field private static sDurationLabels:[I

.field private static sDurations:[J

.field static final sEntryCompare:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Lcom/android/internal/app/ProcessStats;


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mDuration:J

.field private mDurationMenus:[Landroid/view/MenuItem;

.field private mLastDuration:J

.field mMaxWeight:J

.field mMemCachedWeight:D

.field mMemFreeWeight:D

.field mMemKernelWeight:D

.field mMemNativeWeight:D

.field private mMemRegion:I

.field mMemState:I

.field mMemStateWeights:[D

.field private mMemStatusPref:Landroid/preference/Preference;

.field mMemTimes:[J

.field mMemTotalWeight:D

.field mMemZRamWeight:D

.field mProcessStats:Lcom/android/internal/app/IProcessStats;

.field private mShowSystem:Z

.field private mShowSystemMenu:Landroid/view/MenuItem;

.field mStats:Lcom/android/internal/app/ProcessStats;

.field private mStatsType:I

.field mTotalTime:J

.field private mTypeBackgroundMenu:Landroid/view/MenuItem;

.field private mTypeCachedMenu:Landroid/view/MenuItem;

.field private mTypeForegroundMenu:Landroid/view/MenuItem;

.field mUm:Landroid/os/UserManager;

.field private mUseUss:Z

.field private mUseUssMenu:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    new-array v0, v11, [J

    const-wide/32 v2, 0xa4cb80

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v10

    const-wide/32 v2, 0x1499700

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v6

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/32 v2, 0x5265c00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->DURATION_QUANTUM:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v7

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    new-array v0, v11, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    new-array v0, v6, [I

    aput v6, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    new-array v0, v6, [I

    aput v7, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0aee
        0x7f0a0aef
        0x7f0a0af0
        0x7f0a0af1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :array_2
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-array v0, v1, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    return-void
.end method

.method private load()V
    .locals 6

    :try_start_0
    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v3}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    iget-wide v4, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v3, v4, v5}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/ProcessStats;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "ProcessStatsUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reading process stats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v5, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "ProcessStatsUi"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private refreshStats()V
    .locals 92

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mLastDuration:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    move-wide/from16 v16, v0

    cmp-long v8, v10, v16

    if-eqz v8, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    :cond_1
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x9

    if-ne v8, v10, :cond_2

    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->FOREGROUND_PROC_STATES:[I

    const v77, 0x7f0a0ae3

    :goto_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v10, v8, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v0, v8, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v16, v0

    sub-long v30, v10, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    const/4 v10, -0x2

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-wide/from16 v0, v30

    long-to-double v10, v0

    const/4 v14, 0x0

    invoke-static {v8, v10, v11, v14}, Lcom/android/settings/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0e00a2

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v53

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    if-ltz v8, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    move-object/from16 v0, v53

    array-length v10, v0

    if-ge v8, v10, :cond_5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemState:I

    aget-object v54, v53, v8

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0adb

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v16

    const/16 v16, 0x1

    aput-object v28, v14, v16

    invoke-virtual {v10, v11, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0adc

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v54, v14, v16

    invoke-virtual {v10, v11, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v9, v10, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v10, v10, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    const/16 v38, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    array-length v8, v8

    move/from16 v0, v38

    if-ge v0, v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v38

    add-int/lit8 v38, v38, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0xa

    if-ne v8, v10, :cond_3

    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->CACHED_PROC_STATES:[I

    const v77, 0x7f0a0ae1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v8, :cond_4

    sget-object v76, Lcom/android/settings/applications/ProcessStatsUi;->BACKGROUND_AND_SYSTEM_PROC_STATES:[I

    :goto_3
    const v77, 0x7f0a0ae2

    goto/16 :goto_0

    :cond_4
    sget-object v76, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_3

    :cond_5
    const-string v54, "?"

    goto/16 :goto_1

    :cond_6
    const/16 v44, 0x0

    :goto_4
    const/16 v8, 0x8

    move/from16 v0, v44

    if-ge v0, v8, :cond_8

    const/16 v39, 0x0

    :goto_5
    const/4 v8, 0x4

    move/from16 v0, v39

    if-ge v0, v8, :cond_7

    add-int v75, v39, v44

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    aget-wide v10, v8, v39

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v14, v14, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v16, v14, v75

    add-long v10, v10, v16

    aput-wide v10, v8, v39

    add-int/lit8 v39, v39, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v44, v44, 0x4

    goto :goto_4

    :cond_8
    new-instance v27, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-direct {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    const/4 v8, -0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    packed-switch v8, :pswitch_data_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v56, v0

    sget-object v52, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    :goto_6
    const/4 v8, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/LinearColorPreference;->setColoredRegions(I)V

    sget-object v23, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x0

    aget-wide v78, v8, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x1

    aget-wide v10, v8, v10

    const-wide/16 v16, 0x2

    mul-long v10, v10, v16

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    add-long v78, v78, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x2

    aget-wide v10, v8, v10

    const-wide/16 v16, 0x3

    div-long v10, v10, v16

    add-long v78, v78, v10

    move-wide/from16 v0, v78

    long-to-float v8, v0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v10, v10

    div-float v47, v8, v10

    move-object/from16 v0, v23

    array-length v8, v0

    add-int/lit8 v8, v8, -0x2

    int-to-float v8, v8

    mul-float v8, v8, v47

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    aget v26, v23, v8

    move-object/from16 v0, v27

    move/from16 v1, v26

    move/from16 v2, v26

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/LinearColorPreference;->setColors(III)V

    const/16 v38, 0x0

    :goto_7
    const/4 v8, 0x4

    move/from16 v0, v38

    if-ge v0, v8, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    aget-wide v10, v10, v38

    long-to-double v10, v10

    move-wide/from16 v0, v30

    long-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    double-to-long v10, v10

    aput-wide v10, v8, v38

    add-int/lit8 v38, v38, 0x1

    goto :goto_7

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x3

    aget-wide v56, v8, v10

    sget-object v52, Lcom/android/settings/applications/ProcessStatsUi;->RED_MEM_STATES:[I

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v10, 0x3

    aget-wide v10, v8, v10

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v14, 0x2

    aget-wide v16, v8, v14

    add-long v10, v10, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    const/4 v14, 0x1

    aget-wide v16, v8, v14

    add-long v56, v10, v16

    sget-object v52, Lcom/android/settings/applications/ProcessStatsUi;->YELLOW_MEM_STATES:[I

    goto/16 :goto_6

    :cond_9
    new-instance v80, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v80

    move-object/from16 v1, v52

    invoke-direct {v0, v8, v1}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, v80

    invoke-virtual {v8, v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-wide/from16 v16, v0

    add-double v36, v10, v16

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-wide/from16 v16, v0

    add-double v10, v10, v16

    move-object/from16 v0, v80

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-wide/from16 v16, v0

    add-double v90, v10, v16

    const-wide/16 v24, 0x0

    const-wide/16 v62, 0x0

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemCachedWeight:D

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemFreeWeight:D

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemZRamWeight:D

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemKernelWeight:D

    move-object/from16 v0, v80

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemNativeWeight:D

    const/16 v38, 0x0

    :goto_8
    const/16 v8, 0xe

    move/from16 v0, v38

    if-ge v0, v8, :cond_e

    const/4 v8, 0x7

    move/from16 v0, v38

    if-ne v0, v8, :cond_b

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v38

    :cond_a
    :goto_9
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    move-object/from16 v0, v80

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v10, v38

    aput-wide v10, v8, v38

    const/16 v8, 0x9

    move/from16 v0, v38

    if-lt v0, v8, :cond_d

    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v36, v36, v10

    :goto_a
    const/4 v8, 0x2

    move/from16 v0, v38

    if-lt v0, v8, :cond_c

    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v24, v24, v10

    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v62, v62, v10

    :cond_c
    if-nez v38, :cond_a

    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v62, v62, v10

    goto :goto_9

    :cond_d
    move-object/from16 v0, v80

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v10, v8, v38

    add-double v90, v90, v10

    goto :goto_a

    :cond_e
    add-double v10, v36, v90

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTotalWeight:D

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v90

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v86, v10, v16

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    mul-double v10, v10, v36

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v34, v10, v16

    add-double v82, v86, v34

    new-instance v51, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual/range {v51 .. v51}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-double v0, v10

    move-wide/from16 v70, v0

    div-double v84, v70, v82

    mul-double v72, v86, v84

    mul-double v68, v34, v84

    new-instance v50, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v50 .. v50}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v10, "activity"

    invoke-virtual {v8, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    move-object/from16 v0, v50

    invoke-virtual {v8, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    cmpl-double v8, v10, v68

    if-ltz v8, :cond_10

    move-wide/from16 v72, v68

    const-wide/16 v68, 0x0

    :goto_b
    add-double v10, v68, v72

    div-double v10, v72, v10

    double-to-float v0, v10

    move/from16 v88, v0

    const/4 v8, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v10, v88

    move-object/from16 v0, v27

    move/from16 v1, v88

    invoke-virtual {v0, v1, v8, v10}, Lcom/android/settings/applications/LinearColorPreference;->setRatios(FFF)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    new-instance v9, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v52

    move-object/from16 v1, v76

    invoke-direct {v9, v8, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    new-instance v33, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/app/ProcessMap;-><init>()V

    const/16 v41, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v21

    :goto_c
    move/from16 v0, v41

    move/from16 v1, v21

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    move/from16 v0, v41

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/util/SparseArray;

    const/16 v45, 0x0

    :goto_d
    invoke-virtual/range {v64 .. v64}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v45

    if-ge v0, v8, :cond_16

    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/util/SparseArray;

    const/16 v46, 0x0

    :goto_e
    invoke-virtual/range {v89 .. v89}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v46

    if-ge v0, v8, :cond_15

    move-object/from16 v0, v89

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Lcom/android/internal/app/ProcessStats$PackageState;

    const/16 v42, 0x0

    :goto_f
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v0, v42

    if-ge v0, v8, :cond_14

    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v55

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object/from16 v0, v55

    iget v11, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ProcessState;

    if-nez v7, :cond_11

    const-string v8, "ProcessStatsUi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No process found for pkg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v74

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v74

    iget v11, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " proc name "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v55

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_10
    add-int/lit8 v42, v42, 0x1

    goto :goto_f

    :cond_10
    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    add-double v72, v72, v10

    move-object/from16 v0, v50

    iget-wide v10, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v10, v10

    sub-double v68, v68, v10

    goto/16 :goto_b

    :cond_11
    iget-object v8, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    if-nez v6, :cond_13

    new-instance v6, Lcom/android/settings/applications/ProcStatsEntry;

    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v14, 0x8

    if-ne v11, v14, :cond_12

    const/4 v11, 0x1

    :goto_11
    invoke-direct/range {v6 .. v11}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;ZZ)V

    iget-wide v10, v6, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    const-wide/16 v16, 0x0

    cmp-long v8, v10, v16

    if-lez v8, :cond_f

    iget-object v8, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10, v6}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_12
    const/4 v11, 0x0

    goto :goto_11

    :cond_13
    move-object/from16 v0, v74

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_10

    :cond_14
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_e

    :cond_15
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_d

    :cond_16
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_1d

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v21

    :goto_12
    move/from16 v0, v40

    move/from16 v1, v21

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, v8, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/util/SparseArray;

    const/16 v45, 0x0

    :goto_13
    invoke-virtual/range {v81 .. v81}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v45

    if-ge v0, v8, :cond_1c

    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v89

    check-cast v89, Landroid/util/SparseArray;

    const/16 v46, 0x0

    :goto_14
    invoke-virtual/range {v89 .. v89}, Landroid/util/SparseArray;->size()I

    move-result v8

    move/from16 v0, v46

    if-ge v0, v8, :cond_1b

    move-object/from16 v0, v89

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lcom/android/internal/app/ProcessStats$PackageState;

    const/16 v43, 0x0

    move-object/from16 v0, v66

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v22

    :goto_15
    move/from16 v0, v43

    move/from16 v1, v22

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v66

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v8, :cond_18

    move-object/from16 v0, v67

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    move-object/from16 v0, v33

    invoke-virtual {v0, v8, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    if-eqz v6, :cond_19

    move-object/from16 v0, v67

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/ProcStatsEntry;->addService(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    :cond_18
    :goto_16
    add-int/lit8 v43, v43, 0x1

    goto :goto_15

    :cond_19
    const-string v8, "ProcessStatsUi"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v67

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v81

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v67

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_1a
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_14

    :cond_1b
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_13

    :cond_1c
    add-int/lit8 v40, v40, 0x1

    goto/16 :goto_12

    :cond_1d
    sget-object v8, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, v32

    invoke-static {v0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-wide/16 v48, 0x1

    const/16 v38, 0x0

    if-eqz v32, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v21

    :goto_17
    move/from16 v0, v38

    move/from16 v1, v21

    if-ge v0, v1, :cond_20

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    cmp-long v8, v48, v10

    if-gez v8, :cond_1e

    iget-wide v0, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    move-wide/from16 v48, v0

    :cond_1e
    add-int/lit8 v38, v38, 0x1

    goto :goto_17

    :cond_1f
    const/16 v21, 0x0

    goto :goto_17

    :cond_20
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_27

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz v8, :cond_26

    :goto_18
    move-wide/from16 v0, v62

    double-to-long v10, v0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    cmp-long v8, v10, v48

    if-gez v8, :cond_21

    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    :cond_21
    :goto_19
    if-eqz v32, :cond_28

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v29, v8, -0x1

    :goto_1a
    if-ltz v29, :cond_22

    move-object/from16 v0, v32

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v60, v10, v16

    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v10, v10

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v58, v10, v16

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v60, v10

    if-gez v8, :cond_22

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v8, v58, v10

    if-ltz v8, :cond_29

    :cond_22
    const/16 v38, 0x0

    :goto_1b
    move/from16 v0, v38

    move/from16 v1, v29

    if-gt v0, v1, :cond_25

    move-object/from16 v0, v32

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mWeight:J

    long-to-double v10, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v60, v10, v16

    iget-wide v10, v7, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v10, v10

    move-wide/from16 v0, v56

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v10, v10, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v58, v10, v16

    new-instance v65, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v8

    move-object/from16 v0, v65

    invoke-direct {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/applications/ProcessStatsPreference;->init(Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v16, v0

    sget-object v18, Lcom/android/settings/applications/ProcessStatsUi;->sEntryCompare:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_2a

    const/16 v20, 0x1

    :goto_1c
    move-object v14, v7

    move-object/from16 v17, v9

    invoke-virtual/range {v14 .. v20}, Lcom/android/settings/applications/ProcStatsEntry;->evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;ZZ)V

    invoke-virtual {v7, v15}, Lcom/android/settings/applications/ProcStatsEntry;->retrieveUiData(Landroid/content/pm/PackageManager;)V

    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiLabel:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_23

    iget-object v8, v7, Lcom/android/settings/applications/ProcStatsEntry;->mUiTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v15}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object/from16 v0, v65

    invoke-virtual {v0, v8}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_23
    move-object/from16 v0, v65

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    move-object/from16 v0, v65

    move-wide/from16 v1, v60

    move-wide/from16 v3, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/ProcessStatsPreference;->setPercent(DD)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v65

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v10, 0x8

    if-ne v8, v10, :cond_24

    :cond_24
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v10, 0x3d

    if-le v8, v10, :cond_2b

    :cond_25
    return-void

    :cond_26
    move-wide/from16 v62, v24

    goto/16 :goto_18

    :cond_27
    move-wide/from16 v0, v48

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    goto/16 :goto_19

    :cond_28
    const/16 v29, -0x1

    goto/16 :goto_1a

    :cond_29
    add-int/lit8 v29, v29, -0x1

    goto/16 :goto_1a

    :cond_2a
    const/16 v20, 0x0

    goto :goto_1c

    :cond_2b
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1b

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    :cond_0
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mProcessStats:Lcom/android/internal/app/IProcessStats;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUm:Landroid/os/UserManager;

    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStatusPref:Landroid/preference/Preference;

    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v1, v2

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    if-eqz p1, :cond_5

    const-string v0, "mem_region"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    return-void

    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v3, 0x7f0a0ad1

    invoke-interface {p1, v6, v7, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v3, 0x7f0a0ae4

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->sDurationLabels:[I

    aget v5, v5, v0

    invoke-interface {v2, v6, v4, v6, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    const v4, 0x7f0a0af2

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x73

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    const/4 v3, 0x7

    const v4, 0x7f0a0af3

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x75

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    const v3, 0x7f0a0af4

    invoke-interface {p1, v3}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    const/16 v3, 0x8

    const v4, 0x7f0a0af5

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x62

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    const/16 v3, 0x9

    const v4, 0x7f0a0af6

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x66

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    const/16 v3, 0xa

    const v4, 0x7f0a0af7

    invoke-interface {v2, v6, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->updateMenus()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->sStatsXfer:Lcom/android/internal/app/ProcessStats;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    add-int/lit8 v3, v0, -0x2

    aget-wide v2, v2, v3

    iput-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    move v2, v1

    :goto_0
    return v2

    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_3
    iget-boolean v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    const/4 v6, 0x0

    const/4 v4, 0x0

    instance-of v0, p2, Lcom/android/settings/applications/LinearColorPreference;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "mem_times"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTimes:[J

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v0, "mem_state_weights"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemStateWeights:[D

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string v0, "mem_cached_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemCachedWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "mem_free_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemFreeWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "mem_zram_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemZRamWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "mem_kernel_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemKernelWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "mem_native_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemNativeWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "mem_total_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemTotalWeight:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsMemDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0ae5

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v6, 0x1

    :cond_0
    :goto_0
    return v6

    :cond_1
    instance-of v0, p2, Lcom/android/settings/applications/ProcessStatsPreference;

    if-eqz v0, :cond_0

    move-object v7, p2

    check-cast v7, Lcom/android/settings/applications/ProcessStatsPreference;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "entry"

    invoke-virtual {v7}, Lcom/android/settings/applications/ProcessStatsPreference;->getEntry()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "max_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMaxWeight:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0a0a94

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onRegionTapped(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->refreshStats()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "duration"

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "mem_region"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mMemRegion:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method updateMenus()V
    .locals 10

    const/4 v2, 0x0

    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 v3, 0x1

    :goto_0
    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v6, v3

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    move-wide v0, v4

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const/4 v6, 0x4

    if-ge v3, v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v6, v6, v3

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDurationMenus:[Landroid/view/MenuItem;

    aget-object v7, v6, v3

    if-ne v3, v2, :cond_3

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->sDurations:[J

    aget-wide v6, v6, v2

    iput-wide v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystem:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mShowSystemMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_a

    const/4 v6, 0x1

    :goto_3
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUssMenu:Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mUseUss:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_6
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_7

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeBackgroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x8

    if-ne v6, v8, :cond_b

    const/4 v6, 0x1

    :goto_4
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_8

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeForegroundMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0x9

    if-ne v6, v8, :cond_c

    const/4 v6, 0x1

    :goto_5
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_8
    iget-object v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    if-eqz v6, :cond_9

    iget-object v7, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTypeCachedMenu:Landroid/view/MenuItem;

    iget v6, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStatsType:I

    const/16 v8, 0xa

    if-ne v6, v8, :cond_d

    const/4 v6, 0x1

    :goto_6
    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_9
    return-void

    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    goto :goto_4

    :cond_c
    const/4 v6, 0x0

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_6
.end method

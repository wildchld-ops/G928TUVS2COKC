.class public Lcom/android/server/am/PreferredPackageManager;
.super Ljava/lang/Object;
.source "PreferredPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageCounter;,
        Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    }
.end annotation


# static fields
.field static final ACTIVITY_PAUSED:I = 0x4

.field static final ACTIVITY_RESUME_FINISHED:I = 0x3

.field static final ACTIVITY_RESUME_STARTED:I = 0x2

.field static DEBUG:Z = false

.field static DEBUG_LOGFILE_ENABLE:Z = false

.field static DEBUG_TRACE:Z = false

.field static final FIRST_START_PACKAGE_NUMBER:I = 0x5

.field static PPM_PROC_START_ON_LAUNCHER:Z = false

.field static final PREFERRED_COUNT_DEVIDE_TERM:I = 0x5265c00

.field static final PREFERRED_MAX_COUNT:I = 0x32

.field static final SHIP_BUILD:Z

.field static final START_TOP_PREFERRED_PACKAGES:I = 0x1

.field static final TAG:Ljava/lang/String; = "PreferredPackage"

.field private static final USAGE_STATS_PERIOD:J = 0x48190800L

.field static final WRITE_PREFERRED_DATA_MSG:I = 0x5

.field private static mInstance:Lcom/android/server/am/PreferredPackageManager;

.field private static mIsFirstLauncher:Z

.field private static mPrevActivityForLauncher:Ljava/lang/String;


# instance fields
.field private final BLACK_LIST:[Ljava/lang/String;

.field final DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

.field private final INSTRUMENTATION_LIST:[Ljava/lang/String;

.field private final LOG_FILE_NAME:Ljava/lang/String;

.field final MAX_CANDIDATE_LIMIT:I

.field final MAX_PREF_STARTED_EMPTY_LIMIT:I

.field final SCORE_FOR_INDIRECT_RELATION:I

.field final SCORE_FOR_PREV:I

.field final SCORE_FOR_PREV_PREV:I

.field private mBgCount:I

.field private mFlags:I

.field private mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLowMemState:Z

.field private mOldAvailMemSize:J

.field private mOldBgCount:I

.field mPkgNameOfPrevActivity:Ljava/lang/String;

.field mPreferredPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPrevPkgName:Ljava/lang/String;

.field mPrevPrevPkgName:Ljava/lang/String;

.field private mSamePackage:Z

.field private mScanning:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field mToStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTopPreferredPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

.field private mUserId:I

.field resumeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sput-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    sput-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    or-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/PreferredPackageManager;->SHIP_BUILD:Z

    sput-boolean v3, Lcom/android/server/am/PreferredPackageManager;->PPM_PROC_START_ON_LAUNCHER:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    sput-boolean v4, Lcom/android/server/am/PreferredPackageManager;->mIsFirstLauncher:Z

    const-string v0, ""

    sput-object v0, Lcom/android/server/am/PreferredPackageManager;->mPrevActivityForLauncher:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->BLACK_LIST:[Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android"

    aput-object v1, v0, v3

    const-string v1, "com.sec.android.app.popupuireceiver"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.servicemodeapp"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "com.sec.android.app.setupwizard"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.sec.keystringscreen"

    aput-object v2, v0, v1

    const-string v1, "com.salab.act"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "com.sec.android.app.tinym"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.packageinstaller"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.sec.android.app.SysDump"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.google.android.gsf.login"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.samsung.android.app.headlines"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.parser"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.loaddata.ged"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->INSTRUMENTATION_LIST:[Ljava/lang/String;

    const-string v0, "/data/log/ppm_log.log"

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->LOG_FILE_NAME:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/server/am/PreferredPackageManager;->mSamePackage:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/PreferredPackageManager;->mOldAvailMemSize:J

    iput v6, p0, Lcom/android/server/am/PreferredPackageManager;->mOldBgCount:I

    iput v3, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    iput-boolean v3, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    iput v6, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iput v6, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    iput-boolean v3, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->resumeLock:Ljava/lang/Object;

    iput v5, p0, Lcom/android/server/am/PreferredPackageManager;->MAX_PREF_STARTED_EMPTY_LIMIT:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/server/am/PreferredPackageManager;->DELAY_FROM_ACTVITY_RESUME_TO_PREFERRED_START:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    iput v5, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_PREV:I

    iput v4, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_PREV_PREV:I

    iput v4, p0, Lcom/android/server/am/PreferredPackageManager;->SCORE_FOR_INDIRECT_RELATION:I

    iput v7, p0, Lcom/android/server/am/PreferredPackageManager;->MAX_CANDIDATE_LIMIT:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageScanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;-><init>(Lcom/android/server/am/PreferredPackageManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PreferredPackageManager;->handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/PreferredPackageManager;->handleActivityPaused(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->handleStartTopPreferredPackages(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/PreferredPackageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/PreferredPackageManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/PreferredPackageManager;)Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/am/PreferredPackageManager;
    .locals 2

    const-class v1, Lcom/android/server/am/PreferredPackageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/PreferredPackageManager;

    invoke-direct {v0}, Lcom/android/server/am/PreferredPackageManager;-><init>()V

    sput-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;

    :cond_0
    sget-object v0, Lcom/android/server/am/PreferredPackageManager;->mInstance:Lcom/android/server/am/PreferredPackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "."

    if-eqz p0, :cond_0

    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private handleActivityPaused(Ljava/lang/String;J)V
    .locals 6

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : PAUSED          "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const-string v2, "PreferredPackage"

    const-string v3, "Preferred : cannot find resumed info.."

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred : update lastPauseTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    goto :goto_0
.end method

.method private handleActivityResumeFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AppStatus : RESUME FINISHED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "PreferredPackage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageHistory : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-nez v3, :cond_3

    :goto_0
    return-void

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->increaseUsageCounting()V

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->updateIndirectScore(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->increaseScore(Ljava/lang/String;)V

    :cond_4
    sget-boolean v4, Lcom/android/server/am/PreferredPackageManager;->PPM_PROC_START_ON_LAUNCHER:Z

    if-nez v4, :cond_5

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager;->mPkgNameOfPrevActivity:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/PreferredPackageManager;->reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V

    goto :goto_0
.end method

.method private handleStartTopPreferredPackages(Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x40

    const/4 v8, 0x0

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v1, :cond_0

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    const-string v4, "Not enough bg procs. Don\'t start preferred procs"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    iget v1, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    iput v1, p0, Lcom/android/server/am/PreferredPackageManager;->mOldBgCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/android/server/am/PreferredPackageManager;->selectTopPreferredPkg(Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_4

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "PreferredPackage"

    const-string v4, "Error selecting TopPP"

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->startPreferredPackages()V

    const-string v1, "PreferredPackage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "total bgcount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", TopPP size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/android/server/am/PreferredPackageManager;->mScanning:Z

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v1, :cond_1

    const-string v1, "PPM_startTop"

    invoke-static {v10, v11, v1, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_0
.end method

.method private increaseScore(Ljava/lang/String;)V
    .locals 5

    sget-boolean v2, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "PreferredPackage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoring : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->doIncreaseScore(Ljava/lang/String;I)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private isBlackList(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->SHIP_BUILD:Z

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->BLACK_LIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isInstrumentList(Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->SHIP_BUILD:Z

    if-nez v5, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->INSTRUMENTATION_LIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "android"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private reportOnePprRecord(Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PreferredPackage"

    const-string v1, "***********************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "PreferredPackage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "report one ppr **"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "** to USS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getLastPauseTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->lastPauseTime:J

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/usage/UsageStatsManagerInternal;->reportPprChange(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private selectTopPreferredPkg(Ljava/lang/String;)I
    .locals 12

    const-wide/16 v10, 0x40

    const/4 v6, 0x0

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v5, :cond_0

    const-string v5, "PPM_selectTop"

    invoke-static {v10, v11, v5, v6}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-nez v1, :cond_1

    const/4 v5, -0x1

    :goto_0
    return v5

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->scoreList:Ljava/util/LinkedList;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/PreferredScoreInfo;

    iget-object v3, v5, Landroid/app/usage/PreferredScoreInfo;->pkgName:Ljava/lang/String;

    :cond_2
    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "selected package using score is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v3, :cond_5

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(S), "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-eqz v2, :cond_5

    iget v5, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    const/4 v8, 0x4

    if-ne v5, v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    iget-object v9, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :try_start_2
    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mTopPreferredPackages : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v5, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    if-eqz v5, :cond_7

    const-string v5, "PPM_selectTop"

    invoke-static {v10, v11, v5, v6}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_7
    move v5, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5

    :catchall_1
    move-exception v5

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method private triggerScannerPackageByBGCountChecked(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/am/PreferredPackageManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/PreferredPackageManager$2;-><init>(Lcom/android/server/am/PreferredPackageManager;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateIndirectScore(Ljava/lang/String;)V
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "indirect scoring : updateIndirectScore() mPrevPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "indirect scoring : updateIndirectScore() mPrevPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mPrevPkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-nez v0, :cond_4

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find package record for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "PreferredPackage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A->B->A pattern. Skip indirect scoring! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPrevPrevPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 9

    const-string v4, "ACTIVITY MANAGER SERVICES (dumpsys activity preferred)"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v1, 0x0

    const-string v4, "\n--- Scores  \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%3d. %-30s "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v2, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->packageName:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->getScoreListShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v4}, Landroid/app/usage/UsageStatsManagerInternal;->prepareShutdown()V

    :cond_1
    return-void
.end method

.method protected init(Lcom/android/server/am/ActivityManagerService;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iput p3, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->updatePreferredPackagePolicy()V

    invoke-virtual {p0}, Lcom/android/server/am/PreferredPackageManager;->readPackagesFromGoogleXml()V

    return-void
.end method

.method isTopPreferredPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/PreferredPackageManager;->mTopPreferredPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyActivityStatus(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 14

    move-object/from16 v9, p3

    check-cast v9, Lcom/android/server/am/ActivityRecord;

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/am/PreferredPackageManager;->isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    if-eqz v9, :cond_4

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/server/am/PreferredPackageManager;->isInstrumentList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_1
    move-object/from16 v6, p2

    if-eqz v9, :cond_2

    iget-object v6, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_2
    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is in instrumentation list.. so skip it"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v7, p2

    if-eqz v9, :cond_7

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->PPM_PROC_START_ON_LAUNCHER:Z

    if-eqz v10, :cond_6

    const/4 v10, 0x3

    if-ne p1, v10, :cond_6

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "PreferredPackage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SA_SAMP : r.pkgName - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isLauncher - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isLauncherForPPM()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PrevPkg - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/server/am/PreferredPackageManager;->mPrevActivityForLauncher:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isLauncherForPPM()Z

    move-result v10

    if-eqz v10, :cond_9

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->mIsFirstLauncher:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/am/PreferredPackageManager;->mPrevActivityForLauncher:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "name"

    sget-object v11, Lcom/android/server/am/PreferredPackageManager;->mPrevActivityForLauncher:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    const-wide/16 v12, 0x1f4

    invoke-virtual {v10, v3, v12, v13}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/server/am/PreferredPackageManager;->mIsFirstLauncher:Z

    :cond_6
    :goto_1
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v7, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_7
    const/4 v10, 0x2

    if-ne p1, v10, :cond_a

    iget-object v11, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-nez v8, :cond_8

    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v10

    if-nez v10, :cond_8

    new-instance v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    invoke-direct {v8, v7}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v10, v8, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->processName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v10, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v10, :cond_8

    const-string v10, "PreferredPackage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New app started : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    monitor-exit v11

    goto/16 :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    :cond_9
    iget-object v10, v9, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    sput-object v10, Lcom/android/server/am/PreferredPackageManager;->mPrevActivityForLauncher:Ljava/lang/String;

    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/server/am/PreferredPackageManager;->mIsFirstLauncher:Z

    goto :goto_1

    :cond_a
    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-static {v10, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "name"

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v10, p0, Lcom/android/server/am/PreferredPackageManager;->mHandler:Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;

    invoke-virtual {v10, v3}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v10, "reason"

    move-object/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    const-wide/16 v4, 0x0

    if-eqz v9, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :cond_b
    const-string/jumbo v10, "lastPauseTime"

    invoke-virtual {v2, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method notifyMemoryAndBGProcStatus(ZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    if-eq v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "PreferredPackage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set memory state to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "low mem state"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/PreferredPackageManager;->mLowMemState:Z

    :cond_1
    iput p2, p0, Lcom/android/server/am/PreferredPackageManager;->mBgCount:I

    return-void

    :cond_2
    const-string/jumbo v0, "normal state"

    goto :goto_0
.end method

.method processDiedPreferred(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppStatus : DIED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/server/am/PreferredPackageManager;->getTrimmedStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " byAMS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v1, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, " -> cannot find in PP info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    iget v3, v1, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->state:I

    if-eq v3, v5, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    sget-boolean v3, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, " -> State updated as DIED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "PreferredPackage"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readPackagesFromGoogleXml()V
    .locals 23

    :try_start_0
    sget-boolean v20, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v20, :cond_0

    const-string v20, "PreferredPackage"

    const-string/jumbo v21, "readPackagesFromGoogleXml !!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v14, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v20, 0x48190800

    sub-long v2, v12, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "usagestats"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/app/usage/UsageStatsManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    :cond_1
    sget-boolean v20, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v20, :cond_2

    const-string v20, "PreferredPackage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "mUsageStatsManager is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v12, v13}, Landroid/app/usage/UsageStatsManager;->queryPpmInfo(JJ)Ljava/util/List;

    move-result-object v10

    new-instance v20, Lcom/android/server/am/PreferredPackageManager$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/PreferredPackageManager$3;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    move-object/from16 v0, v20

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/usage/UsageStats;

    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v11

    sget-boolean v20, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    if-eqz v20, :cond_3

    const-string v20, "PreferredPackage"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "UsageStats list is  !!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getLaunchCount()J

    move-result-wide v4

    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    invoke-virtual/range {v17 .. v17}, Landroid/app/usage/UsageStats;->getScoreListString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object v14, v0

    if-nez v14, :cond_5

    new-instance v15, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    move-object/from16 v0, v16

    invoke-direct {v15, v11, v8, v9, v0}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;-><init>(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v14, v15

    :goto_1
    :try_start_3
    monitor-exit v21

    goto :goto_0

    :catchall_0
    move-exception v20

    :goto_2
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v20
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    return-void

    :cond_5
    :try_start_5
    invoke-virtual {v14, v8, v9}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->updateLastPauseTime(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v20

    move-object v14, v15

    goto :goto_2
.end method

.method registerReceiver()V
    .locals 3

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    new-instance v2, Lcom/android/server/am/PreferredPackageManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/PreferredPackageManager$1;-><init>(Lcom/android/server/am/PreferredPackageManager;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method startPreferredPackages()V
    .locals 10

    iget-object v7, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "start package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget v8, p0, Lcom/android/server/am/PreferredPackageManager;->mFlags:I

    iget v9, p0, Lcom/android/server/am/PreferredPackageManager;->mUserId:I

    invoke-interface {v6, v3, v8, v9}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v8, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService;->realStartPreferredPackages(Landroid/content/pm/ApplicationInfo;)V

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v8, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;

    if-eqz v4, :cond_1

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/server/am/PreferredPackageManager$PreferredPackageRecord;->setState(I)V

    :cond_1
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v6

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    move-exception v5

    :try_start_8
    const-string v6, "PreferredPackage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " some problems. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v6

    :cond_2
    :try_start_9
    iget-object v6, p0, Lcom/android/server/am/PreferredPackageManager;->mToStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    return-void
.end method

.method protected updatePreferredPackagePolicy()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "sys.ppm.debug"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG:Z

    const-string/jumbo v1, "sys.ppm.debug_logfile_enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_LOGFILE_ENABLE:Z

    const-string/jumbo v1, "sys.ppm.debug_trace"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->DEBUG_TRACE:Z

    const-string/jumbo v1, "sys.ppm.reset"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "sys.config.samp_ppm_home"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/PreferredPackageManager;->PPM_PROC_START_ON_LAUNCHER:Z

    if-eqz v0, :cond_0

    const-string v1, "PreferredPackage"

    const-string v2, "Reset every PPM records!"

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/PreferredPackageManager;->mPreferredPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v2

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

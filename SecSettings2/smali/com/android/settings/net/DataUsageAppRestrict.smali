.class public Lcom/android/settings/net/DataUsageAppRestrict;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;,
        Lcom/android/settings/net/DataUsageAppRestrict$AppItem;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

.field private mBackGroundDataMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStatsHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundPackageNum:I

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mDataEnd:J

.field private mDataStart:J

.field private mDataTemplate:Landroid/net/NetworkTemplate;

.field private mExceptionalPackages:[[Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubscriberId:Ljava/lang/String;

.field private mTextDataWifi:Landroid/widget/TextView;

.field private mTextDescription:Landroid/widget/TextView;

.field private mTextDescription2:Landroid/widget/TextView;

.field private final mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundPackageNum:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    new-array v0, v4, [[Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.samsung.android.email.ui"

    aput-object v2, v1, v3

    const-string v2, "com.samsung.android.email.sync"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$1;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$1;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$2;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$2;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$3;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$3;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$4;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$4;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/net/DataUsageAppRestrict$5;

    invoke-direct {v0, p0}, Lcom/android/settings/net/DataUsageAppRestrict$5;-><init>(Lcom/android/settings/net/DataUsageAppRestrict;)V

    iput-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method private UpdateExceptionalCase()V
    .locals 9

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    array-length v6, v6

    if-ge v4, v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mExceptionalPackages:[[Ljava/lang/String;

    aget-object v6, v6, v4

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v6, "template"

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "uid"

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "uid_exist"

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "fields"

    const/16 v7, 0xa

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    add-int/lit8 v7, v4, 0x3

    iget-object v8, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacksExceptional:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v7, v2, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/NetworkPolicyManager;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/net/DataUsageAppRestrict;->setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/net/DataUsageAppRestrict;)Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/net/DataUsageAppRestrict;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->checkLoadedAppNum()V

    return-void
.end method

.method static synthetic access$700(Landroid/net/NetworkPolicyManager;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/net/DataUsageAppRestrict;->getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z

    move-result v0

    return v0
.end method

.method private checkLoadedAppNum()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundPackageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundPackageNum:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundPackageNum:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackGroundDataMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->bindBackgroundDataStats(Ljava/util/LinkedHashMap;)V

    invoke-direct {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateExceptionalCase()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getAppRestrictBackground(Landroid/net/NetworkPolicyManager;I)Z
    .locals 3

    const-string v1, "DataUsageAppRestrict"

    const-string v2, "getAppRestrictBackground()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setAppRestrictBackground(Landroid/net/NetworkPolicyManager;IZ)V
    .locals 2

    const-string v0, "DataUsageAppRestrict"

    const-string v1, "setAppRestrictBackground()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public UpdateNetworkHistoricalBackgroundData(Landroid/net/NetworkStats;)V
    .locals 10

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v7}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->DataResetPreviousData()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v4

    :goto_0
    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    iget v5, v2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v7, v5}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->checkNeededUid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v7, "template"

    iget-object v8, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v7, "uid"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "fields"

    const/16 v8, 0xa

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    add-int/lit8 v8, v3, 0x3

    iget-object v9, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v1, v9}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mBackgroundPackageNum:I

    return-void
.end method

.method public UpdateNetworkHistoricalData()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataTemplate:Landroid/net/NetworkTemplate;

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-boolean v1, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiTemplate:Landroid/net/NetworkTemplate;

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mWifiCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsService:Landroid/net/INetworkStatsService;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DataUsageAppRestrict"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "extra_data_start"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    const-string v3, "extra_data_end"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    const-string v3, "extra_subscriberid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mSubscriberId:Ljava/lang/String;

    const-string v3, "extra_show_wifi"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string v3, "DataUsageAppRestrict"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v1, 0x0

    const v2, 0x7f040017

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    const v2, 0x7f10005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    const v2, 0x7f10005f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDataWifi:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->getAppDataRestrictionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    const v3, 0x7f0a160a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    const v3, 0x7f0a160b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-boolean v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    iget-object v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v0, v3, v4}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;-><init>(Landroid/content/pm/PackageManager;ZLandroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    iget-wide v4, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataStart:J

    iget-wide v6, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mDataEnd:J

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;->setCycle(JJ)V

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mAdapter:Lcom/android/settings/net/DataUsageAppRestrict$DataUsageRestrictAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    const-string v2, "DataUsageAppRestrict"

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription2:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mShowWifi:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDescription:Landroid/widget/TextView;

    const v3, 0x7f0a1605

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mTextDataWifi:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/net/DataUsageAppRestrict;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "DataUsageAppRestrict"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/net/DataUsageAppRestrict;->UpdateNetworkHistoricalData()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

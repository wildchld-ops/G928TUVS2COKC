.class public Lcom/android/server/pm/PackagePrefetcher;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackagePrefetcher$1;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;,
        Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    }
.end annotation


# static fields
.field static final DEBUG_DEV:Z

.field static final LOG_PREF_PREFETCH:Ljava/lang/String; = "PREFETCH"

.field private static final NUM_THREADS:I = 0x6

.field static final TAG:Ljava/lang/String; = "PackagePrefetcher"

.field private static sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;


# instance fields
.field private final mAppDirs:[Ljava/io/File;

.field mDefParseFlags:I

.field private mHasSettingsFile:Z

.field private mParseFlags:[I

.field private final mPrefetchedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mScanFinished:Z

.field private mSeparateProcesses:[Ljava/lang/String;

.field private prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-boolean v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    invoke-static {}, Lcom/android/server/pm/PackagePrefetcher;->hasSettingsFile()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    new-array v1, v7, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v6

    const/4 v2, 0x1

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "priv-app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "app"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "container"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    new-array v1, v7, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:[I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    const-string v1, "debug.separate_processes"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    iput v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    iput-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v1, :cond_0

    const-string v1, "PackagePrefetcher"

    const-string v2, "PREFETCH"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v1, :cond_0

    const-string v1, "PackagePrefetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running with debug.separate_processes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput v6, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    iput-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x45
        0xc5
        0x4
        0x45
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/PackagePrefetcher;
    .locals 2

    const-class v1, Lcom/android/server/pm/PackagePrefetcher;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {v0}, Lcom/android/server/pm/PackagePrefetcher;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;

    :cond_0
    sget-object v0, Lcom/android/server/pm/PackagePrefetcher;->sPrefetcher:Lcom/android/server/pm/PackagePrefetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static hasSettingsFile()Z
    .locals 6

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "system"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "packages.xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.bak"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v5, "packages.xml.mbak"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mHasSettingsFile:Z

    if-nez v2, :cond_1

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V

    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_0

    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "faild collect cert : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_2

    const-string v2, "PackagePrefetcher"

    const-string v3, "PREFETCH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "need to collect cert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    invoke-direct {v1, p0, p2, v6}, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;-><init>(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser$Package;Z)V

    goto :goto_0
.end method


# virtual methods
.method checkDone(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getPrefetchedPackage(Ljava/lang/String;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    .locals 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-object v1, v0

    :cond_0
    :goto_0
    monitor-exit v3

    :cond_1
    return-object v1

    :cond_2
    sget-boolean v2, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v2, :cond_0

    const-string v2, "PackagePrefetcher"

    const-string v4, "PREFETCH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not yet prefetched: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prefetchPackages()V
    .locals 14

    iget-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    array-length v3, v8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v2, v8, v4

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    iget-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->mAppDirs:[Ljava/io/File;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->isSystemDir(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->isSkippingApk(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v9, Ljava/util/AbstractMap$SimpleEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    iget-object v12, p0, Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:[I

    aget v12, v12, v4

    iget v13, p0, Lcom/android/server/pm/PackagePrefetcher;->mDefParseFlags:I

    or-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v9, v10, v11}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_3
    const/4 v8, 0x6

    if-ge v4, v8, :cond_3

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;-><init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public prefetchPermissions()V
    .locals 0

    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    return-void
.end method

.method setScanFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z

    return-void
.end method

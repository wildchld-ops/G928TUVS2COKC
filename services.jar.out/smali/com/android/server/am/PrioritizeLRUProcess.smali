.class public Lcom/android/server/am/PrioritizeLRUProcess;
.super Ljava/lang/Object;
.source "PrioritizeLRUProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;,
        Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INCLUDE_LAUNCH_COUNT_LRU:Z = true

.field public static final RESET_THRESHOLD:I = 0x32

.field public static final SAVE_TO_DISK:Z = true

.field private static TAG:Ljava/lang/String;

.field private static doNormalize:Z

.field private static packagePriorityHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dataDir:Ljava/io/File;

.field mDir:Ljava/io/File;

.field mFile:Ljava/io/File;

.field systemDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PrioritizeLRUProcess"

    sput-object v0, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/PrioritizeLRUProcess;->doNormalize:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->dataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/PrioritizeLRUProcess;->dataDir:Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->systemDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/PrioritizeLRUProcess;->systemDir:Ljava/io/File;

    const-string/jumbo v2, "lrustats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mDir:Ljava/io/File;

    const-string/jumbo v2, "lrustatsfile"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess;->read()V

    iget-object v0, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess;->addBasePackages()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/PrioritizeLRUProcess;->doNormalize:Z

    return p0
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v2, v1, [B

    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v4, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    add-int v5, v4, v1

    new-array v3, v5, [B

    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
.method addBasePackages()V
    .locals 9

    const/4 v8, 0x1

    const/16 v6, 0xf

    new-array v1, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "android"

    aput-object v7, v1, v6

    const-string v6, "com.android.systemui"

    aput-object v6, v1, v8

    const/4 v6, 0x2

    const-string v7, "com.sec.imsservice"

    aput-object v7, v1, v6

    const/4 v6, 0x3

    const-string v7, "com.android.server.telecom"

    aput-object v7, v1, v6

    const/4 v6, 0x4

    const-string v7, "com.google.android.gms"

    aput-object v7, v1, v6

    const/4 v6, 0x5

    const-string v7, "com.sec.android.emergencymode.service"

    aput-object v7, v1, v6

    const/4 v6, 0x6

    const-string v7, "com.sec.pcw.device"

    aput-object v7, v1, v6

    const/4 v6, 0x7

    const-string v7, "com.sec.android.diagmonagent"

    aput-object v7, v1, v6

    const/16 v6, 0x8

    const-string v7, "com.sec.android.fotaclient"

    aput-object v7, v1, v6

    const/16 v6, 0x9

    const-string v7, "com.samsung.klmsagent"

    aput-object v7, v1, v6

    const/16 v6, 0xa

    const-string v7, "com.sec.android.soagent"

    aput-object v7, v1, v6

    const/16 v6, 0xb

    const-string v7, "com.policydm"

    aput-object v7, v1, v6

    const/16 v6, 0xc

    const-string v7, "com.osp.app.signin"

    aput-object v7, v1, v6

    const/16 v6, 0xd

    const-string v7, "com.samsung.android.securitylogagent"

    aput-object v7, v1, v6

    const/16 v6, 0xe

    const-string v7, "com.sec.android.app.launcher"

    aput-object v7, v1, v6

    move-object v0, v1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    sget-object v6, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v4, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    sget-object v6, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBasePackage(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v0

    :cond_0
    int-to-long v2, v0

    return-wide v2
.end method

.method public getILruWeight(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getILruWeight()I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLaunchCount(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v0

    :cond_0
    return v0
.end method

.method public normaliseAppLaunchCount()V
    .locals 10

    sget-object v5, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    :goto_1
    sget-object v5, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v3

    mul-int/lit8 v5, v3, 0x5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    invoke-virtual {v1, v2}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read()V
    .locals 11

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v8}, Lcom/android/server/am/PrioritizeLRUProcess;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    const/4 v9, 0x0

    array-length v10, v6

    invoke-virtual {v3, v6, v9, v10}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v4, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setLaunchCount(I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setILruWeight(I)V

    sget-object v9, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v7, v8

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v9

    :goto_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v9

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v7, v8

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v7, v8

    goto :goto_2

    :cond_3
    move-object v7, v8

    goto :goto_1
.end method

.method public removeDeletedAppPackage(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    :cond_0
    return-void
.end method

.method public setBasePackage(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v0, p2}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->setBasePackage(I)V

    :cond_0
    return-void
.end method

.method shutdown()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess;->writeToParcel()V

    return-void
.end method

.method public sortMap()V
    .locals 3

    new-instance v1, Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;

    sget-object v2, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;-><init>(Ljava/util/Map;)V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sget-object v2, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public updateAppLaunchCount(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->updateLaunchCount()V

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-boolean v1, Lcom/android/server/am/PrioritizeLRUProcess;->doNormalize:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/PrioritizeLRUProcess;->normaliseAppLaunchCount()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-direct {v0, p0}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;-><init>(Lcom/android/server/am/PrioritizeLRUProcess;)V

    sget-object v1, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeToParcel()V
    .locals 10

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lcom/android/server/am/PrioritizeLRUProcess;->mFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->packagePriorityHashMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getLaunchCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getBasePackage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getILruWeight()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LW: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->getILruWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v5, v6

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_3
    sget-object v7, Lcom/android/server/am/PrioritizeLRUProcess;->TAG:Ljava/lang/String;

    const-string v8, "PLP done"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    move-object v5, v6

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    throw v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v5, v6

    goto :goto_2
.end method

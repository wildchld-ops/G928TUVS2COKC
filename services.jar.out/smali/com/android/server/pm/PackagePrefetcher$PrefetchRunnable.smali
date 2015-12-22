.class Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackagePrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrefetchRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackagePrefetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Lcom/android/server/pm/PackagePrefetcher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;-><init>(Lcom/android/server/pm/PackagePrefetcher;)V

    return-void
.end method


# virtual methods
.method public doPrefetch(Ljava/lang/String;I)V
    .locals 25

    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v19, Landroid/content/pm/PackageParser;

    invoke-direct/range {v19 .. v19}, Landroid/content/pm/PackageParser;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mSeparateProcesses:[Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$200(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, p2

    # invokes: Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackagePrefetcher;->access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v21, "PackagePrefetcher"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "put: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v15, :cond_0

    const-string v21, "PackagePrefetcher"

    const-string/jumbo v23, "pPkg is null"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_7

    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/pm/PackageManagerService;->getAppDexInstructionSets(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/pm/PackageManagerService;->getDexCodeInstructionSets([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PackageParser$Package;->getAllCodePathsExcludingResourceOnly()Ljava/util/List;

    move-result-object v17

    move-object v4, v7

    array-length v13, v4

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v13, :cond_7

    aget-object v6, v4, v11

    const/4 v14, 0x1

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v6, v2}, Ldalvik/system/DexFile;->isDexOptNeededInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)B

    move-result v5

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/pm/PackageSetting;

    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v5, v0, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->interpret_only:Z

    if-eqz v20, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->dexMode:I

    :cond_2
    if-nez v5, :cond_3

    if-eqz v20, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/server/pm/PackageSetting;->dexTimeStamp:J

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->dexMode:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v5, v0, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_8

    :cond_4
    const/4 v14, 0x0

    :cond_5
    :goto_2
    if-eqz v14, :cond_6

    :try_start_4
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mDexOptPerformed:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    :try_start_5
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v21
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v8

    sget-boolean v21, Lcom/android/server/pm/PackagePrefetcher;->DEBUG_DEV:Z

    if-eqz v21, :cond_7

    const-string v21, "PackagePrefetcher"

    const-string v22, "PREFETCH"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception while prefetch: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "PackagePrefetcher"

    const-string v22, "PREFETCH"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "give up prefetch : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :cond_8
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v5, v0, :cond_1

    const/4 v14, 0x0

    goto :goto_2

    :catch_1
    move-exception v8

    :try_start_7
    const-string v21, "PackagePrefetcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Apk not found for dexopt: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto/16 :goto_1

    :catch_2
    move-exception v8

    const-string v21, "PackagePrefetcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IOException reading apk: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x0

    goto/16 :goto_1

    :catch_3
    move-exception v8

    const-string v21, "PackagePrefetcher"

    const-string v22, "Exception when doing dexopt : "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method public run()V
    .locals 3

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->prefetchQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v1}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/PackagePrefetcher$PrefetchRunnable;->doPrefetch(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v1, "PackagePrefetcher"

    const-string v2, "Entry is null prefetch wiil finish"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

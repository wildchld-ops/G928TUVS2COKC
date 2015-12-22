.class public Lcom/android/server/am/OnceAllKillMonitorService;
.super Ljava/lang/Object;
.source "OnceAllKillMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;
    }
.end annotation


# static fields
.field public static final BROADCAST_OAK_REGISTALARM:Ljava/lang/String; = "com.android.server.am.BROADCAST_OAK_REGISTALARM"

.field public static final BROADCAST_OAK_SHRINKSERVICE:Ljava/lang/String; = "com.android.server.am.BROADCAST_OAK_SHRINKSERVICE"

.field static final TAG:Ljava/lang/String; = "OnceAllKillMornitor"


# instance fields
.field private final MAX_DUMP_HISTORY:I

.field private final MAX_SLUGGISH_HISTORY:I

.field private final MIN_OAK_SLUGGISH_INFO:I

.field private NeedOAKBlueList:Z

.field private NeedOAKShrinkServices:Z

.field private final OAKSHRINK_NUMBER:I

.field private final OOMHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final SwapFreeHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field lLastOOMCount:J

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mContext:Landroid/content/Context;

.field private mOAKCount:I

.field private final mOAKHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mOAKLauncherCount:I

.field private mOAKSCount:I

.field private mOAKSLauncherCount:I

.field mProcessStats:Lcom/android/server/am/ProcessStatsService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V
    .locals 4

    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKCount:I

    iput v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKLauncherCount:I

    iput v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSCount:I

    iput v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSLauncherCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    iput-boolean v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKBlueList:Z

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->MAX_SLUGGISH_HISTORY:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OAKSHRINK_NUMBER:I

    iput v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->MAX_DUMP_HISTORY:I

    iput v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->MIN_OAK_SLUGGISH_INFO:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->lLastOOMCount:J

    iput-object v2, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object v2, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iput-object v2, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    return-void
.end method

.method private GetOOMCount()V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v6, "/sys/module/lowmemorykiller/parameters/oomcount"

    invoke-direct {v3, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x28

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_0
    if-eqz v3, :cond_3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v6

    const/4 v2, 0x0

    throw v6

    :catch_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v2, 0x0

    goto :goto_0

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x0

    goto :goto_0

    :catchall_1
    move-exception v6

    const/4 v2, 0x0

    throw v6

    :catchall_2
    move-exception v6

    :goto_2
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v2, 0x0

    :cond_2
    :goto_3
    throw v6

    :catch_3
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v2, 0x0

    goto :goto_3

    :catchall_3
    move-exception v6

    const/4 v2, 0x0

    throw v6

    :catchall_4
    move-exception v6

    move-object v2, v3

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method private GetSluggishInfo()V
    .locals 8

    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double v0, v4, v6

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x28

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final OAKKillerLocked(ZLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v16, v20, -0x1

    :goto_0
    if-ltz v16, :cond_4

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/ProcessRecord;->getHistoricallyAvgUSS(Lcom/android/server/am/ProcessStatsService;I)J

    move-result-wide v8

    const/4 v7, 0x0

    const-string v19, ""

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService;->isBlueListForOAK(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/4 v15, 0x0

    new-instance v15, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v15}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v0, v15}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v15}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    invoke-virtual {v15}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v5

    add-int v20, v4, v5

    const v21, 0xa2800

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v8, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "K, hotnessAdj="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", oom_adj="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ", PSS: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "KB, SWAP: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "KB, Killed"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v10, 0x1

    :goto_2
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " add to list by "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-wide/16 v22, 0x400

    div-long v22, v8, v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "K oom_adj="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", pid="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ", PSS: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "KB, SWAP: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "KB, Skipped"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "by "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-wide/16 v22, 0x400

    div-long v22, v8, v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "K, hotnessAdj="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->hotnessAdj:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", oom_adj="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", pid="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/server/am/ActivityManagerService;->killProcessForShrinkService(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v19, " Killed"

    goto/16 :goto_2

    :cond_3
    const-string v19, " Skipped"

    goto/16 :goto_2

    :cond_4
    if-eqz p1, :cond_7

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKLauncherCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKLauncherCount:I

    :goto_3
    new-instance v12, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;Lcom/android/server/am/OnceAllKillMonitorService$1;)V

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy/MM/dd HH:mm:ss"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v14, v13, v11}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->setHistory(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-void

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKCount:I

    goto :goto_3

    :cond_7
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSLauncherCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSLauncherCount:I

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSCount:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSCount:I

    goto :goto_3
.end method

.method private final RegistOAKAlarm()V
    .locals 14

    const/4 v5, 0x0

    const-wide/32 v10, 0xea60

    const-wide/32 v8, 0x493e0

    iget-object v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.am.BROADCAST_OAK_SHRINKSERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/32 v4, 0xea60

    add-long v2, v12, v4

    const/4 v1, 0x2

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setWindow(IJJLandroid/app/PendingIntent;)V

    const-string v1, "OnceAllKillMornitor"

    const-string v4, "SA_SAMP OAKShrinkServices regist alarm"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final SendOAKAlarmIntent()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.server.am.BROADCAST_OAK_REGISTALARM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "OnceAllKillMornitor"

    const-string v2, "SA_SAMP OAKShrinkServices alarm Intent"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnceAllKillMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnceAllKillMonitorService;->RegistOAKAlarm()V

    return-void
.end method

.method private isBlueListForOAK(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v7, "com.sec.android.app.launcher"

    aput-object v7, v0, v6

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private isWhiteListForOAK(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "com.samsung.android.fingerprint.service"

    aput-object v7, v0, v6

    const-string v7, "com.samsung.Gate.GMA"

    aput-object v7, v0, v5

    move-object v1, v0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_1
    return v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method


# virtual methods
.method public final OAKCheckHeavyStatus()V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v20, "sys.config.samp_oak_force"

    const-string v21, ""

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :cond_0
    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_OAK_OOM_EANBLE:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1

    :cond_3
    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v13, v20, -0x1

    :goto_2
    move/from16 v0, v16

    if-lt v13, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_4

    add-int/lit8 v14, v14, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Double;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_5

    add-int/lit8 v12, v12, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v16, v20, -0x8

    goto :goto_1

    :cond_7
    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v14, v0, :cond_9

    const/4 v6, 0x1

    :goto_3
    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v12, v0, :cond_a

    const/16 v20, 0x1

    :goto_4
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKBlueList:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_OAK_OOM_EANBLE:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    const/4 v15, 0x0

    :goto_5
    move v13, v15

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->lLastOOMCount:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v20, v22, v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnceAllKillMonitorService;->lLastOOMCount:J

    add-int/lit8 v11, v11, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v15, v20, -0x8

    goto :goto_5

    :cond_c
    const/16 v20, 0x4

    move/from16 v0, v20

    if-le v11, v0, :cond_11

    const/4 v5, 0x1

    :cond_d
    :goto_7
    if-eqz v4, :cond_e

    const/4 v6, 0x1

    const/4 v5, 0x1

    :cond_e
    if-nez v6, :cond_f

    if-eqz v5, :cond_1

    :cond_f
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    const-string v17, "SA_SAMP OAKShrinkServices send Intent"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v8, v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;Lcom/android/server/am/OnceAllKillMonitorService$1;)V

    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string/jumbo v21, "yyyy/MM/dd HH:mm:ss"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-direct/range {v21 .. v23}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10, v9, v7}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->setHistory(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnceAllKillMonitorService;->SendOAKAlarmIntent()V

    goto/16 :goto_0

    :cond_11
    const/4 v5, 0x0

    goto :goto_7
.end method

.method public final OAKshrinkServicesLocked()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    if-nez v4, :cond_1

    const-string v5, "OnceAllKillMornitor"

    const-string v6, "SA_SAMP PowerManager is Null!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OnceAllKillMornitor"

    const-string v6, "SA_SAMP LCD on, Checking LCD status for OAKshrinkServices will be run next time."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OnceAllKillMonitorService;->SendOAKAlarmIntent()V

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    iget-object v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getLRUProcesses()Ljava/util/ArrayList;

    move-result-object v2

    const-string v5, "OnceAllKillMornitor"

    const-string v6, "SA_SAMP OAKshrinkServicesLocked() - begin"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    :goto_1
    if-ltz v3, :cond_7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnceAllKillMonitorService;->isWhiteListForOAK(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget v5, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_6

    iget v5, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v6, 0x9

    if-lt v5, v6, :cond_6

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnceAllKillMonitorService;->isWhiteListForOAK(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-boolean v5, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKBlueList:Z

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/am/OnceAllKillMonitorService;->isBlueListForOAK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iput-boolean v7, p0, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKBlueList:Z

    const-string v5, "OAKShrinkServices"

    invoke-direct {p0, v7, v5, v0}, Lcom/android/server/am/OnceAllKillMonitorService;->OAKKillerLocked(ZLjava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public RegistReceiver()V
    .locals 5

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.server.am.BROADCAST_OAK_SHRINKSERVICE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/am/OnceAllKillMonitorService$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/OnceAllKillMonitorService$1;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.server.am.BROADCAST_OAK_REGISTALARM"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/am/OnceAllKillMonitorService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/OnceAllKillMonitorService$2;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;)V

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/am/OnceAllKillMonitorService$3;

    invoke-direct {v4, p0}, Lcom/android/server/am/OnceAllKillMonitorService$3;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final RunOnceAllKill()V
    .locals 30

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v25, v0

    monitor-enter v25

    :try_start_0
    const-string/jumbo v24, "sys.config.samp_oak_force"

    const-string v26, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/4 v6, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x14

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    const-string v24, "OnceAllKillMornitor"

    const-string v26, "SA_SAMP Sluggish Infomations are not enough to run Once All Kill"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v25

    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_OAK_OOM_EANBLE:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x14

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    const-string v24, "OnceAllKillMornitor"

    const-string v26, "SA_SAMP Sluggish Infomations are not enough to run Once All Kill"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v25

    goto :goto_0

    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    :cond_2
    const/16 v19, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v18, v24, -0x1

    :goto_1
    if-ltz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    const-wide/high16 v28, 0x4034000000000000L    # 20.0

    cmpg-double v24, v26, v28

    if-gez v24, :cond_3

    add-int/lit8 v19, v19, 0x1

    :cond_3
    const-string v24, "OnceAllKillMornitor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SA_SAMP SwapFreeHistory "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    const/4 v8, 0x1

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x8

    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    const/16 v20, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v18, v24, -0x1

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Double;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v26, v28

    if-gez v24, :cond_5

    add-int/lit8 v17, v17, 0x1

    :cond_5
    add-int/lit8 v18, v18, -0x1

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v20, v24, -0x8

    goto :goto_3

    :cond_8
    const/16 v24, 0x4

    move/from16 v0, v17

    move/from16 v1, v24

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->SwapFreeHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_OAK_OOM_EANBLE:Z

    move/from16 v24, v0

    if-eqz v24, :cond_c

    const/4 v15, 0x0

    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->lLastOOMCount:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    cmp-long v24, v26, v28

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnceAllKillMonitorService;->lLastOOMCount:J

    add-int/lit8 v15, v15, 0x1

    :cond_9
    const-string v24, "OnceAllKillMornitor"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SA_SAMP OOMHistory "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    if-le v15, v0, :cond_e

    const/4 v7, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->OOMHistory:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    :cond_c
    if-eqz v6, :cond_d

    const/4 v8, 0x1

    const/4 v7, 0x1

    :cond_d
    if-nez v8, :cond_f

    if-nez v7, :cond_f

    monitor-exit v25

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    goto :goto_7

    :cond_f
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKShrinkServices:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/OnceAllKillMonitorService;->NeedOAKBlueList:Z

    const-string v24, "OnceAllKillMornitor"

    const-string v26, "SA_SAMP RunOnceAllKill() - begin"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityManagerService;->getLRUProcesses()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v16, v24, -0x1

    :goto_8
    if-ltz v16, :cond_13

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-nez v5, :cond_11

    :cond_10
    :goto_9
    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    :cond_11
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->curAdj:I

    move/from16 v24, v0

    const/16 v26, 0x5

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_10

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService;->isWhiteListForOAK(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_10

    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService;->isBlueListForOAK(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    if-eqz v9, :cond_10

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_12
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    const-string v21, "SA_SAMP run OAK"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v12, v0, v1}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;-><init>(Lcom/android/server/am/OnceAllKillMonitorService;Lcom/android/server/am/OnceAllKillMonitorService$1;)V

    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string/jumbo v26, "yyyy/MM/dd HH:mm:ss"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v26, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v14, v13, v10}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->setHistory(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    const/16 v26, 0x14

    move/from16 v0, v24

    move/from16 v1, v26

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_14
    const/16 v24, 0x1

    const-string v26, "OAK"

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/am/OnceAllKillMonitorService;->OAKKillerLocked(ZLjava/lang/String;Ljava/util/ArrayList;)V

    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public SluggishInfo()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnceAllKillMonitorService;->GetSluggishInfo()V

    iget-object v0, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->SAMP_OAK_OOM_EANBLE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OnceAllKillMonitorService;->GetOOMCount()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/OnceAllKillMonitorService;->OAKCheckHeavyStatus()V

    return-void
.end method

.method dumpsampoakLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 11

    const-string v7, "ACTIVITY MANAGER SAMP_OAK (dumpsys activity samp_oak)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, " OAK / OAKLauncher / OAKS / OAKSLauncher Count ( %d / %d / %d / %d ) --"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKLauncherCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget v10, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKSLauncherCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/OnceAllKillMonitorService;->mOAKHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;

    invoke-virtual {v0}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->getDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->getSwap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->getOOM()Ljava/util/ArrayList;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->getKilledProcess()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;->access$200(Lcom/android/server/am/OnceAllKillMonitorService$OAKHistory;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v7, "\tRunDate: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "\tSluggishInfo"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v7, "\tSwapFree ratio"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    :goto_1
    if-ltz v4, :cond_0

    const-string v7, "\t%3d : %3.2f"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    const-string v7, "\tOOM history"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    const-string v7, "\t%3d : %3d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "\tKilled Processes"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    const-string v7, "\t%3d : %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

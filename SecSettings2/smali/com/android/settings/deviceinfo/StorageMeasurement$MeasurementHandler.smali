.class Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;
.super Landroid/os/Handler;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MeasurementHandler"
.end annotation


# instance fields
.field private volatile mBound:Z

.field private mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefContainerConn:Landroid/content/ServiceConnection;

.field private mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

.field private mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler$1;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    return p1
.end method

.method private measureApproximateStorage()V
    .locals 20

    const-wide/16 v4, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v11, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v14

    :goto_0
    invoke-direct {v11, v14}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v4, v14

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v12, v14

    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    int-to-long v2, v14

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long v16, v12, v4

    move-wide/from16 v0, v16

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v14, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    mul-long v16, v2, v4

    move-wide/from16 v0, v16

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v14, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    const-string v14, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0f0016

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/4 v10, 0x2

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "storage_mmc_size"

    const-wide v16, 0x3ab400000L

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    :goto_2
    const-wide/32 v14, 0x40000000

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    int-to-double v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v8, v14, v16

    cmp-long v14, v6, v8

    if-gtz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v15}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v16

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J
    invoke-static {v14, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v14, v8, v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v14}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :catch_0
    move-exception v14

    goto/16 :goto_1
.end method

.method private measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 14

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const/4 v9, 0x0

    aget-wide v10, v7, v9

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8, v10, v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const/4 v9, 0x1

    aget-wide v10, v7, v9

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v8, v10, v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "storage_mmc_size"

    const-wide v10, 0x3ab400000L

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    :goto_2
    const-wide/32 v8, 0x40000000

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    int-to-double v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-long v10, v10

    mul-long v4, v8, v10

    cmp-long v8, v2, v4

    if-gtz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v9, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v9}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v10

    sub-long v10, v4, v10

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J
    invoke-static {v8, v10, v11}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v8, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    :cond_1
    iget-object v8, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V
    invoke-static {v8}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)V

    return-void

    :cond_2
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v8, "StorageMeasurement"

    const-string v9, "Problem in container service"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v12, v5

    :goto_0
    if-nez v12, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    # setter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1102(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    new-instance v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    invoke-direct {v6}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;-><init>()V

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->totalSize:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->availSize:J

    const-string v5, "user"

    invoke-virtual {v12, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/UserManager;

    invoke-virtual/range {v23 .. v23}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v24

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    new-instance v13, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v13, v7}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    const/16 v16, 0x1

    :goto_2
    if-eqz v16, :cond_5

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    sget-object v25, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-wide/from16 v0, v20

    # += operator for: Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1114(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    sget-object v25, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-wide/from16 v0, v20

    # += operator for: Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1114(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    sget-object v25, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaSize(Landroid/net/Uri;)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-wide/from16 v0, v20

    # += operator for: Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1114(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J

    :cond_5
    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v13}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v17

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v5, v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    iget-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v28

    sub-long v26, v26, v28

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$900(Lcom/android/settings/deviceinfo/StorageMeasurement;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    iput-wide v0, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    new-instance v22, Landroid/os/Environment$UserEnvironment;

    move-object/from16 v0, v19

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual/range {v22 .. v22}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    move-object/from16 v0, p1

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    invoke-static {v0, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1400(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v20

    iget-object v5, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move/from16 v0, v25

    move-wide/from16 v1, v20

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v5, v0, v1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v17

    goto :goto_3

    :cond_9
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    const/16 v5, 0x2200

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v11

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v25

    mul-int v9, v5, v25

    new-instance v4, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    # getter for: Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z

    move-result v5

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;-><init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/pm/UserInfo;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    goto :goto_5

    :cond_c
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage()V

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    const/4 v3, 0x2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefaultContainer:Lcom/android/internal/app/IMediaContainerService;

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v5, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/app/IMediaContainerService;

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureApproximateStorage(Lcom/android/internal/app/IMediaContainerService;)V

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->measureExactStorage(Lcom/android/internal/app/IMediaContainerService;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    move-object v0, v3

    :cond_4
    if-nez v0, :cond_5

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_5
    const/4 v3, 0x0

    :try_start_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mBound:Z

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mDefContainerConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_6
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->this$0:Lcom/android/settings/deviceinfo/StorageMeasurement;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    invoke-static {v3, v4}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_0

    :pswitch_4
    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->mCached:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

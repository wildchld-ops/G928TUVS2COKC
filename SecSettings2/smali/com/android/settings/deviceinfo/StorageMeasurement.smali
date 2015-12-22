.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field public static final URI_AUDIO_FILE:Landroid/net/Uri;

.field public static final URI_IMAGE_FILE:Landroid/net/Uri;

.field public static final URI_VIDEO_FILE:Landroid/net/Uri;

.field private static sInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final sMeasureMediaTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _context:Landroid/content/Context;

.field private mAvailSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemMemSize:J

.field private mTotalSize:J

.field private final mVolume:Landroid/os/storage/StorageVolume;

.field private totalMediaSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const-string v0, "StorageMeasurement"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sMeasureMediaTypes:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/util/SparseLongArray;IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    return-wide p1
.end method

.method static synthetic access$1114(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 3

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 2

    invoke-static {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    return-wide p1
.end method

.method private static addValue(Landroid/util/SparseLongArray;IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method private static getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string v1, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read memory from default container service for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 3

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private measureMisc(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J
    .locals 34

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/storage/emulated/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/SnoteData"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    if-nez v23, :cond_1

    const-wide/16 v30, 0x0

    :cond_0
    :goto_0
    return-wide v30

    :cond_1
    const-wide/16 v6, 0x0

    const-wide/16 v30, 0x0

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_AUDIO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaData(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_IMAGE_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaData(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->URI_VIDEO_FILE:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getMediaData(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v18, v23

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v25, 0x0

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_a

    aget-object v22, v18, v25

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v32

    const/16 v26, 0x0

    const-string v2, "Android"

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v26, 0x1

    :cond_2
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v26, 0x1

    :cond_3
    const/16 v24, 0x0

    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_4

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v26, 0x1

    :cond_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v4

    if-nez v26, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v20, v6, v14

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v6, v20

    :cond_5
    add-long v30, v30, v4

    :cond_6
    :goto_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v2, v8, v14

    if-lez v2, :cond_6

    const-string v2, "/mnt/sdcard/extStorages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/io/File;)J

    move-result-wide v10

    if-nez v26, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v20, v6, v14

    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v6, v20

    :cond_9
    add-long v30, v30, v10

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a129d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    const-wide/16 v8, 0x1

    add-long v20, v6, v8

    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    add-long v30, v30, v8

    move-wide/from16 v6, v20

    goto/16 :goto_0
.end method

.method private sendExactUpdate(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 8

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v2, v3

    :goto_0
    if-nez v2, :cond_2

    sget-boolean v3, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v3, :cond_0

    const-string v3, "StorageMeasurement"

    const-string v4, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    sub-long v0, v4, v6

    :goto_2
    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "metaSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTotalSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "details.systemSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->systemSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "details.usedSpace: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usedSpace:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "details.cacheSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAvailSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "StorageMeasurement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "details.miscSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v4, v0

    iput-wide v4, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v4, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usedSpace:J

    invoke-interface {v2, p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateDetails(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto/16 :goto_1

    :cond_3
    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->miscSize:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->totalMediaSize:J

    sub-long v0, v4, v6

    goto/16 :goto_2
.end method

.method private sendInternalApproximateUpdate()V
    .locals 6

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    iget-wide v4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Lcom/android/settings/deviceinfo/StorageMeasurement;JJ)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getMediaData(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v9

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v8
.end method

.method public getMediaSize(Landroid/net/Uri;)J
    .locals 13

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "SUM(_size)"

    aput-object v0, v2, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-wide v10
.end method

.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public measure()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

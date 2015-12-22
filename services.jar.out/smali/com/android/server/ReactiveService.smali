.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLAG_ACTIVATED:I = 0x1

.field private static final FLAG_DEACTIVATED:I = 0x0

.field private static final FLAG_TRIGGERED:I = 0x2

.field private static final FRP_FLAG:I = 0x2

.field private static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final REACTIVATION_FLAG:I = 0x0

.field private static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field private static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field private static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field private static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field private static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field private static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field private static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final SERVICE_FLAG:I = 0x1

.field private static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field private static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveService"

.field private static mContext:Landroid/content/Context;

.field private static final mLock:Ljava/lang/Object;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private final mDataBlockFile:Ljava/lang/String;

.field private mErrorCode:I

.field private mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field private mServiceSupport:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    const-string/jumbo v0, "terrier"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->Init()V

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetSystemSolution()I

    move-result v0

    iput v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method private native FinishedSetupWizard()Z
.end method

.method private native GetFlag(I)I
.end method

.method private native GetString()Ljava/lang/String;
.end method

.method private native GetSystemSolution()I
.end method

.method private native HasPermission(Ljava/lang/String;I)Z
.end method

.method private native Init()V
.end method

.method private native RemoveString()I
.end method

.method private native SessionAccept([B)[B
.end method

.method private native SessionComplete([B)I
.end method

.method private native SetFlag(IILjava/lang/String;)I
.end method

.method private native SetString(Ljava/lang/String;)I
.end method

.method private hasPermission(II)Z
    .locals 8

    const-string v1, ""

    sget-object v5, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v1, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/server/ReactiveService;->HasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requested package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :cond_2
    const-string v5, "ReactiveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied. Package name = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], UID = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native isCsUnlockRequest()Z
.end method

.method private wipeLength()V
    .locals 6

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "ReactiveService"

    const-string v5, "Wipe length of data for Persistent partition."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    new-array v1, v4, [B

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v4, 0x24

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v4, "ReactiveService"

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string v4, "ReactiveService"

    const-string/jumbo v5, "failed to reset length"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0
.end method

.method public getFlag(I)I
    .locals 6

    packed-switch p1, :pswitch_data_0

    const/4 v3, -0x3

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v2

    :pswitch_0
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_1

    :cond_0
    sget-object v4, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->GetFlag(I)I

    move-result v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-gez v2, :cond_8

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_2
    const-string v3, "ReactiveService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFlag() : flag=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], ret=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_1
    const/4 v2, -0x2

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x2

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_3

    :cond_2
    sget-object v4, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->GetFlag(I)I

    move-result v2

    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_3
    const/4 v2, -0x2

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_7

    sget-object v3, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persistent_data_block"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v3, :cond_4

    const-string v3, "ReactiveService"

    const-string v4, "Failed to load FRP Manager"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x7

    goto/16 :goto_0

    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->FinishedSetupWizard()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x6

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x2

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v2, -0x2

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getServiceSupport()I
    .locals 1

    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->GetString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, -0x4

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeString()I
    .locals 3

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->RemoveString()I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public sessionAccept([B)[B
    .locals 5

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_1

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionAccept([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public sessionComplete([B)I
    .locals 5

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v2, :cond_0

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v1

    :cond_0
    sget-object v3, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SessionComplete([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v2, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/ReactiveService;->isCsUnlockRequest()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v2, :cond_1

    const-string v2, "ReactiveService"

    const-string v3, "Failed to load FRP Manager"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x7

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    :try_start_2
    const-string v2, "ReactiveService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->wipeLength()V

    iget-object v2, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v2}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    :goto_2
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setFlag(IILjava/lang/String;)I
    .locals 4

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v1, -0x3

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x1

    if-gtz v1, :cond_2

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_2

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->SetFlag(IILjava/lang/String;)I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_4

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_1
    const-string v1, "ReactiveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag() : flag=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], value=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_1
.end method

.method public setString(Ljava/lang/String;)I
    .locals 3

    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v1, :cond_1

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/ReactiveService;->hasPermission(II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    iget v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->SetString(Ljava/lang/String;)I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

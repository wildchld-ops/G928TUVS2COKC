.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v2, v4}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v2, v1}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return v2

    :catch_0
    move-exception v0

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "partition not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_1
    move-exception v0

    :try_start_5
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v4, "error reading data block size"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getMaximumDataBlockSize()J
    .locals 8

    const-wide/32 v2, 0x19000

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public getOemUnlockEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not allowed to access PST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$1;->getOemUnlockEnabled()Z

    move-result v3

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v5, v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v0

    if-lez v0, :cond_2

    if-nez v3, :cond_2

    const/4 v5, 0x1

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "partition not available?"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception v1

    :try_start_8
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to read statues"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_0

    :catch_4
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :goto_2
    throw v4

    :catch_5
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public read()[B
    .locals 10

    const/4 v5, 0x0

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_0

    new-array v0, v8, [B

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v6, v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v6, 0x0

    new-array v0, v6, [B

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    goto :goto_0

    :cond_1
    :try_start_4
    new-array v0, v4, [B

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    if-ge v3, v4, :cond_2

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_1
    move-object v0, v5

    goto :goto_0

    :catch_2
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v6
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_4
    move-exception v1

    :try_start_a
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to read data"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_2
    move-object v0, v5

    goto/16 :goto_0

    :catch_5
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    :goto_3
    throw v5

    :catch_6
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setOemUnlockEnabled(Z)V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceIsOwner()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1000(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->access$1100(Lcom/android/server/PersistentDataBlockService;Z)V

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wipe()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I
    invoke-static {v1, v3}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "failed to wipe persistent partition"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write([B)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, -0x1

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->access$000(Lcom/android/server/PersistentDataBlockService;I)V

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long v4, v8, v10

    array-length v7, p1

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    neg-long v6, v4

    long-to-int v6, v6

    :goto_0
    return v6

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v7, p1

    add-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v7, 0x19901873

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length v7, p1

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    const/16 v8, 0x20

    :try_start_1
    new-array v0, v8, [B

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v8

    if-eqz v8, :cond_1

    array-length v6, p1

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$300()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "failed writing to the persistent data block"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    :cond_1
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

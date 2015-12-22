.class public Lcom/sec/knox/container/util/KMLog;
.super Ljava/lang/Object;
.source "KMLog.java"


# static fields
.field public static final EVENT_CHECK_CHANGE_REQUEST:Ljava/lang/String; = "CHECK_CHANGE_REQUEST"

.field public static final EVENT_CHECK_MDPP:Ljava/lang/String; = "CHECK_MDPP"

.field public static final EVENT_CHECK_PASSWORD:Ljava/lang/String; = "CHECK_PASSWORD"

.field public static final EVENT_CHECK_SDP_MINOR:Ljava/lang/String; = "CHECK_SDP_MINOR"

.field public static final EVENT_CHECK_TOKEN:Ljava/lang/String; = "CHECK_TOKEN"

.field public static final EVENT_ENTER:Ljava/lang/String; = "ENTER"

.field public static final EVENT_EXIT:Ljava/lang/String; = "EXIT"

.field public static final EVENT_SDP_LOCK:Ljava/lang/String; = "SDP_LOCK"

.field public static final EVENT_SDP_UNLOCK:Ljava/lang/String; = "SDP_UNLOCK"

.field public static final EVENT_SHOW_ACTIVITY:Ljava/lang/String; = "SHOW_ACTIVITY"

.field public static final EVENT_SHOW_VIEW:Ljava/lang/String; = "SHOW_VIEW"

.field public static final EXTRA_CMK_ERROR:Ljava/lang/String; = "CMK_ERROR"

.field public static final EXTRA_FILE_ERROR:Ljava/lang/String; = "FILE_ERROR"

.field public static final EXTRA_IN_MAP:Ljava/lang/String; = "IN_MAP"

.field public static final EXTRA_IN_PROGRESS:Ljava/lang/String; = "IN_PROGRESS"

.field public static final EXTRA_NOT_IN_MAP:Ljava/lang/String; = "NOT_IN_MAP"

.field public static final EXTRA_NULL_CMK:Ljava/lang/String; = "NULL_CMK"

.field public static final EXTRA_NULL_PASSWORD:Ljava/lang/String; = "NULL_PASSWORD"

.field public static final EXTRA_NULL_PERSONA_INFO:Ljava/lang/String; = "NULL_PERSONA_INFO"

.field public static final EXTRA_UNEXPECTED:Ljava/lang/String; = "UNEXPECTED"

.field public static final EXTRA_WRONG_PASSWORD:Ljava/lang/String; = "WRONG_PASSWORD"

.field private static final FILE_PATH:Ljava/lang/String; = "/data/log/kmlog"

.field private static final TAG:Ljava/lang/String; = "KMLog"

.field private static final TAG_SECRET:Ljava/lang/String; = "KMLog_SECRET"

.field private static client:I

.field private static errorCount:I

.field private static mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLock:Ljava/lang/Object;

.field private static sKMLog:Lcom/sec/knox/container/util/KMLog;


# instance fields
.field private final DEBUG:Z

.field private final FILE_EOL:B

.field private final FILE_OFFSET:J

.field private final MAX_BUFFER_SIZE:I

.field private final MAX_ERROR_COUNT:I

.field private final MAX_FILE_LENGTH:J

.field private final MAX_HEADER_LENGTH:J

.field private isActivated:Z

.field private final isInitialized:Z

.field private final isRemote:Z

.field private mContext:Landroid/content/Context;

.field private mPersonaManager:Landroid/os/PersonaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/knox/container/util/KMLog;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Lcom/sec/knox/container/util/KMLog;->client:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/knox/container/util/KMLog;->errorCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/sec/knox/container/util/KMLog;->FILE_EOL:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->FILE_OFFSET:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_FILE_LENGTH:J

    const-wide/16 v0, 0x9

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_HEADER_LENGTH:J

    iput v3, p0, Lcom/sec/knox/container/util/KMLog;->MAX_ERROR_COUNT:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_BUFFER_SIZE:I

    iput-object v4, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/sec/knox/container/util/KMLog;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->DEBUG:Z

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    iput-boolean v3, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/sec/knox/container/util/KMLog;->FILE_EOL:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->FILE_OFFSET:J

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_FILE_LENGTH:J

    const-wide/16 v0, 0x9

    iput-wide v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_HEADER_LENGTH:J

    iput v3, p0, Lcom/sec/knox/container/util/KMLog;->MAX_ERROR_COUNT:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/knox/container/util/KMLog;->MAX_BUFFER_SIZE:I

    iput-object v4, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    iput-object v4, p0, Lcom/sec/knox/container/util/KMLog;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/util/KMLog;->getPersonaManager(Landroid/content/Context;)Landroid/os/PersonaManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->DEBUG:Z

    iput-boolean v3, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    iput-boolean v3, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->DEBUG:Z

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    iput-boolean v2, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    goto :goto_0
.end method

.method private checkBufferSize()V
    .locals 2

    sget-object v0, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const-string v0, "Abnormal buffer size..."

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->clearBuffer()V

    const-string v0, "Check error count..."

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->checkErrorCount()V

    :cond_0
    return-void
.end method

.method private checkErrorCount()V
    .locals 2

    sget v0, Lcom/sec/knox/container/util/KMLog;->errorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/knox/container/util/KMLog;->errorCount:I

    sget v0, Lcom/sec/knox/container/util/KMLog;->errorCount:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "Reach to max error count..."

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/knox/container/util/KMLog;->stop()V

    const/4 v0, 0x0

    sput v0, Lcom/sec/knox/container/util/KMLog;->errorCount:I

    :cond_0
    return-void
.end method

.method private clearBuffer()V
    .locals 1

    const-string v0, "Clear buffer..."

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KMLog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/knox/container/util/KMLog;
    .locals 2

    const-class v1, Lcom/sec/knox/container/util/KMLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/knox/container/util/KMLog;

    invoke-direct {v0}, Lcom/sec/knox/container/util/KMLog;-><init>()V

    sput-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;

    :cond_0
    sget-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/KMLog;
    .locals 2

    const-class v1, Lcom/sec/knox/container/util/KMLog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/knox/container/util/KMLog;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/util/KMLog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;

    :cond_0
    sget-object v0, Lcom/sec/knox/container/util/KMLog;->sKMLog:Lcom/sec/knox/container/util/KMLog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMethodInfo()Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    const/4 v5, 0x4

    :try_start_0
    aget-object v1, v4, v5

    const/4 v5, 0x5

    aget-object v2, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "N/A, N/A, N/A"

    goto :goto_0
.end method

.method private getPersonaManager(Landroid/content/Context;)Landroid/os/PersonaManager;
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "persona"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "getPersonaManager() - UnexpectedException..."

    invoke-static {v1}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private registerClient(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerClent( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    sput p1, Lcom/sec/knox/container/util/KMLog;->client:I

    return-void
.end method

.method private retValToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private saveToBufferRemotely(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->saveToBufferViaKMLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private saveToFile()Z
    .locals 20

    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :try_start_0
    sget-object v15, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "Save Logs Failed! : Empty buffer"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_0
    if-eqz v14, :cond_4

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v15, "/data/log/kmlog"

    const-string/jumbo v16, "rwd"

    move-object/from16 v0, v16

    invoke-direct {v6, v15, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v16, 0x0

    :try_start_1
    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v8

    const-wide/16 v16, 0x9

    cmp-long v15, v8, v16

    if-gtz v15, :cond_8

    const/4 v13, 0x1

    const-string/jumbo v15, "saveToFile() - File is too small"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v13, :cond_3

    const-wide/16 v16, 0x9

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v15, 0xa

    invoke-virtual {v6, v15}, Ljava/io/RandomAccessFile;->writeByte(I)V

    const-wide/16 v16, 0x9

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    const-wide/16 v16, 0x9

    cmp-long v15, v10, v16

    if-ltz v15, :cond_2

    const-wide/32 v16, 0x100000

    cmp-long v15, v10, v16

    if-lez v15, :cond_3

    :cond_2
    const/4 v14, 0x0

    const-string v15, "Save Logs Failed! : Cannot recover file"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_3
    move-object v5, v6

    :cond_4
    if-eqz v14, :cond_6

    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "saveToFile() - FP : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v15, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v2, v3

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v16

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    const-wide/32 v18, 0x100000

    cmp-long v15, v16, v18

    if-lez v15, :cond_5

    const-wide/16 v16, 0x9

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_5
    invoke-virtual {v5, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/16 v15, 0xa

    invoke-virtual {v5, v15}, Ljava/io/RandomAccessFile;->write(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_2
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v15, "Save Logs Failed! : Cannot open file"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_7
    :goto_4
    return v14

    :cond_8
    const-wide/32 v16, 0x100000

    cmp-long v15, v8, v16

    if-lez v15, :cond_9

    const/4 v13, 0x1

    :try_start_4
    const-string/jumbo v15, "saveToFile() - File length had exceeded limitation"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object v5, v6

    goto :goto_2

    :cond_9
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v10

    const-wide/16 v16, 0x9

    cmp-long v15, v10, v16

    if-ltz v15, :cond_a

    const-wide/32 v16, 0x100000

    cmp-long v15, v10, v16

    if-lez v15, :cond_1

    :cond_a
    const/4 v13, 0x1

    const-string/jumbo v15, "saveToFile() - File header had been broken"

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    :catch_2
    move-exception v4

    move-object v5, v6

    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    const-string v15, "Save Logs Failed! : Cannot modify file..."

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_3

    :cond_b
    :try_start_5
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    const-wide/32 v16, 0x100000

    cmp-long v15, v10, v16

    if-lez v15, :cond_c

    const/4 v14, 0x0

    goto :goto_3

    :cond_c
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v10, v11}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_3
    move-exception v4

    goto :goto_5

    :catch_4
    move-exception v4

    :goto_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string v15, "Save Logs Failed! : Unexpected error occurred..."

    invoke-static {v15}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_3

    :catch_5
    move-exception v15

    goto :goto_4

    :catch_6
    move-exception v4

    move-object v5, v6

    goto :goto_6
.end method

.method private unregisterClient()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterClent( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/sec/knox/container/util/KMLog;->client:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    sput v0, Lcom/sec/knox/container/util/KMLog;->client:I

    return-void
.end method


# virtual methods
.method public declared-synchronized checkClient(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/sec/knox/container/util/KMLog;->client:I

    if-gez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/knox/container/util/KMLog;->registerClient(I)V

    :cond_0
    sget v0, Lcom/sec/knox/container/util/KMLog;->client:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/knox/container/util/KMLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v0}, Landroid/os/PersonaManager;->finishViaKMLog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    const-string v0, "Save logs to file..."

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->saveToFile()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Save logs to file : SUCCESS!"

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->clearBuffer()V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->unregisterClient()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    goto :goto_1

    :cond_3
    const-string v0, "Save logs to file : FAILED!"

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public run()V
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/knox/container/util/KMLog;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-nez v1, :cond_3

    :goto_1
    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->runViaKMLog()Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Run to collect logs..."

    invoke-static {v1}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    if-eqz v1, :cond_4

    const-string v1, "Abnormal termination expected previously..."

    invoke-static {v1}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->clearBuffer()V

    :cond_2
    :goto_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized saveToBuffer(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/sec/knox/container/util/KMLog;->mBuffer:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public secret(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public stamp(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10

    sget-object v8, Lcom/sec/knox/container/util/KMLog;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v7, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    if-nez v7, :cond_0

    monitor-exit v8

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->checkBufferSize()V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->getMethodInfo()Ljava/lang/String;

    move-result-object v1

    iget-boolean v7, p0, Lcom/sec/knox/container/util/KMLog;->DEBUG:Z

    if-eqz v7, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/knox/container/util/KMLog;->retValToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v7, p0, Lcom/sec/knox/container/util/KMLog;->DEBUG:Z

    if-eqz v7, :cond_1

    invoke-static {v0}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    :cond_1
    iget-boolean v7, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-eqz v7, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/knox/container/util/KMLog;->saveToBufferRemotely(Ljava/lang/String;)V

    :goto_2
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_2
    :try_start_1
    const-string v3, "Hidden"

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sec/knox/container/util/KMLog;->saveToBuffer(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isInitialized:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/sec/knox/container/util/KMLog;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isRemote:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/knox/container/util/KMLog;->mPersonaManager:Landroid/os/PersonaManager;

    invoke-virtual {v1}, Landroid/os/PersonaManager;->stopViaKMLog()Z

    move-result v0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Stop to collect logs..."

    invoke-static {v1}, Lcom/sec/knox/container/util/KMLog;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->clearBuffer()V

    invoke-direct {p0}, Lcom/sec/knox/container/util/KMLog;->unregisterClient()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/knox/container/util/KMLog;->isActivated:Z

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

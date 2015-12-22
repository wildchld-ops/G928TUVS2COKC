.class public Lcom/android/server/enterprise/auditlog/Dumper;
.super Ljava/lang/Thread;
.source "Dumper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Dumper"

.field private static final TEMP_FILENAME:Ljava/lang/String; = "/temp/"

.field private static mTemporaryPath:Ljava/lang/String;


# instance fields
.field private mBegin:J

.field private mDeviceInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpFilesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpResult:Z

.field private mEnd:J

.field private mFilter:Lcom/android/server/enterprise/auditlog/Filter;

.field private mHeader:Ljava/lang/StringBuilder;

.field private mHeaderDate:Ljava/text/SimpleDateFormat;

.field private mIsFullDump:Z

.field private mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

.field private mPackageName:Ljava/lang/String;

.field private mPfd:Landroid/os/ParcelFileDescriptor;

.field private mTemporaryDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJLandroid/os/ParcelFileDescriptor;Ljava/util/ArrayList;Lcom/android/server/enterprise/auditlog/IObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;",
            "Lcom/android/server/enterprise/auditlog/IObserver;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iput-object p5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    iput-wide p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    iput-wide p3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    return-void
.end method

.method private concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/auditlog/PartialFileNode;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v2, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cat "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/io/File;

    sget-object v12, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v11, "Dumper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "concatenateFiles.Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    if-eqz v11, :cond_2

    const-string v11, " > "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/temp.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "/system/bin/sh"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "-c"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    aput-object v2, v0, v11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v8, ""

    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v11, Ljava/lang/Exception;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error while Executing the Cat command"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    new-instance v4, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/temp.gz"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v4

    goto/16 :goto_1
.end method

.method private createHeader()V
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd \'at\' HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    const-string v2, "----------------------------------------------\n"

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dump Log Generated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeaderDate:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private createHeaderTempFile(Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mHeader:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_4
    throw v4

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_3

    :catchall_1
    move-exception v4

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private fullDump()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    sget-object v8, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/16 v25, 0x0

    :try_start_0
    new-instance v16, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v23, Ljava/util/zip/GZIPOutputStream;

    new-instance v27, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v27, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v27, :cond_b

    move-object v5, v4

    move-object v7, v6

    move-object/from16 v18, v17

    move-object v12, v11

    :cond_0
    :goto_0
    :try_start_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getWasWritten()Z

    move-result v27

    if-nez v27, :cond_8

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    move-object v11, v12

    :goto_1
    const/16 v27, 0x0

    :try_start_4
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "fullDump.Exception: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    :cond_1
    if-eqz v22, :cond_2

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    :cond_3
    :goto_3
    if-eqz v17, :cond_4

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_4
    :goto_4
    if-eqz v11, :cond_5

    :try_start_8
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c

    :cond_5
    :goto_5
    if-eqz v15, :cond_6

    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    :cond_6
    :goto_6
    if-eqz v13, :cond_7

    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e

    :cond_7
    :goto_7
    return-void

    :cond_8
    :try_start_b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v27

    if-eqz v27, :cond_0

    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    new-instance v17, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v27, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-direct {v6, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_18
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_19
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_9
    :goto_8
    :try_start_f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_9

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    goto :goto_8

    :catch_1
    move-exception v9

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_1

    :cond_a
    move-object v5, v4

    move-object v7, v6

    move-object/from16 v18, v17

    move-object v12, v11

    goto/16 :goto_0

    :cond_b
    if-eqz v8, :cond_e

    new-instance v27, Ljava/io/File;

    sget-object v28, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v27 .. v28}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->exists()Z

    move-result v27

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->mkdir()Z

    :cond_c
    new-instance v26, Ljava/io/File;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/header"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_1d

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1a
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    const/high16 v27, 0x10000

    :try_start_11
    move/from16 v0, v27

    new-array v3, v0, [B

    :goto_9
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v20

    if-lez v20, :cond_d

    const/16 v27, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v20

    invoke-virtual {v0, v3, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    :catch_2
    move-exception v9

    move-object/from16 v25, v26

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object v13, v14

    goto/16 :goto_1

    :cond_d
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    move-object/from16 v25, v26

    move-object v13, v14

    :cond_e
    :goto_a
    if-eqz v25, :cond_f

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    :cond_f
    if-eqz v23, :cond_10

    :try_start_12
    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v23 .. v23}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3

    :cond_10
    :goto_b
    if-eqz v4, :cond_11

    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    :cond_11
    :goto_c
    if-eqz v17, :cond_12

    :try_start_14
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5

    :cond_12
    :goto_d
    if-eqz v11, :cond_13

    :try_start_15
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    :cond_13
    :goto_e
    if-eqz v16, :cond_14

    :try_start_16
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :cond_14
    :goto_f
    if-eqz v13, :cond_1c

    :try_start_17
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_3
    move-exception v9

    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "run.IOException "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_4
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close bufferedReader at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :catch_5
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close gizp stream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_6
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :catch_7
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close outStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_8
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_7

    :catch_9
    move-exception v9

    const-string v27, "Dumper"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "run.IOException "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_a
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close bufferedReader at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_b
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close gizp stream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catch_c
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_d
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close outStream at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_e
    move-exception v9

    const-string v27, "Dumper"

    const-string/jumbo v28, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v27 .. v28}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catchall_0
    move-exception v27

    :goto_10
    if-eqz v25, :cond_15

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    :cond_15
    if-eqz v22, :cond_16

    :try_start_18
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f

    :cond_16
    :goto_11
    if-eqz v4, :cond_17

    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    :cond_17
    :goto_12
    if-eqz v17, :cond_18

    :try_start_1a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_11

    :cond_18
    :goto_13
    if-eqz v11, :cond_19

    :try_start_1b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    :cond_19
    :goto_14
    if-eqz v15, :cond_1a

    :try_start_1c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    :cond_1a
    :goto_15
    if-eqz v13, :cond_1b

    :try_start_1d
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_14

    :cond_1b
    :goto_16
    throw v27

    :catch_f
    move-exception v9

    const-string v28, "Dumper"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "run.IOException "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_10
    move-exception v9

    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close bufferedReader at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :catch_11
    move-exception v9

    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close gizp stream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_12
    move-exception v9

    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :catch_13
    move-exception v9

    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close outStream at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catch_14
    move-exception v9

    const-string v28, "Dumper"

    const-string/jumbo v29, "failed to close fileStreamFull at fullDump"

    invoke-static/range {v28 .. v29}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :catchall_1
    move-exception v27

    move-object/from16 v15, v16

    goto :goto_10

    :catchall_2
    move-exception v27

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_10

    :catchall_3
    move-exception v27

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    move-object v11, v12

    goto/16 :goto_10

    :catchall_4
    move-exception v27

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto/16 :goto_10

    :catchall_5
    move-exception v27

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_10

    :catchall_6
    move-exception v27

    move-object v4, v5

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_10

    :catchall_7
    move-exception v27

    move-object/from16 v25, v26

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_10

    :catchall_8
    move-exception v27

    move-object/from16 v25, v26

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object v13, v14

    goto/16 :goto_10

    :catch_15
    move-exception v9

    goto/16 :goto_1

    :catch_16
    move-exception v9

    move-object/from16 v15, v16

    goto/16 :goto_1

    :catch_17
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    move-object/from16 v17, v18

    goto/16 :goto_1

    :catch_18
    move-exception v9

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_1

    :catch_19
    move-exception v9

    move-object v4, v5

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_1

    :catch_1a
    move-exception v9

    move-object/from16 v25, v26

    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v22, v23

    move-object/from16 v15, v16

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v25, v26

    goto/16 :goto_a

    :cond_1e
    move-object v4, v5

    move-object v6, v7

    move-object/from16 v17, v18

    move-object v11, v12

    goto/16 :goto_a
.end method

.method private readFileLineByLine(Ljava/io/File;)Ljava/io/File;
    .locals 24

    const-wide/16 v2, 0x0

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v21, Ljava/io/File;

    sget-object v22, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v19, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "Tmp"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v14, Ljava/util/zip/GZIPOutputStream;

    new-instance v21, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v0, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    new-instance v7, Ljava/io/InputStreamReader;

    const-string v21, "UTF-8"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v7, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_1
    :goto_0
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    const-string v21, " "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v20

    const/16 v21, 0x0

    :try_start_8
    aget-object v21, v20, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-wide v2

    :try_start_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    cmp-long v21, v2, v22

    if-lez v21, :cond_3

    :cond_2
    invoke-static {v5}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v10}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v14}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    :goto_1
    return-object v18

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_3
    :try_start_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-ltz v21, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v21, v2, v22

    if-gtz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Filter;->filtering(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v8

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    :goto_2
    :try_start_b
    const-string v21, "Dumper"

    const-string/jumbo v22, "readFileLineByLine.IOException"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v9}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :cond_4
    :try_start_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v21

    move-object v4, v5

    move-object v6, v7

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    :goto_3
    invoke-static {v4}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v15}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v9}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v13}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    invoke-static {v11}, Lcom/android/server/enterprise/auditlog/Dumper;->safeClose(Ljava/io/Closeable;)V

    throw v21

    :catchall_1
    move-exception v21

    goto :goto_3

    :catchall_2
    move-exception v21

    move-object/from16 v18, v19

    goto :goto_3

    :catchall_3
    move-exception v21

    move-object v11, v12

    move-object/from16 v18, v19

    goto :goto_3

    :catchall_4
    move-exception v21

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto :goto_3

    :catchall_5
    move-exception v21

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto :goto_3

    :catchall_6
    move-exception v21

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto :goto_3

    :catchall_7
    move-exception v21

    move-object v6, v7

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto :goto_3

    :catch_2
    move-exception v8

    goto/16 :goto_2

    :catch_3
    move-exception v8

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_4
    move-exception v8

    move-object v11, v12

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_5
    move-exception v8

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_6
    move-exception v8

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_7
    move-exception v8

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto/16 :goto_2

    :catch_8
    move-exception v8

    move-object v6, v7

    move-object/from16 v15, v16

    move-object v9, v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v18, v19

    goto/16 :goto_2
.end method

.method private static safeClose(Ljava/io/Closeable;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Dumper"

    const-string v2, "Failed to close resource."

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private selectDumpInterval()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpFilesList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v12

    const/16 v18, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x0

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/ListIterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v12}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-ltz v20, :cond_0

    if-eqz v8, :cond_1

    invoke-interface {v12}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v9

    new-instance v17, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getTimestamp()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->getFile()Ljava/io/File;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->readFileLineByLine(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v16, Lcom/android/server/enterprise/auditlog/PartialFileNode;

    const-string v20, "com.android.server.enterprise.auditlog"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setWasWritten(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v20, Ljava/io/File;

    sget-object v21, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryPath:Ljava/lang/String;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdir()Z

    :cond_4
    new-instance v19, Ljava/io/File;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mTemporaryDirectory:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/header"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeaderTempFile(Ljava/io/File;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v13}, Lcom/android/server/enterprise/auditlog/Dumper;->concatenateFiles(Ljava/io/File;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_d

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v20, 0x10000

    :try_start_2
    move/from16 v0, v20

    new-array v2, v0, [B

    :goto_1
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_c

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v2, v0, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v14, v15

    move-object v6, v7

    :goto_2
    :try_start_3
    const-string v20, "Dumper"

    const-string v21, "SelectDumpInterval.Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_6
    if-eqz v16, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_7
    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_9
    if-eqz v6, :cond_a

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_a
    :goto_3
    if-eqz v14, :cond_b

    :try_start_5
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_b
    :goto_4
    return-void

    :cond_c
    move-object v14, v15

    move-object v6, v7

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_e
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_f
    if-eqz v16, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_10
    if-eqz v17, :cond_11

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_12
    if-eqz v6, :cond_13

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_13
    :goto_5
    if-eqz v14, :cond_b

    :try_start_7
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    :catch_1
    move-exception v10

    const-string v20, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v10

    const-string v20, "Dumper"

    const-string/jumbo v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v10

    const-string v20, "Dumper"

    const-string/jumbo v21, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception v10

    const-string v20, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v20

    :goto_6
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_14
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_15
    if-eqz v16, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_16
    if-eqz v17, :cond_17

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->delete()V

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_18
    if-eqz v6, :cond_19

    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_19
    :goto_7
    if-eqz v14, :cond_1a

    :try_start_9
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_1a
    :goto_8
    throw v20

    :catch_5
    move-exception v10

    const-string v21, "Dumper"

    const-string/jumbo v22, "failed to close input stream file at selectDumpInterval"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_6
    move-exception v10

    const-string v21, "Dumper"

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_1
    move-exception v20

    move-object v6, v7

    goto :goto_6

    :catchall_2
    move-exception v20

    move-object v14, v15

    move-object v6, v7

    goto :goto_6

    :catch_7
    move-exception v3

    goto/16 :goto_2

    :catch_8
    move-exception v3

    move-object v6, v7

    goto/16 :goto_2
.end method


# virtual methods
.method public isCompressed(Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x2

    :try_start_1
    new-array v0, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    if-eqz v0, :cond_0

    array-length v5, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v5, v7, :cond_3

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    move v3, v4

    :cond_2
    :goto_0
    return v3

    :cond_3
    const/4 v5, 0x0

    :try_start_2
    aget-byte v5, v0, v5

    const/16 v6, 0x1f

    if-ne v5, v6, :cond_4

    const/4 v5, 0x1

    aget-byte v5, v0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v6, -0x75

    if-ne v5, v6, :cond_4

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_5
    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_2
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->createHeader()V

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mEnd:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mBegin:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->fullDump()V

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    :goto_2
    return-void

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/enterprise/auditlog/Dumper;->selectDumpInterval()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "Dumper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run.Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v1, v2, v3}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "Dumper"

    const-string/jumbo v2, "run.IOException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mObserver:Lcom/android/server/enterprise/auditlog/IObserver;

    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDumpResult:Z

    iget-boolean v4, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mIsFullDump:Z

    invoke-interface {v2, v3, v4}, Lcom/android/server/enterprise/auditlog/IObserver;->notifyDumpFinished(ZZ)V

    throw v1

    :catch_3
    move-exception v0

    const-string v2, "Dumper"

    const-string/jumbo v3, "run.IOException"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public setDeviceInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mDeviceInfo:Ljava/util/List;

    return-void
.end method

.method public setFilter(Lcom/android/server/enterprise/auditlog/Filter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mFilter:Lcom/android/server/enterprise/auditlog/Filter;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Dumper;->mPackageName:Ljava/lang/String;

    return-void
.end method

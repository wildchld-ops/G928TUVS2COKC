.class public Lcom/sec/android/inputmethod/scloudsync/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/util/zip/ZipInputStream;

    invoke-direct {v7, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    move-object v6, v7

    move-object v1, v2

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v8

    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    invoke-static {v7, v4}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_6
    return-void

    :catchall_1
    move-exception v8

    goto :goto_1

    :catchall_2
    move-exception v8

    move-object v1, v2

    goto :goto_1
.end method

.method protected static unzipEntry(Ljava/util/zip/ZipInputStream;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v4, 0x800

    :try_start_1
    new-array v0, v4, [B

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    throw v4

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    return-object p1

    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method public static zip(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x8

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-static {p0, v1}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->zipEntry(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_1
    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static zip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v7, 0x8

    :try_start_3
    invoke-virtual {v6, v7}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    invoke-static {v4, p0, v6}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_3
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_6
    throw v7

    :catchall_1
    move-exception v7

    move-object v2, v3

    goto :goto_1

    :catchall_2
    move-exception v7

    move-object v0, v1

    move-object v2, v3

    goto :goto_1

    :catchall_3
    move-exception v7

    move-object v5, v6

    move-object v0, v1

    move-object v2, v3

    goto :goto_1
.end method

.method private static zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    move-object v2, v7

    array-length v10, v2

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_3

    aget-object v8, v2, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v8, v0, v1}, Lcom/sec/android/inputmethod/scloudsync/ZipUtils;->zipEntry(Ljava/io/File;Ljava/lang/String;Ljava/util/zip/ZipOutputStream;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v12, Ljava/util/zip/ZipEntry;

    invoke-direct {v12, v13}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/util/zip/ZipEntry;->setTime(J)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v14, 0x800

    new-array v5, v14, [B

    const/4 v6, 0x0

    :goto_1
    const/4 v14, 0x0

    const/16 v15, 0x800

    invoke-virtual {v4, v5, v14, v15}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v14, v6}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v14

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_1
    throw v14

    :cond_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception v14

    goto :goto_2
.end method

.method private static zipEntry(Ljava/io/File;Ljava/util/zip/ZipOutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/zip/ZipEntry;->setTime(J)V

    invoke-virtual {p1, v4}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    const/16 v5, 0x800

    new-array v2, v5, [B

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-virtual {v1, v2, v5, v6}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5, v3}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    :cond_0
    throw v5

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_2
    return-void

    :catchall_1
    move-exception v5

    goto :goto_1
.end method

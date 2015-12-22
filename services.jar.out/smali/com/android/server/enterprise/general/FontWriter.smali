.class public Lcom/android/server/enterprise/general/FontWriter;
.super Ljava/lang/Object;
.source "FontWriter.java"


# static fields
.field public static final CHMOD_COMMAND:Ljava/lang/String; = "chmod 777 "

.field public static final CHMOD_EXECUTE_COMMAND:Ljava/lang/String; = "chmod 711 "

.field public static final CHMOD_READ_COMMAND:Ljava/lang/String; = "chmod 744 "

.field public static final FONT_DIRECTORY:Ljava/lang/String; = "fonts"

.field public static final LOC_DIRECTORY:Ljava/lang/String; = "/data/data/com.android.settings/app_fonts"

.field public static final MONOSPACE_LOC_NAME:Ljava/lang/String; = "monospace.loc"

.field public static final SANS_LOC_NAME:Ljava/lang/String; = "sans.loc"

.field public static final SERIF_LOC_NAME:Ljava/lang/String; = "serif.loc"

.field private static TAG:Ljava/lang/String;


# instance fields
.field bos:Ljava/io/BufferedOutputStream;

.field fOut:Ljava/io/FileOutputStream;

.field osw:Ljava/io/OutputStreamWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FontWriter"

    sput-object v0, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iput-object v0, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    return-void
.end method

.method private deleteFolder(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_0

    new-instance v1, Ljava/io/File;

    aget-object v5, v4, v2

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public changeFilePermission(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 744 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot chmod"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v2

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v10, p2

    move-object/from16 v9, p1

    move-object/from16 v8, p3

    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/BufferedOutputStream;

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v12, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/16 v12, 0x400

    new-array v1, v12, [B

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v10, v1}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v1, v13, v11}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_1
    :try_start_3
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    :cond_2
    :goto_2
    :try_start_4
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_3
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-nez v12, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :cond_5
    :try_start_5
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_6

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_6
    :goto_4
    :try_start_7
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_5
    :try_start_8
    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catch_3
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_4
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : myInputStream.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_5
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : fOut.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_6
    move-exception v3

    sget-object v12, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v13, "copyFontFile : bos.close() error"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v12

    if-eqz v10, :cond_8

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_8
    :goto_6
    :try_start_a
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v13, :cond_9

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_9
    :goto_7
    :try_start_b
    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    if-eqz v13, :cond_a

    iget-object v13, p0, Lcom/android/server/enterprise/general/FontWriter;->bos:Ljava/io/BufferedOutputStream;

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_a
    :goto_8
    throw v12

    :catch_7
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : myInputStream.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_8
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : fOut.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catch_9
    move-exception v3

    sget-object v13, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v14, "copyFontFile : bos.close() error"

    invoke-static {v13, v14}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public copyFontFile1(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 19

    const/4 v8, 0x0

    const/4 v3, 0x0

    move-object/from16 v14, p2

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v16, 0x400

    :try_start_2
    move/from16 v0, v16

    new-array v2, v0, [B

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v14, v2}, Ljava/io/InputStream;->read([B)I

    move-result v15

    if-lez v15, :cond_5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0, v15}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v3, v4

    move-object v8, v9

    :goto_1
    :try_start_3
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v14, :cond_1

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_3
    :goto_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-nez v16, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_4
    return-void

    :cond_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v14, :cond_6

    :try_start_8
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_6
    :goto_5
    if-eqz v9, :cond_7

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_7
    :goto_6
    if-eqz v4, :cond_8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_8
    move-object v3, v4

    move-object v8, v9

    goto :goto_4

    :catch_1
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_2
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_3
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v8, v9

    goto :goto_4

    :catch_4
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_5
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : fOut.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_6
    move-exception v6

    sget-object v16, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v17, "copyFontFile : bos.close() error"

    invoke-static/range {v16 .. v17}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v16

    :goto_7
    if-eqz v14, :cond_9

    :try_start_b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_9
    :goto_8
    if-eqz v8, :cond_a

    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_a
    :goto_9
    if-eqz v3, :cond_b

    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_b
    :goto_a
    throw v16

    :catch_7
    move-exception v6

    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : myInputStream.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catch_8
    move-exception v6

    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : fOut.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :catch_9
    move-exception v6

    sget-object v17, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v18, "copyFontFile : bos.close() error"

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :catchall_1
    move-exception v16

    move-object v8, v9

    goto :goto_7

    :catchall_2
    move-exception v16

    move-object v3, v4

    move-object v8, v9

    goto :goto_7

    :catch_a
    move-exception v7

    goto/16 :goto_1

    :catch_b
    move-exception v7

    move-object v8, v9

    goto/16 :goto_1
.end method

.method public createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 13

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "createFontDirectory : Start"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :try_start_0
    const-string v11, "com.android.settings"

    const/4 v12, 0x2

    invoke-virtual {p1, v11, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    if-eqz v9, :cond_1

    const-string/jumbo v11, "fonts"

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v12}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "newFontDir : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "newFontDir object created : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v12, "newFontDir : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    aget-object v11, v10, v2

    invoke-direct {p0, v6, v11}, Lcom/android/server/enterprise/general/FontWriter;->deleteFolder(Ljava/io/File;Ljava/lang/String;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "chmod 711 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v5}, Ljava/lang/Process;->exitValue()I

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Cannot chmod"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_1
    move-exception v4

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "IOException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "Font directory  : Not Created"

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v3

    sget-object v11, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string v12, "InterruptedException : "

    invoke-static {v11, v12}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.android.settings/app_fonts"

    invoke-direct {v1, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    const-string/jumbo v4, "persist.sys.flipfontpath"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/FontWriter;->changeFilePermission(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    :try_start_5
    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : fOut.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v2

    sget-object v4, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeLoc : osw.close() error"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_6
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->osw:Ljava/io/OutputStreamWriter;

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_3
    :goto_3
    :try_start_7
    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/general/FontWriter;->fOut:Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_4
    throw v4

    :catch_5
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : osw.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_6
    move-exception v2

    sget-object v5, Lcom/android/server/enterprise/general/FontWriter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "writeLoc : fOut.close() error"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

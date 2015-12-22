.class Lcom/android/server/power/ShutdownThread$LogFileWriter;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogFileWriter"
.end annotation


# static fields
.field private static final FILELOG_EXTENTION:Ljava/lang/String; = "txt"

.field private static final MAX_TIMESTAMP_FILELOG:I = 0x5


# instance fields
.field private fos:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownThread$LogFileWriter;->generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.LogFileWriter error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method private generateFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v16

    if-eqz v16, :cond_2

    const-string v16, "ShutdownThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "create dir: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_5

    new-instance v10, Ljava/util/TreeMap;

    invoke-direct {v10}, Ljava/util/TreeMap;-><init>()V

    move-object v2, v9

    array-length v8, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v16, "ShutdownThread"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "create dir fail: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v16, 0x0

    :goto_1
    return-object v16

    :catch_0
    move-exception v11

    const-string v16, "ShutdownThread"

    const-string v17, "!@Create dir error"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v11}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v16, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v16

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    const-string v16, "%s.%d.%s"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object p2, v17, v18

    const/16 v18, 0x1

    invoke-virtual {v10}, Ljava/util/TreeMap;->size()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string/jumbo v19, "txt"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    goto :goto_1

    :cond_4
    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_1
.end method


# virtual methods
.method public save()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.save fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

.method public saveAndClose()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose error"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose fail"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "ShutdownThread"

    const-string v2, "LogFileWriter.saveAndClose error"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_1
    throw v1

    :catch_3
    move-exception v0

    const-string v2, "ShutdownThread"

    const-string v3, "LogFileWriter.saveAndClose error"

    invoke-static {v2, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_1
.end method

.method public write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    if-nez v3, :cond_0

    const-string/jumbo v3, "fos is null"

    invoke-static {p1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v3, "%02d-%02d %02d:%02d:%02d %s\n"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const/16 v6, 0xc

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$LogFileWriter;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "LogFileWriter.write fail"

    invoke-static {p1, v3, v0}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_0
.end method

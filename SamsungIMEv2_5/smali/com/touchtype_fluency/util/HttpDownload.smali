.class public Lcom/touchtype_fluency/util/HttpDownload;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/util/HttpDownload$a;,
        Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/net/URLConnection;

.field private d:Ljava/lang/Thread;

.field private e:J

.field private f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/HttpDownload;)J
    .locals 2

    iget-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:J

    return-wide v0
.end method

.method static a(Lcom/touchtype_fluency/util/Storage;Lcom/touchtype_fluency/util/e;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-interface {p0}, Lcom/touchtype_fluency/util/Storage;->getPreinstallDirectory()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lcom/touchtype_fluency/util/HttpDownload$1;

    invoke-direct {v2}, Lcom/touchtype_fluency/util/HttpDownload$1;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    invoke-static {v5, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/File;Lcom/touchtype_fluency/util/e;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method

.method private static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Lcom/touchtype_fluency/util/e;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Calculating hash for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/touchtype_fluency/util/HttpDownload;->createDigest(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/touchtype_fluency/util/e;->a(Ljava/lang/String;)Lcom/touchtype_fluency/util/c;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Hash unchanged - not generating JSON for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating preinstalled JSON from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v6, v1

    move-object v5, v1

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, ".config"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->b(Ljava/io/InputStream;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v0, "archive"

    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v6

    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v6, v0

    goto :goto_1

    :cond_2
    :try_start_7
    const-string v7, "extraData.json"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v3}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v6

    move-object v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    :goto_3
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_0

    const-string v1, "sha1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "preinstalledSha1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_6
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v1

    :goto_7
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v1, v3

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v3, v1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v2, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v3, v4

    move-object v2, v1

    goto :goto_3

    :cond_5
    move-object v0, v6

    goto/16 :goto_2
.end method

.method private static a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [C

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/json/JSONObject;

    return-object v0

    :cond_2
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "extraData.json should contain an object at the top level"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_2
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_4
    if-lez v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:J

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a()V

    goto :goto_0

    :cond_5
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_6
    instance-of v0, p2, Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    :cond_7
    return-void
.end method

.method private a(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    const/16 v0, 0x1000

    new-array v0, v0, [C

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_3
    if-lez v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:J

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Ljava/net/URL;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    return-void

    :cond_1
    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid protocol specified: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static b(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v13, -0x1

    const/4 v12, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [C

    :cond_0
    :goto_0
    invoke-virtual {v1, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-eq v4, v13, :cond_1

    if-lez v4, :cond_0

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONTokener;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v1, 0x0

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_5

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "id:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "[:_]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    new-instance v8, Ljava/util/Locale;

    aget-object v9, v7, v11

    aget-object v10, v7, v12

    invoke-direct {v8, v9, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "language"

    aget-object v10, v7, v11

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "country"

    aget-object v7, v7, v12

    invoke-virtual {v9, v10, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-static {v8}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    array-length v8, v7

    if-ne v8, v12, :cond_2

    const-string v8, "language"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/Locale;

    aget-object v9, v7, v11

    invoke-direct {v8, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const-string v9, "language"

    aget-object v7, v7, v11

    invoke-virtual {v4, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v9, "name"

    invoke-static {v8}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v11

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    const-string v2, "name"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_7

    const-string v1, "HttpDownload"

    const-string v2, "[WARNING] You are using a LanguagePack with version -1. This should not be used in production."

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "version"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "latestVersion"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v4

    :cond_8
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "preinstalled zip contains .config, but it isn\'t JSON"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->e:J

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/touchtype_fluency/util/HttpDownload$2;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/HttpDownload$2;-><init>(Lcom/touchtype_fluency/util/HttpDownload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createDigest(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/security/DigestInputStream;

    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    :cond_0
    invoke-virtual {v0, v1}, Ljava/security/DigestInputStream;->read([B)I
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v0}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    :try_start_3
    invoke-static {}, Ljunit/framework/Assert;->fail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catchall_3
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method

.method public static digestToString([B)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    array-length v4, p0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, p0, v0

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-virtual {v3, v6, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->b:Z

    return v0
.end method

.method public download(Ljava/net/URL;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->downloadIfEtagChanged(Ljava/net/URL;Ljava/lang/String;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-result-object v0

    return-object v0
.end method

.method public downloadGzip(Ljava/net/URL;Ljava/io/File;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid protocol specified: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_0
    :try_start_1
    const-string v5, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Runtime exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v5, "Download interrupted or timed out"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    iget-object v5, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v1, :cond_c

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :cond_2
    invoke-virtual {p3, v8, v9, v8}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    throw v0

    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip,deflate"

    invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    :try_start_3
    new-instance v3, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v3, v4}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload$a;

    iget-object v5, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v5

    invoke-direct {v0, p0, p3, v5, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    invoke-static {p2}, Lorg/apache/commons/io/FileUtils;->openOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :cond_8
    invoke-virtual {p3, v8, v9, v8}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V

    return-void

    :cond_9
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_a
    :try_start_6
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_b

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_b
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catch_1
    move-exception v0

    :try_start_7
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_d
    :try_start_8
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v1, :cond_e

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_e
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :catch_2
    move-exception v0

    :try_start_9
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_4
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v2, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method public downloadIfEtagChanged(Ljava/net/URL;Ljava/lang/String;)Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sending HTTP request to: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    const-string v1, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Runtime exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Download interrupted or timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v1, :cond_9

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_2
    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    const-string v1, "Cache-Control"

    const-string v3, "public"

    invoke-virtual {v0, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_4

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    const-string v3, "If-None-Match"

    invoke-virtual {v1, v3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v1, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string v3, "ETag"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v3, v1

    :goto_3
    const-string v1, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ETag from server:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    sparse-switch v4, :sswitch_data_0

    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected response: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    :goto_4
    iget-object v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_5
    new-instance v0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    :sswitch_0
    :try_start_3
    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Downloading: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    :try_start_4
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v1, v6}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v2

    goto :goto_4

    :sswitch_1
    :try_start_5
    const-string v0, "HttpDownload"

    const-string v1, "File not modified - no download performed"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v2

    goto :goto_4

    :cond_7
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_8
    :try_start_6
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_7
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_a
    :try_start_8
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v6}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Writer;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_1

    :catch_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    move-object v3, v2

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
    .end sparse-switch
.end method

.method public downloadToFile(Ljava/net/URL;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "HttpDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Downloading: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    :try_start_1
    const-string v3, "HttpDownload"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Runtime exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v3, "Download interrupted or timed out"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_2
    throw v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v3

    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, v3, v1, v0}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_3
    return-void

    :cond_4
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_5
    :try_start_5
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :catchall_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_0

    :catch_4
    move-exception v0

    move-object v2, v3

    goto/16 :goto_0
.end method

.method public downloadZip(Ljava/net/URL;Ljava/io/File;Ljava/lang/String;Lcom/touchtype_fluency/util/ProgressListener;)Ljava/util/Vector;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/touchtype_fluency/util/ProgressListener;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/security/DigestException;
        }
    .end annotation

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_1
    const-string v2, "HttpDownload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Downloading and uncompressing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to create destination folders: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->c()V

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v5, "file"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-result-wide v6

    long-to-int v2, v6

    move-object v7, v5

    move v6, v2

    :goto_0
    :try_start_2
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v2, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_3
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :catch_0
    move-exception v2

    move-object v5, v7

    move-object v13, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v13

    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v4, :cond_14

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_14

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_2
    invoke-virtual {v2}, Ljava/security/DigestInputStream;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/util/HttpDownload;->digestToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    new-instance v4, Ljava/security/DigestException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Mismatching checksums: calculated("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), json("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "), "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    :try_start_4
    const-string v5, "https"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/net/URL;)V

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v2, :cond_5

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :catch_1
    move-exception v2

    move-object v5, v6

    move-object v13, v3

    move-object v3, v4

    move-object v4, v2

    move-object v2, v13

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    instance-of v2, v2, Ljava/net/HttpURLConnection;

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    check-cast v2, Ljava/net/HttpURLConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    move-result v2

    move-object v7, v5

    move v6, v2

    goto/16 :goto_0

    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "Invalid protocol specified: "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catch_2
    move-exception v2

    move-object v5, v4

    move-object v7, v6

    :goto_3
    :try_start_7
    const-string v4, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Runtime exception: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/IOException;

    const-string v4, "Download interrupted or timed out"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v2

    :goto_4
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v3, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v3, :cond_16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :goto_5
    throw v2

    :cond_8
    if-nez v6, :cond_9

    :try_start_8
    const-string v2, "HttpDownload"

    const-string v5, "File downloaded has zero bytes or download target is empty (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/touchtype_fluency/util/HttpDownload;->c:Ljava/net/URLConnection;

    invoke-virtual {v10}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v10

    aput-object v10, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    move-object v2, v3

    move-object v3, v4

    :goto_6
    iget-object v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->d:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    iget-boolean v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v4, :cond_12

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    goto/16 :goto_2

    :cond_9
    :try_start_9
    new-instance v5, Lorg/apache/commons/io/input/CountingInputStream;

    invoke-direct {v5, v7}, Lorg/apache/commons/io/input/CountingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_a
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :try_start_a
    new-instance v2, Ljava/security/DigestInputStream;

    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    new-instance v3, Ljava/util/zip/ZipInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v9, Lcom/touchtype_fluency/util/HttpDownload$a;

    move-object/from16 v0, p4

    invoke-direct {v9, p0, v0, v6, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;-><init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V

    :goto_7
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-boolean v6, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v6, :cond_a

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :catch_3
    move-exception v3

    move-object v4, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v11

    if-nez v11, :cond_c

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid path specified in file "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_4
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    goto :goto_7

    :catchall_1
    move-exception v3

    move-object v13, v3

    move-object v3, v2

    move-object v2, v13

    goto/16 :goto_4

    :cond_d
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "HttpDownload"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to create parent directory for file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-boolean v4, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    if-nez v4, :cond_f

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    new-instance v3, Ljava/lang/InterruptedException;

    invoke-direct {v3}, Ljava/lang/InterruptedException;-><init>()V

    throw v3

    :cond_10
    const-string v4, "HttpDownload"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Decompressing file: "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v6, 0x0

    :try_start_c
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-direct {p0, v3, v4, v9}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :try_start_e
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    goto/16 :goto_7

    :catchall_2
    move-exception v3

    move-object v4, v6

    :goto_8
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v3

    :cond_11
    new-instance v4, Lorg/apache/commons/io/output/NullOutputStream;

    invoke-direct {v4}, Lorg/apache/commons/io/output/NullOutputStream;-><init>()V

    invoke-direct {p0, v2, v4, v9}, Lcom/touchtype_fluency/util/HttpDownload;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/touchtype_fluency/util/HttpDownload$a;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-object v3, v5

    goto/16 :goto_6

    :cond_12
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_13
    :try_start_f
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    :catch_5
    move-exception v4

    :try_start_10
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :catchall_3
    move-exception v4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    :cond_14
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_15
    :try_start_11
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_2

    :catch_6
    move-exception v4

    :try_start_12
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :catchall_4
    move-exception v4

    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v4

    :cond_16
    new-instance v2, Ljava/lang/InterruptedException;

    invoke-direct {v2}, Ljava/lang/InterruptedException;-><init>()V

    throw v2

    :cond_17
    :try_start_13
    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_5

    :catch_7
    move-exception v2

    :try_start_14
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_5
    move-exception v2

    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v5}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v7}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v2

    :cond_18
    const-string v2, ".config"

    invoke-virtual {v8, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-object v8

    :catchall_6
    move-exception v2

    move-object v5, v4

    move-object v7, v6

    goto/16 :goto_4

    :catchall_7
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_4

    :catchall_8
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_4

    :catchall_9
    move-exception v2

    move-object v5, v4

    goto/16 :goto_4

    :catchall_a
    move-exception v4

    move-object v7, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_4

    :catch_8
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_3

    :catch_9
    move-exception v2

    move-object v7, v5

    move-object v5, v4

    goto/16 :goto_3

    :catch_a
    move-exception v2

    move-object v5, v4

    goto/16 :goto_3

    :catch_b
    move-exception v2

    goto/16 :goto_3

    :catch_c
    move-exception v2

    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v13

    goto/16 :goto_1

    :catch_d
    move-exception v2

    move-object v4, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    goto/16 :goto_1

    :catchall_b
    move-exception v3

    goto/16 :goto_8
.end method

.method public interrupt()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/touchtype_fluency/util/HttpDownload;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->f:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public isInterrupted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/HttpDownload;->a:Z

    return v0
.end method

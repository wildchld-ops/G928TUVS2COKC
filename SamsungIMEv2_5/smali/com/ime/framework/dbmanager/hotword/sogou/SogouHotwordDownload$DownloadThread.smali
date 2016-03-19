.class Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;
.super Ljava/lang/Thread;
.source "SogouHotwordDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private CONNECT_TIME_OUT:I

.field private READ_TIME_OUT:I

.field private mDownloadURL:Ljava/lang/String;

.field private mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field private mbUpdating:Z

.field final synthetic this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;


# direct methods
.method public constructor <init>(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 2

    const/16 v1, 0x7530

    iput-object p1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v0, ""

    iput-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    iput v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->CONNECT_TIME_OUT:I

    iput v1, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->READ_TIME_OUT:I

    iput-object p2, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    return-void
.end method

.method private connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    iget v4, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->CONNECT_TIME_OUT:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->READ_TIME_OUT:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "Accept-Encoding"

    const-string v5, "identity"

    invoke-virtual {v3, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private disCurrentConnection()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDownloading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    return v0
.end method

.method public run()V
    .locals 20

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mDownloadURL:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    new-instance v13, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    move-object/from16 v17, v0

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "rw"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v11

    move-wide/from16 v18, v0

    :try_start_1
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v7, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v10, v0, :cond_0

    const/16 v17, 0xce

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    :cond_0
    const/4 v2, 0x0

    const/16 v15, 0x400

    new-array v2, v15, [B

    const/4 v3, 0x0

    new-instance v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    const-string v17, "225-hotwords-SogouCN"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    move/from16 v17, v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v17, :cond_8

    const/16 v8, 0x9

    :cond_2
    move-object v12, v13

    move-object v6, v7

    :cond_3
    :goto_1
    if-eqz v12, :cond_4

    :try_start_3
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    :goto_4
    if-eqz v8, :cond_6

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    move-object/from16 v17, v0

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v17

    if-nez v17, :cond_6

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    new-instance v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    const-string v17, "225-hotwords-SogouCN"

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    move-object/from16 v17, v0

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;->fileName:Ljava/lang/String;

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8, v4}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    return-void

    :cond_8
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v13, v2, v0, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v14, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->this$0:Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;

    move-object/from16 v17, v0

    # getter for: Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->mFileName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;->access$000(Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;->fileName:Ljava/lang/String;

    mul-int/lit8 v17, v14, 0x64

    div-int v17, v17, v9

    move/from16 v0, v17

    iput v0, v4, Lcom/ime/framework/dbmanager/DbDownloadInfo;->percent:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object v12, v13

    move-object v6, v7

    :goto_5
    const/4 v8, 0x6

    :try_start_6
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v12, :cond_9

    :try_start_7
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_9
    :goto_6
    if-eqz v6, :cond_a

    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_a
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    goto/16 :goto_4

    :cond_b
    const/4 v8, 0x6

    move-object v12, v13

    move-object v6, v7

    goto/16 :goto_1

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_4
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_0
    move-exception v17

    :goto_8
    if-eqz v12, :cond_c

    :try_start_9
    invoke-virtual {v12}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_c
    :goto_9
    if-eqz v6, :cond_d

    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_d
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->disCurrentConnection()V

    throw v17

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_6
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_1
    move-exception v17

    move-object v12, v13

    goto :goto_8

    :catchall_2
    move-exception v17

    move-object v12, v13

    move-object v6, v7

    goto :goto_8

    :catch_7
    move-exception v5

    goto :goto_5

    :catch_8
    move-exception v5

    move-object v12, v13

    goto :goto_5
.end method

.method public startDownload()V
    .locals 1

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    return-void
.end method

.method public stopDownload()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mbUpdating:Z

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/hotword/sogou/SogouHotwordDownload$DownloadThread;->mNotifier:Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    const/16 v1, 0x9

    new-instance v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    const-string v3, "225-hotwords-SogouCN"

    invoke-direct {v2, v3}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

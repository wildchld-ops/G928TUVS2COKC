.class Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;
.super Ljava/lang/Thread;
.source "CloudLinkProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/databases/CloudLinkProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field private CONNECT_TIME_OUT:I

.field private READ_TIME_OUT:I

.field private mDownloadURL:Ljava/lang/String;

.field private mURLConnection:Ljava/net/HttpURLConnection;

.field final synthetic this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0x1388

    iput-object p1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mDownloadURL:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->CONNECT_TIME_OUT:I

    iput v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->READ_TIME_OUT:I

    iput-object p2, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mDownloadURL:Ljava/lang/String;

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

    iget v4, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->CONNECT_TIME_OUT:I

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v4, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->READ_TIME_OUT:I

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

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method private sendMessage(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$200(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    move-result-object v1

    if-ne v1, p0, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mUIhandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$100(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v9, ""

    :try_start_0
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mDownloadURL:Ljava/lang/String;

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->connectURL(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    if-nez v12, :cond_1

    const-string v12, "CloudLinkProvider"

    const-string v13, "URL connection is null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x49

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    if-eqz v1, :cond_2

    const-string v12, "application/octet-stream"

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-nez v6, :cond_4

    :cond_2
    const-string v12, "CloudLinkProvider"

    const-string v13, "content has problem"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x49

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_4
    new-instance v5, Ljava/io/BufferedInputStream;

    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->mURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v12, 0xc8

    if-eq v7, v12, :cond_5

    const/16 v12, 0xce

    if-ne v7, v12, :cond_d

    :cond_5
    const/4 v0, 0x0

    move v10, v6

    new-array v0, v10, [B

    invoke-virtual {v5, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    const/4 v12, 0x0

    const-string v13, "GB2312"

    invoke-static {v0, v12, v8, v13}, Lorg/apache/http/util/EncodingUtils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "\n\n"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v9}, Lcom/ime/implement/setting/Constants;->isSensitiveWords(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_7
    const/16 v12, 0x49

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V

    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    move-object v4, v5

    goto/16 :goto_1

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_9
    :try_start_7
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # getter for: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mDownloadThread:Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;
    invoke-static {v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$200(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;)Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;

    move-result-object v12

    if-ne v12, p0, :cond_b

    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # invokes: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mergeWithLocal(Ljava/lang/String;)V
    invoke-static {v12, v9}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$300(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V

    sget-boolean v12, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v12, :cond_a

    const-string v12, "CloudLinkProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "cloud data is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    iput-object v9, v12, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->mCandidate:Ljava/lang/String;

    const/16 v12, 0x4a

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V

    :cond_b
    iget-object v12, p0, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->this$0:Lcom/sec/android/inputmethod/databases/CloudLinkProvider;

    # invokes: Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->addToCloudQueue(Ljava/lang/String;)V
    invoke-static {v12, v9}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider;->access$400(Lcom/sec/android/inputmethod/databases/CloudLinkProvider;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_4
    if-eqz v5, :cond_c

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_c
    :goto_5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    move-object v4, v5

    goto/16 :goto_1

    :cond_d
    :try_start_9
    const-string v12, "CloudLinkProvider"

    const-string v13, "http Respose isn\'t ok"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v12, 0x49

    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v2

    move-object v4, v5

    :goto_6
    const/16 v12, 0x49

    :try_start_a
    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v4, :cond_e

    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_e
    :goto_7
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    goto/16 :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catch_6
    move-exception v2

    :goto_8
    const/16 v12, 0x49

    :try_start_c
    invoke-direct {p0, v12}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->sendMessage(I)V

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v4, :cond_f

    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    :cond_f
    :goto_9
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    goto/16 :goto_1

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception v12

    :goto_a
    if-eqz v4, :cond_10

    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :cond_10
    :goto_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/databases/CloudLinkProvider$DownloadThread;->disCurrentConnection()V

    throw v12

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    :catchall_1
    move-exception v12

    move-object v4, v5

    goto :goto_a

    :catch_9
    move-exception v2

    move-object v4, v5

    goto :goto_8

    :catch_a
    move-exception v2

    goto :goto_6
.end method

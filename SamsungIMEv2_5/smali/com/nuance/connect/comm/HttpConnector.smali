.class public Lcom/nuance/connect/comm/HttpConnector;
.super Lcom/nuance/connect/comm/Connector;


# static fields
.field private static final DEFAULT_READ_TIMEOUT:I = 0x78

.field private static final HTTP_INVALID_RANGE:I = 0x1a0


# instance fields
.field private delayTimeoutSeconds:I

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private serverURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/Connector;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const/16 v0, 0x78

    iput v0, p0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    return-void
.end method

.method static synthetic access$000(Lcom/nuance/connect/comm/HttpConnector;)Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method


# virtual methods
.method public processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    .locals 35

    const/16 v24, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v4}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->mark()V

    const/4 v12, 0x1

    const-string v11, ""

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->start()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/nuance/connect/comm/HttpConnector;->connectToUrl(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_29
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_26
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v18

    :try_start_1
    new-instance v4, Lcom/nuance/connect/comm/HttpConnector$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/nuance/connect/comm/HttpConnector$1;-><init>(Lcom/nuance/connect/comm/HttpConnector;Ljava/net/HttpURLConnection;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->setExpirer(Ljava/lang/Runnable;)V

    const-string v4, "http.keepAlive"

    const-string v5, "false"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nuance/connect/comm/HttpConnector;->delayTimeoutSeconds:I

    :goto_0
    if-gtz v4, :cond_0

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getRequestType()Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    move-result-object v5

    sget-object v6, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->USER:Lcom/nuance/connect/comm/Command$REQUEST_TYPE;

    invoke-virtual {v5, v6}, Lcom/nuance/connect/comm/Command$REQUEST_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_0
    :goto_1
    mul-int/lit16 v4, v4, 0x3e8

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v8, Ljava/io/File;

    invoke-interface/range {p2 .. p2}, Lcom/nuance/connect/comm/Transaction;->getDownloadFile()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2a
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_21
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_17

    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v14

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-lez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Seeking to: "

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v4, "Range"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bytes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2e
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_28
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_25
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_22
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_18

    :cond_2
    move-object v13, v8

    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/comm/HttpConnector;->allowsOutput()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] processCommand()  URL: ["

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    const-string v9, "]"

    invoke-interface/range {v4 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->method:Ljava/lang/String;

    const-string v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] PUT request "

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_c

    new-instance v4, Ljava/io/IOException;

    const-string v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19

    :catch_0
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "] processCommand() - send - SSLException "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v11, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move v13, v9

    move v14, v11

    move-object/from16 v21, v12

    move v12, v5

    move-object v11, v4

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    if-nez v14, :cond_3c

    :try_start_4
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] serverConn.getResponseCode("

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ") command: "

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v15, :sswitch_data_0

    const/4 v14, 0x1

    const/4 v12, 0x2

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    move-result-object v11

    :cond_5
    :goto_4
    :sswitch_0
    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    :goto_5
    new-instance v30, Lcom/nuance/connect/comm/Response;

    invoke-direct/range {v30 .. v30}, Lcom/nuance/connect/comm/Response;-><init>()V

    if-nez v23, :cond_3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v25, 0x0

    :try_start_5
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    const-string v6, "Content-Range"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/high16 v6, -0x80000000

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    int-to-long v14, v9

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v14, v15}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/comm/Command;J)V

    if-eqz v9, :cond_1f

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "json"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1f

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-result-object v14

    :try_start_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v13, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v14, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v13, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :goto_6
    :try_start_7
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1b

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v6

    move-object/from16 v7, v25

    move-object v8, v13

    move-object v9, v14

    :goto_7
    if-eqz v7, :cond_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    :cond_8
    throw v6
    :try_end_8
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_15
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_13

    :catch_1
    move-exception v4

    move/from16 v6, v24

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - receive - SSLException "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x1

    const/16 v22, 0x1

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    move v14, v5

    move v15, v6

    :goto_9
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v21, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "command canceled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V

    :goto_a
    if-nez v15, :cond_39

    const/4 v4, 0x1

    :goto_b
    return v4

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x78

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v5, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v5, v6}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "X-Swype-Connect"

    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19

    move-result-wide v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v7

    :try_start_b
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    move-object/from16 v0, v19

    invoke-direct {v5, v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_e

    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :goto_c
    if-ltz v4, :cond_e

    invoke-virtual {v7, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    goto :goto_c

    :cond_e
    invoke-virtual {v7}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_f

    if-eqz v7, :cond_f

    :try_start_d
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] sendingFile() --- "

    invoke-interface {v4, v5, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide v4, v8

    :goto_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->connect()V

    move-object/from16 v20, v13

    move-object/from16 v21, v18

    move/from16 v13, v16

    move-wide/from16 v18, v14

    move/from16 v14, v17

    goto/16 :goto_3

    :catchall_1
    move-exception v4

    move-object/from16 v34, v6

    move-object v6, v5

    move-object/from16 v5, v34

    :goto_e
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_11
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    :cond_12
    throw v4
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19

    :catch_2
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - ProtocolException "

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :cond_13
    :try_start_e
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_17

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    if-eqz v4, :cond_17

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nuance/connect/comm/Command;->sendFileLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_14

    new-instance v4, Ljava/io/IOException;

    const-string v5, "File does not exists!"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_e
    .catch Ljavax/net/ssl/SSLException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_19

    :catch_3
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - URISyntaxException "

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :cond_14
    const/4 v5, 0x1

    :try_start_f
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v5, "Content-Type"

    const-string v6, "text/json"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_f
    .catch Ljavax/net/ssl/SSLException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_19

    move-result-object v19

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v20, 0x0

    :try_start_10
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    :try_start_11
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    :try_start_12
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    :cond_15
    :goto_11
    if-ltz v4, :cond_16

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v7

    int-to-long v0, v7

    move-wide/from16 v22, v0

    rem-long v22, v20, v22

    const-wide/16 v26, 0x0

    cmp-long v7, v22, v26

    if-nez v7, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_11

    :catchall_2
    move-exception v4

    :goto_12
    :try_start_13
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    throw v4
    :try_end_13
    .catch Ljavax/net/ssl/SSLException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_19

    :catch_4
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - MalformedURLException "

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :cond_16
    :try_start_14
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :try_start_15
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    move-wide v4, v8

    goto/16 :goto_d

    :cond_17
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v4, :cond_3d

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v4

    int-to-long v0, v5

    move-wide/from16 v20, v0

    array-length v5, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/nuance/connect/comm/HttpConnector;->shouldCompress(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Compressing Content"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_15
    .catch Ljavax/net/ssl/SSLException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_19

    move-result-object v7

    const/4 v6, 0x0

    :try_start_16
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v5, v7, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :try_start_17
    invoke-virtual {v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    if-eqz v5, :cond_18

    :try_start_18
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_18
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] sendingBody() --- "

    const-string v9, " --- "

    move-object v8, v10

    invoke-interface/range {v4 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v4, v20

    goto/16 :goto_d

    :catchall_3
    move-exception v4

    move-object v5, v6

    :goto_15
    if-eqz v5, :cond_19

    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_19
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    throw v4
    :try_end_18
    .catch Ljavax/net/ssl/SSLException; {:try_start_18 .. :try_end_18} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_18} :catch_4
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19

    :catch_5
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    :goto_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v13, "] processCommand() - send - IOException "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v11, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    const/4 v9, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move v13, v9

    move v14, v11

    move-object/from16 v21, v12

    move v12, v5

    move-object v11, v4

    goto/16 :goto_3

    :cond_1a
    :try_start_19
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljavax/net/ssl/SSLException; {:try_start_19 .. :try_end_19} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_14

    :catch_6
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - NullPointerException "

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :catch_7
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - RuntimeException "

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x5

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :catch_8
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    :goto_19
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "] processCommand() - send - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v9, v12, v13, v14}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move v12, v5

    move-wide/from16 v18, v6

    move-object/from16 v20, v8

    move/from16 v13, v16

    move v14, v9

    move-object/from16 v21, v11

    move-object v11, v4

    goto/16 :goto_3

    :sswitch_1
    const/4 v13, 0x1

    const/4 v12, 0x7

    :try_start_1a
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_4

    :sswitch_2
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-gtz v4, :cond_5

    const/4 v13, 0x1

    const/16 v12, 0x8

    goto/16 :goto_4

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "HTTP_INVALID_RANGE the file may already be downloaded"

    invoke-interface {v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_1a
    .catch Ljavax/net/ssl/SSLException; {:try_start_1a .. :try_end_1a} :catch_9
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    goto/16 :goto_4

    :catch_9
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "] SSLException trying to get response code "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v12, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_5

    :catch_a
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "] IOException trying to get response code "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v12, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_5

    :catch_b
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "] NPE trying to get response code "

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x1

    const/4 v12, 0x2

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_5

    :catch_c
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "] Exception trying to get response code "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x1

    const/4 v12, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_5

    :cond_1b
    :try_start_1b
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " JSON response begin"

    invoke-interface/range {v6 .. v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " JSON response:"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v6 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z

    move-result v24

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " JSON response finish"

    invoke-interface/range {v6 .. v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object v8, v13

    move-object v7, v14

    move/from16 v6, v24

    :goto_1a
    if-eqz v25, :cond_1c

    :try_start_1c
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedOutputStream;->close()V

    :cond_1c
    if-eqz v7, :cond_1d

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1d
    if-eqz v8, :cond_1e

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljavax/net/ssl/SSLException; {:try_start_1c .. :try_end_1c} :catch_16
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_10
    .catch Lcom/nuance/connect/comm/TransactionException; {:try_start_1c .. :try_end_1c} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_12

    :cond_1e
    move-object v13, v4

    move v14, v5

    move v15, v6

    goto/16 :goto_9

    :cond_1f
    if-eqz v9, :cond_21

    :try_start_1d
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "protobuff"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_6

    move-result-object v13

    :try_start_1e
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v12, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    :try_start_1f
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x800

    invoke-direct {v14, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_1b
    invoke-virtual {v13, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_20

    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1b

    :catchall_4
    move-exception v6

    move-object/from16 v7, v25

    move-object v8, v12

    move-object v9, v13

    goto/16 :goto_7

    :cond_20
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " protobuff response"

    invoke-interface/range {v6 .. v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v6}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    move-result v24

    move-object v8, v12

    move-object v7, v13

    move/from16 v6, v24

    goto/16 :goto_1a

    :cond_21
    :try_start_20
    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "text/plain"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_23

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    move-result-object v13

    :try_start_21
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v13, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v12, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :goto_1c
    :try_start_22
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :catchall_5
    move-exception v6

    move-object/from16 v7, v25

    move-object v8, v12

    move-object v9, v13

    goto/16 :goto_7

    :cond_22
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " text/plain response"

    invoke-interface/range {v6 .. v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "status: "

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v5}, Lcom/nuance/connect/comm/HttpConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;I)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    move-result v24

    move-object v8, v12

    move-object v7, v13

    move/from16 v6, v24

    goto/16 :goto_1a

    :cond_23
    if-gtz v9, :cond_24

    const/4 v12, -0x1

    if-ne v9, v12, :cond_31

    :cond_24
    :try_start_23
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v12

    if-eqz v12, :cond_31

    const-wide/16 v12, 0x0

    cmp-long v12, v18, v12

    if-lez v12, :cond_25

    if-eqz v11, :cond_25

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_6

    move-result v12

    if-eqz v12, :cond_25

    :try_start_24
    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_24} :catch_e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    move-result v6

    :cond_25
    :goto_1d
    const-wide/16 v12, 0x0

    cmp-long v11, v18, v12

    if-lez v11, :cond_27

    int-to-long v12, v9

    cmp-long v11, v18, v12

    if-eqz v11, :cond_26

    int-to-long v12, v6

    cmp-long v6, v18, v12

    if-nez v6, :cond_27

    :cond_26
    :try_start_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Download already complete!"

    invoke-interface {v6, v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    move-object v9, v7

    move-object/from16 v7, v25

    :goto_1e
    :try_start_26
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/connect/comm/HttpConnector;->processFileResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    move-object/from16 v25, v7

    move/from16 v6, v24

    move-object v7, v9

    goto/16 :goto_1a

    :catch_d
    move-exception v11

    :try_start_27
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "Invalid range to get total from. NFE"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1d

    :catchall_6
    move-exception v6

    move-object v9, v7

    move-object/from16 v7, v25

    goto/16 :goto_7

    :catch_e
    move-exception v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "Invalid range to get total from. NPE"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1d

    :catch_f
    move-exception v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "Invalid substring?"

    invoke-interface {v11, v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto :goto_1d

    :cond_27
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    move/from16 v31, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    move-wide/from16 v0, v18

    long-to-int v6, v0

    add-int v32, v9, v6

    div-int/lit8 v33, v32, 0x64

    const-wide/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v12, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "] Downloading file now. total size is: ["

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v16, "]["

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "] "

    move-object/from16 v19, v10

    invoke-interface/range {v11 .. v19}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-nez v20, :cond_28

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v6}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/nuance/connect/comm/Transaction;->createDownloadFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_28
    new-instance v9, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v21 .. v21}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v9, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    :try_start_28
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    move-object/from16 v0, v20

    invoke-direct {v6, v0, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_a

    const/4 v6, 0x0

    move-wide/from16 v10, v26

    move/from16 v12, v28

    move/from16 v13, v29

    :goto_1f
    if-nez v6, :cond_30

    :try_start_29
    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v14, :cond_29

    new-instance v6, Ljava/io/IOException;

    const-string v10, "download canceled"

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :catchall_7
    move-exception v6

    goto/16 :goto_7

    :cond_29
    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2a

    invoke-virtual {v7, v14}, Ljava/io/BufferedOutputStream;->write(I)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v34, v6

    move v6, v12

    move/from16 v12, v34

    :goto_20
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v14

    if-eqz v14, :cond_2b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v10, "network timed out"

    invoke-interface {v6, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    new-instance v6, Ljava/io/IOException;

    const-string v10, "timeout occurred"

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2a
    const/4 v6, 0x1

    move/from16 v34, v6

    move v6, v12

    move/from16 v12, v34

    goto :goto_20

    :cond_2b
    if-eqz v31, :cond_2d

    if-nez v12, :cond_2c

    move/from16 v0, v33

    if-lt v6, v0, :cond_2d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    const-wide/16 v16, 0x1f4

    cmp-long v14, v14, v16

    if-lez v14, :cond_2d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v6, v0, v13, v1}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :cond_2d
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->getInterval()I

    move-result v14

    rem-int v14, v13, v14

    if-nez v14, :cond_2e

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/connect/comm/HttpConnector;->connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    invoke-interface {v14}, Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;->isConnected()Z

    move-result v14

    if-nez v14, :cond_2f

    new-instance v6, Ljava/io/IOException;

    const-string v10, "Connection lost"

    invoke-direct {v6, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2f
    move/from16 v34, v12

    move v12, v6

    move/from16 v6, v34

    goto/16 :goto_1f

    :cond_30
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    goto/16 :goto_1e

    :cond_31
    if-gtz v9, :cond_32

    const/4 v6, -0x1

    if-ne v9, v6, :cond_33

    :cond_32
    :try_start_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/nuance/connect/comm/HttpConnector;->hasSufficientSpace(I)Z

    move-result v6

    if-nez v6, :cond_33

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/nuance/connect/comm/Command;->notifyDownloadStatus:Z

    if-eqz v6, :cond_3a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/4 v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v10, v9}, Lcom/nuance/connect/comm/ConnectorCallback;->onDownloadStatus(Lcom/nuance/connect/comm/Command;II)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    move/from16 v6, v24

    goto/16 :goto_1a

    :cond_33
    const/16 v23, 0x1

    move/from16 v6, v24

    goto/16 :goto_1a

    :catch_10
    move-exception v5

    :goto_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "] processCommand() - receive - IOException "

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v8, v9, v10, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x1

    const/16 v22, 0x1

    const/4 v5, 0x2

    move-object v13, v4

    move v14, v5

    move v15, v6

    goto/16 :goto_9

    :catch_11
    move-exception v7

    :goto_22
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v9, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "] processCommand() - receive - TransactionException "

    invoke-virtual {v7}, Lcom/nuance/connect/comm/TransactionException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v9, v10, v11, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x1

    const/16 v22, 0x0

    move-object v13, v4

    move v14, v5

    move v15, v6

    goto/16 :goto_9

    :catch_12
    move-exception v4

    :goto_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - receive - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v8, v9, v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v23, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    move v14, v5

    move v15, v6

    goto/16 :goto_9

    :cond_34
    if-nez v23, :cond_35

    if-nez v15, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "command processed successfully: "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v7, "/"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/comm/Command;)V

    goto/16 :goto_a

    :cond_35
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v4

    if-nez v4, :cond_36

    if-eqz v22, :cond_37

    :cond_36
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->handleIOException:Z

    if-nez v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "ioException processing command, command is requesting to handle ioException: "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v7, "/"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    const-string v9, " ioException: "

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v11, " expirer.isExpired(): "

    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface/range {v4 .. v12}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v14, v13}, Lcom/nuance/connect/comm/ConnectorCallback;->onIOException(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, v30

    iget v5, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v5, v14, v13}, Lcom/nuance/connect/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "callback is requesting retry of command: "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v7, "/"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "command process failed: "

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    const-string v7, "/"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->v(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0, v14, v13}, Lcom/nuance/connect/comm/ConnectorCallback;->onFailure(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_a

    :cond_39
    const/4 v4, 0x0

    goto/16 :goto_b

    :catch_13
    move-exception v4

    move/from16 v6, v24

    goto/16 :goto_23

    :catch_14
    move-exception v6

    move-object v7, v6

    move/from16 v6, v24

    goto/16 :goto_22

    :catch_15
    move-exception v5

    move/from16 v6, v24

    goto/16 :goto_21

    :catch_16
    move-exception v4

    goto/16 :goto_8

    :catchall_8
    move-exception v6

    move-object/from16 v7, v25

    move-object v9, v14

    goto/16 :goto_7

    :catchall_9
    move-exception v6

    move-object/from16 v7, v25

    move-object v9, v13

    goto/16 :goto_7

    :catchall_a
    move-exception v6

    move-object/from16 v7, v25

    goto/16 :goto_7

    :catch_17
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_19

    :catch_18
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_19

    :catch_19
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_19

    :catch_1a
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_18

    :catch_1b
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_18

    :catch_1c
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_18

    :catch_1d
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_17

    :catch_1e
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_17

    :catch_1f
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_17

    :catch_20
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    goto/16 :goto_16

    :catch_21
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    goto/16 :goto_16

    :catch_22
    move-exception v4

    move-wide v6, v14

    move-object/from16 v12, v18

    goto/16 :goto_16

    :catch_23
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_13

    :catch_24
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_13

    :catch_25
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_13

    :catch_26
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_10

    :catch_27
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_10

    :catch_28
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_10

    :catch_29
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_f

    :catch_2a
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v11, v18

    goto/16 :goto_f

    :catch_2b
    move-exception v4

    move-wide v6, v14

    move-object/from16 v11, v18

    goto/16 :goto_f

    :catch_2c
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    goto/16 :goto_2

    :catch_2d
    move-exception v4

    move-wide v6, v14

    move-object v8, v13

    move-object/from16 v12, v18

    goto/16 :goto_2

    :catch_2e
    move-exception v4

    move-wide v6, v14

    move-object/from16 v12, v18

    goto/16 :goto_2

    :catchall_b
    move-exception v4

    goto/16 :goto_15

    :catchall_c
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_12

    :catchall_d
    move-exception v4

    move-object v6, v7

    goto/16 :goto_12

    :catchall_e
    move-exception v4

    move-object v5, v6

    move-object v6, v7

    goto/16 :goto_e

    :catchall_f
    move-exception v4

    move-object v6, v7

    goto/16 :goto_e

    :cond_3a
    move/from16 v6, v24

    goto/16 :goto_1a

    :cond_3b
    move-object v13, v4

    move v14, v5

    move/from16 v15, v24

    goto/16 :goto_9

    :cond_3c
    move-object v4, v11

    move v5, v12

    move/from16 v22, v13

    move/from16 v23, v14

    goto/16 :goto_5

    :cond_3d
    move-wide v4, v8

    goto/16 :goto_d

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_2
        0x193 -> :sswitch_1
        0x196 -> :sswitch_1
        0x1a0 -> :sswitch_3
    .end sparse-switch
.end method

.method public setServerURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/HttpConnector;->serverURL:Ljava/lang/String;

    return-void
.end method

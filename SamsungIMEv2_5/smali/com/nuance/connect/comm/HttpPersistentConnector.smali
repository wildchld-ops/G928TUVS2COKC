.class public Lcom/nuance/connect/comm/HttpPersistentConnector;
.super Lcom/nuance/connect/comm/Connector;


# instance fields
.field private MAX_ERROR_BODY_SIZE:I

.field private connected:Z

.field private connectionTimeoutMillis:I

.field private getErrorBody:Z

.field private log:Lcom/nuance/connect/util/Logger$Log;

.field private persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

.field private readTimeoutMillis:I


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nuance/connect/comm/Connector;-><init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;)V

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    iput-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    iput-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->getErrorBody:Z

    iput v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectionTimeoutMillis:I

    iput v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->readTimeoutMillis:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->MAX_ERROR_BODY_SIZE:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setCompressionThreshold(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->getErrorBody:Z

    return-void
.end method

.method private connectToUrl()Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v7, Ljava/net/URL;

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectToUrl url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v7}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1
.end method


# virtual methods
.method public connect()V
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "connect - unable to connect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected declared-synchronized createConnection()Ljava/net/HttpURLConnection;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "createConnection called"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "createConnection -- creating new connection"

    invoke-interface {v0, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectToUrl()Ljava/net/HttpURLConnection;

    move-result-object v0

    const-string v2, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectionTimeoutMillis:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->readTimeoutMillis:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->allowsOutput()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "POST"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    iget-object v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Error Creating Connection: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "HttpPersistentConnector disconnect"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-void
.end method

.method protected isConnected()Z
    .locals 3

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "isConnected() - "

    iget-boolean v2, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    return v0
.end method

.method public processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
    .locals 20

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->shortString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v4}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->mark()V

    const/4 v12, 0x1

    const-string v11, ""

    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v4, :cond_6

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download canceled"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :catch_0
    move-exception v4

    move-object v8, v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "] processCommand() - send - SSLException "

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v7, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move-object v15, v8

    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->tick()V

    if-nez v14, :cond_15

    :try_start_1
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] serverConn.getResponseCode("

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, ") command: "

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sparse-switch v17, :sswitch_data_0

    const/4 v14, 0x1

    const/4 v12, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v11

    :cond_0
    :goto_2
    :sswitch_0
    move-object v4, v11

    move v5, v12

    :goto_3
    new-instance v18, Lcom/nuance/connect/comm/Response;

    invoke-direct/range {v18 .. v18}, Lcom/nuance/connect/comm/Response;-><init>()V

    const/4 v6, -0x1

    move-object/from16 v0, v18

    iput v6, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I

    if-nez v14, :cond_c

    const/16 v17, 0x0

    :try_start_2
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    move/from16 v0, v19

    int-to-long v8, v0

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v8, v9}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeResponse(Lcom/nuance/connect/comm/Command;J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] "

    const-string v11, " Response Content Type: "

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v6 .. v12}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v19, :cond_14

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v7, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v7, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v6, v7}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    const/16 v8, 0x400

    :try_start_3
    new-array v8, v8, [B

    :goto_4
    invoke-virtual {v6, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_b

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v6, :cond_2

    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v5
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    :catch_1
    move-exception v4

    move/from16 v6, v16

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v5, 0x4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_7
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->complete()V

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v7, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onCancel(Lcom/nuance/connect/comm/Command;)V

    :cond_5
    :goto_8
    if-nez v6, :cond_13

    const/4 v4, 0x1

    :goto_9
    return v4

    :cond_6
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->createConnection()Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljavax/net/ssl/SSLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_16
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v15

    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "] processCommand()  URL: ["

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    const-string v9, "]"

    invoke-interface/range {v4 .. v9}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/nuance/connect/comm/Command;->hasBody:Z

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p1}, Lcom/nuance/connect/comm/HttpPersistentConnector;->generateBody(Lcom/nuance/connect/comm/Command;)[B

    move-result-object v4

    const-string v5, "Content-Type"

    invoke-virtual/range {p1 .. p1}, Lcom/nuance/connect/comm/Command;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    array-length v5, v4

    int-to-long v8, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/nuance/connect/comm/HttpPersistentConnector;->shouldCompress(J)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Compressing Content"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const-string v5, "Content-Encoding"

    const-string v6, "gzip"

    invoke-virtual {v15, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_6
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    move-result-object v7

    const/4 v6, 0x0

    :try_start_7
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    const/16 v17, 0x1000

    move/from16 v0, v17

    invoke-direct {v5, v7, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v5, :cond_7

    :try_start_9
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    move-wide v4, v8

    :cond_8
    :goto_a
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->connect()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v4, v5}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->writeRequest(Lcom/nuance/connect/comm/Command;J)V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v8, v15

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    move-object v5, v6

    :goto_b
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_9
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    throw v4
    :try_end_9
    .catch Ljavax/net/ssl/SSLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    :catch_3
    move-exception v4

    move-object v7, v15

    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - send - ProtocolException "

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v8, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v14, v6

    move-object v15, v7

    goto/16 :goto_1

    :cond_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Writing to output stream"

    invoke-interface {v5, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljavax/net/ssl/SSLException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_12

    move-wide v4, v8

    goto :goto_a

    :catch_4
    move-exception v4

    move-object v7, v15

    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - send - MalformedURLException "

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v8, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v5, 0x6

    invoke-virtual {v4}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v14, v6

    move-object v15, v7

    goto/16 :goto_1

    :catch_5
    move-exception v4

    move-object v7, v15

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - send - IOException "

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v8, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v14, v6

    move-object v15, v7

    goto/16 :goto_1

    :catch_6
    move-exception v4

    move-object v7, v15

    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - send - NullPointerException "

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v8, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v14, v6

    move-object v15, v7

    goto/16 :goto_1

    :catch_7
    move-exception v4

    move-object v7, v15

    :goto_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "] processCommand() - send - Exception "

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v6, v8, v9, v11}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    move v12, v5

    move v14, v6

    move-object v15, v7

    goto/16 :goto_1

    :sswitch_1
    const/4 v13, 0x1

    const/4 v12, 0x7

    :try_start_b
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_b
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v11

    goto/16 :goto_2

    :sswitch_2
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-gtz v4, :cond_0

    const/4 v13, 0x1

    const/16 v12, 0x8

    goto/16 :goto_2

    :catch_8
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    goto/16 :goto_3

    :catch_9
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    goto/16 :goto_3

    :catch_a
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    goto/16 :goto_3

    :catch_b
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    goto/16 :goto_3

    :cond_b
    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v7}, Lcom/nuance/connect/comm/HttpPersistentConnector;->processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v16

    move-object/from16 v17, v6

    move/from16 v6, v16

    :goto_11
    if-eqz v17, :cond_3

    :try_start_d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    goto/16 :goto_7

    :catch_c
    move-exception v4

    goto/16 :goto_6

    :catch_d
    move-exception v5

    :goto_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    const/4 v14, 0x1

    const/4 v13, 0x1

    const/4 v5, 0x2

    goto/16 :goto_7

    :catch_e
    move-exception v4

    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

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

    const/4 v14, 0x1

    const/4 v5, 0x2

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->getErrorBody:Z

    if-eqz v6, :cond_e

    :try_start_e
    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->MAX_ERROR_BODY_SIZE:I

    if-ge v6, v7, :cond_d

    invoke-virtual {v15}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v6, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v10, 0x400

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "] processCommand() - error status message: "

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v9, v10, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    move/from16 v6, v16

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "] processCommand() - error body is too long: "

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v8, v9, v10, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v8, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v10, "] processCommand() - generating error body - Exception "

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v8, v9, v10, v6}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_e
    move/from16 v6, v16

    goto/16 :goto_7

    :cond_f
    if-nez v14, :cond_10

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Lcom/nuance/connect/comm/ConnectorCallback;->onSuccess(Lcom/nuance/connect/comm/Command;)V

    goto/16 :goto_8

    :cond_10
    invoke-virtual/range {p3 .. p3}, Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;->isExpired()Z

    move-result v7

    if-nez v7, :cond_11

    if-eqz v13, :cond_12

    :cond_11
    move-object/from16 v0, p1

    iget-boolean v7, v0, Lcom/nuance/connect/comm/Command;->handleIOException:Z

    if-nez v7, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, p1

    invoke-interface {v7, v0, v5, v4}, Lcom/nuance/connect/comm/ConnectorCallback;->onIOException(Lcom/nuance/connect/comm/Command;ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/nuance/connect/comm/Response;->delayedFor:I

    move-object/from16 v0, p1

    invoke-interface {v6, v0, v7, v5, v4}, Lcom/nuance/connect/comm/ConnectorCallback;->onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z

    move-result v6

    goto/16 :goto_8

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_9

    :catch_10
    move-exception v4

    move/from16 v6, v16

    goto/16 :goto_13

    :catch_11
    move-exception v5

    move/from16 v6, v16

    goto/16 :goto_12

    :catchall_2
    move-exception v5

    move-object/from16 v6, v17

    goto/16 :goto_5

    :catch_12
    move-exception v4

    move-object v7, v15

    goto/16 :goto_10

    :catch_13
    move-exception v4

    move-object v7, v15

    goto/16 :goto_f

    :catch_14
    move-exception v4

    move-object v7, v15

    goto/16 :goto_e

    :catch_15
    move-exception v4

    move-object v7, v15

    goto/16 :goto_d

    :catch_16
    move-exception v4

    move-object v7, v15

    goto/16 :goto_c

    :catchall_3
    move-exception v4

    goto/16 :goto_b

    :cond_14
    move/from16 v6, v16

    goto/16 :goto_11

    :cond_15
    move-object v4, v11

    move v5, v12

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0xce -> :sswitch_2
        0x193 -> :sswitch_1
        0x196 -> :sswitch_1
    .end sparse-switch
.end method

.method public setPersistentConfig(Lcom/nuance/connect/comm/PersistantConnectionConfig;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->connected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->disconnect()V

    :cond_0
    iput-object p1, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    iget-object v0, p0, Lcom/nuance/connect/comm/HttpPersistentConnector;->persistantConfig:Lcom/nuance/connect/comm/PersistantConnectionConfig;

    invoke-virtual {v0}, Lcom/nuance/connect/comm/PersistantConnectionConfig;->getCompressionThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->setCompressionThreshold(I)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/nuance/connect/comm/HttpPersistentConnector;->connect()V

    :cond_1
    return-void
.end method

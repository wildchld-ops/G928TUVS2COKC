.class public abstract Lcom/nuance/connect/comm/Connector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/comm/Connector$ResponseData;
    }
.end annotation


# static fields
.field protected static final DEFAULT_COMPRESSION_THRESHOLD:I = 0xc8

.field protected static final DEFAULT_DELAY_FOR:I = -0x1

.field protected static final SEND_PERCENT_UPDATE_INTERVAL:I = 0x1f4

.field protected static final encoding:Ljava/lang/String; = "UTF-8"

.field private static final log:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field protected final analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

.field protected final client:Lcom/nuance/connect/comm/MessageSendingBus;

.field protected compressionThreshold:I

.field protected final connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

.field protected final connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->DEVELOPER:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/connect/comm/Connector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/connect/comm/MessageSendingBus;Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;Lcom/nuance/connect/comm/ConnectorCallback;Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    iput-object p1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    iput-object p2, p0, Lcom/nuance/connect/comm/Connector;->connectionStatus:Lcom/nuance/connect/comm/CommandQueue$ConnectionStatus;

    iput-object p3, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    iput-object p4, p0, Lcom/nuance/connect/comm/Connector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    return-void
.end method

.method private commandToURL(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/nuance/connect/comm/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static processPbuffResult([BLcom/nuance/connect/comm/Response;)V
    .locals 1

    const/4 v0, 0x1

    iput-object p0, p1, Lcom/nuance/connect/comm/Response;->responseArray:[B

    iput-boolean v0, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    iput v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    return-void
.end method


# virtual methods
.method protected allowsOutput()Z
    .locals 3

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected connectToUrl(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/net/HttpURLConnection;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->thirdPartyURL:Ljava/lang/String;

    :goto_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v7

    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_2
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectToUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/nuance/connect/comm/Connector;->commandToURL(Ljava/lang/String;Lcom/nuance/connect/comm/Command;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

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

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2
.end method

.method public destroyConnection()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->analyticsScribe:Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;

    invoke-interface {v0}, Lcom/nuance/connect/comm/AnalyticsDataUsageScribe;->flush()V

    return-void
.end method

.method protected generateBody(Lcom/nuance/connect/comm/Command;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->JSON:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireDevice:Z

    if-eqz v0, :cond_0

    const-string v0, "5"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-boolean v0, p1, Lcom/nuance/connect/comm/Command;->requireSession:Z

    if-eqz v0, :cond_1

    const-string v0, "3"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "0"

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1}, Lcom/nuance/connect/comm/ConnectorCallback;->getRequestKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "4"

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/connect/comm/Command;->parameters:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :try_start_1
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :cond_5
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_6
    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_9

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_9
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_a

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Error: unusable key type key="

    const-string v7, " value="

    invoke-interface {v2, v6, v0, v7, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    :try_start_2
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :try_start_3
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "body: "

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_3
    sget-object v2, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v3, "Failed string encoding: "

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_c
    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->dataSource:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v1, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v0, v1}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "] generateBody for protobuffers"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/nuance/connect/comm/Command;->bufferData:[B

    if-eqz v0, :cond_d

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "] generateBody: "

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "] generateBody: null"

    invoke-interface {v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown Content being transmitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method protected hasSufficientSpace(I)Z
    .locals 4

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v1}, Lcom/nuance/connect/comm/MessageSendingBus;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract processCommand(Lcom/nuance/connect/comm/Command;Lcom/nuance/connect/comm/Transaction;Lcom/nuance/connect/comm/CommandQueue$NetworkExpirer;)Z
.end method

.method protected processFileResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;Ljava/io/File;)V
    .locals 6

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->transactionId:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->fileLocation:Ljava/lang/String;

    iput-object p3, p1, Lcom/nuance/connect/comm/Response;->file:Ljava/io/File;

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Downloaded File: \n"

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\nSize: "

    invoke-virtual {p3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected processJSONResult([BLcom/nuance/connect/comm/Response;)V
    .locals 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v4, "processJSONResult"

    invoke-interface {v1, v4}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v4, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    move v1, v2

    :goto_0
    if-eqz v1, :cond_0

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Error processing JSON result, failing"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Error processing HTTP response"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    move-object v4, v0

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v4, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Error processing HTTP response"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v1}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    move-object v4, v0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v1, "5"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "5"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/nuance/connect/comm/Response;->deviceId:Ljava/lang/String;

    const-string v1, "5"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    const-string v1, "3"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "3"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/nuance/connect/comm/Response;->sessionId:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_2
    const-string v1, "4"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "4"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    const-string v1, "51"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "51"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/nuance/connect/comm/Response;->thirdPartyURL:Ljava/lang/String;

    const-string v1, "51"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    const-string v1, "0"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "0"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_5
    const-string v1, "64"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Debug Info: "

    const-string v7, "64"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    const-string v1, "117"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "117"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v6, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v6, v1}, Lcom/nuance/connect/comm/ConnectorCallback;->onUnlicensed(I)V

    sget-object v6, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "This build has been unlicensed for "

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v8, " seconds."

    invoke-interface {v6, v7, v1, v8}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const-string v1, "6"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "6"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v1

    :try_start_2
    const-string v6, "6"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :goto_3
    sget-object v6, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server status for request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    sparse-switch v1, :sswitch_data_0

    sget-object v3, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "processResult() UNKNOWN COMMAND: ["

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "]"

    invoke-interface {v3, v6, v7, v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move v3, v1

    move-object v1, v0

    :goto_4
    :try_start_3
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    :goto_6
    iput-boolean v1, p2, Lcom/nuance/connect/comm/Response;->processed:Z

    iput v2, p2, Lcom/nuance/connect/comm/Response;->status:I

    iput-object v0, p2, Lcom/nuance/connect/comm/Response;->statusMessage:Ljava/lang/String;

    iput-object v5, p2, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processJSONResult complete"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    :try_start_4
    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->client:Lcom/nuance/connect/comm/MessageSendingBus;

    invoke-interface {v1}, Lcom/nuance/connect/comm/MessageSendingBus;->isLicensed()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "Build has been re-enabled as licensed"

    invoke-interface {v1, v6}, Lcom/nuance/connect/util/Logger$Log;->i(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    const/high16 v6, -0x80000000

    invoke-interface {v1, v6}, Lcom/nuance/connect/comm/ConnectorCallback;->onUnlicensed(I)V

    goto :goto_2

    :catch_3
    move-exception v1

    move v1, v2

    move v2, v3

    goto :goto_6

    :cond_9
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v6, "No status sent back from server."

    invoke-interface {v1, v6}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v1, v2

    goto :goto_3

    :sswitch_0
    :try_start_5
    iget-object v3, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v3}, Lcom/nuance/connect/comm/ConnectorCallback;->onDeviceInvalidated()V

    move v3, v1

    move-object v1, v0

    goto :goto_4

    :sswitch_1
    iget-object v3, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v3}, Lcom/nuance/connect/comm/ConnectorCallback;->onSessionInvalidated()V

    move v3, v1

    move-object v1, v0

    goto :goto_4

    :sswitch_2
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/nuance/connect/comm/Response;->transactionId:Ljava/lang/String;

    move v2, v3

    move v3, v1

    move-object v1, v0

    goto :goto_4

    :sswitch_3
    const/16 v1, 0x9

    move v3, v1

    move-object v1, v0

    goto :goto_4

    :sswitch_4
    const-string v3, "8"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "8"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server requested delay for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p2, Lcom/nuance/connect/comm/Response;->delayedFor:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    const/4 v1, 0x3

    move v3, v1

    move-object v1, v0

    goto/16 :goto_4

    :sswitch_5
    const-string v3, "9"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "9"

    const-string v6, "9"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, p2, Lcom/nuance/connect/comm/Response;->parameters:Ljava/util/HashMap;

    :cond_b
    iget-object v3, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v3, p2}, Lcom/nuance/connect/comm/ConnectorCallback;->onValidateDeviceProperties(Lcom/nuance/connect/comm/Response;)V

    move v3, v1

    move-object v1, v0

    goto/16 :goto_4

    :sswitch_6
    sget-object v6, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v7, "Client recieved Invalid Argument."

    invoke-interface {v6, v7}, Lcom/nuance/connect/util/Logger$Log;->e(Ljava/lang/Object;)V

    move v2, v3

    move v3, v1

    move-object v1, v0

    goto/16 :goto_4

    :sswitch_7
    iget-object v6, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v6}, Lcom/nuance/connect/comm/ConnectorCallback;->onAccountInvalidated()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move v2, v3

    move v3, v1

    move-object v1, v0

    goto/16 :goto_4

    :sswitch_8
    move v2, v3

    move v3, v1

    move-object v1, v0

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_6

    :catch_4
    move-exception v1

    move v1, v2

    move v2, v3

    goto/16 :goto_6

    :catch_5
    move-exception v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object v0, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_6

    :catch_7
    move-exception v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_8
        0x0 -> :sswitch_8
        0x1 -> :sswitch_8
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_8
        0xb -> :sswitch_8
        0xc -> :sswitch_8
        0xd -> :sswitch_8
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_8
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x18 -> :sswitch_7
        0x19 -> :sswitch_8
        0x1a -> :sswitch_8
        0x1fa -> :sswitch_8
    .end sparse-switch
.end method

.method protected processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;I)Z
    .locals 2

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processResult starting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v0, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v0, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    iput p3, p1, Lcom/nuance/connect/comm/Response;->status:I

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v0, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    const/4 v0, 0x0

    return v0
.end method

.method protected processResult(Lcom/nuance/connect/comm/Response;Lcom/nuance/connect/comm/Command;[B)Z
    .locals 4

    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "processResult starting"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->command:Ljava/lang/String;

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->command:Ljava/lang/String;

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->commandFamily:Ljava/lang/String;

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->commandFamily:Ljava/lang/String;

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->identifier:Ljava/lang/String;

    iput-object v1, p1, Lcom/nuance/connect/comm/Response;->identifier:Ljava/lang/String;

    iget-object v1, p2, Lcom/nuance/connect/comm/Command;->dataResponse:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    sget-object v2, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->PBUFF:Lcom/nuance/connect/comm/Command$DATA_SOURCE;

    invoke-virtual {v1, v2}, Lcom/nuance/connect/comm/Command$DATA_SOURCE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3, p1}, Lcom/nuance/connect/comm/Connector;->processPbuffResult([BLcom/nuance/connect/comm/Response;)V

    :goto_0
    sget-object v1, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v2, "processResult processed:"

    iget-boolean v3, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v1, p1, Lcom/nuance/connect/comm/Response;->processed:Z

    if-eqz v1, :cond_1

    iput-object p2, p1, Lcom/nuance/connect/comm/Response;->initialCommand:Lcom/nuance/connect/comm/Command;

    iget-object v1, p0, Lcom/nuance/connect/comm/Connector;->connectorCallback:Lcom/nuance/connect/comm/ConnectorCallback;

    invoke-interface {v1, p1}, Lcom/nuance/connect/comm/ConnectorCallback;->onResponse(Lcom/nuance/connect/comm/Response;)V

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, p3, p1}, Lcom/nuance/connect/comm/Connector;->processJSONResult([BLcom/nuance/connect/comm/Response;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setCompressionThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    return-void
.end method

.method protected shouldCompress(I)Z
    .locals 7

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "] Size of content: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v6, :cond_1

    const-string v5, " compressing"

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    const-string v5, " not compressing"

    goto :goto_1
.end method

.method protected shouldCompress(J)Z
    .locals 7

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/connect/comm/Connector;->compressionThreshold:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    :goto_0
    sget-object v0, Lcom/nuance/connect/comm/Connector;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "Thread ["

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "] Size of content: "

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v6, :cond_1

    const-string v5, " compressing"

    :goto_1
    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v6

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_1
    const-string v5, " not compressing"

    goto :goto_1
.end method

.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 32

    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v28, v0

    # invokes: Lcom/android/server/DcmNextiPlayReadyService;->getHttpClient()Lorg/apache/http/client/HttpClient;
    invoke-static/range {v28 .. v28}, Lcom/android/server/DcmNextiPlayReadyService;->access$100(Lcom/android/server/DcmNextiPlayReadyService;)Lorg/apache/http/client/HttpClient;

    move-result-object v14

    :try_start_0
    new-instance v25, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v15, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v15}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v28, "yyyy-MM-dd"

    move-object/from16 v0, v28

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v15}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v13

    move-object v6, v13

    array-length v0, v6

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v17, v6, v16

    const-string v28, "Date"

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    :try_start_1
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    :goto_1
    const-wide/16 v10, 0x0

    :try_start_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-string v28, "DcmNextiPlayReadyService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "epoch time: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v28, 0x0

    cmp-long v28, v10, v28

    if-eqz v28, :cond_1

    const-wide/16 v28, 0x3e8

    div-long v20, v10, v28

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v22, v28, v30

    const-string v28, "DcmNextiPlayReadyService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "networktime "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "recvElapsedTime"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V

    :cond_0
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string v28, "DcmNextiPlayReadyService"

    invoke-virtual {v12}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_3
    const-string v28, "DcmNextiPlayReadyService"

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v28, "DcmNextiPlayReadyService"

    const-string/jumbo v29, "resetting flag for later threads"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    sput v28, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    :goto_3
    return-void

    :cond_1
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide/16 v30, 0x3e8

    div-long v26, v28, v30

    const-string v28, "DcmNextiPlayReadyService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_5
    const-string v28, "DcmNextiPlayReadyService"

    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v28, "DcmNextiPlayReadyService"

    const-string/jumbo v29, "resetting flag for later threads"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    sput v28, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    goto :goto_3

    :cond_2
    const-string v28, "DcmNextiPlayReadyService"

    const-string/jumbo v29, "resetting flag for later threads"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    sput v28, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    goto :goto_3

    :catch_3
    move-exception v8

    :try_start_6
    const-string v28, "DcmNextiPlayReadyService"

    invoke-virtual {v8}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v28, "DcmNextiPlayReadyService"

    const-string/jumbo v29, "resetting flag for later threads"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v28, 0x1

    sput v28, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    goto :goto_3

    :catchall_0
    move-exception v28

    const-string v29, "DcmNextiPlayReadyService"

    const-string/jumbo v30, "resetting flag for later threads"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x1

    sput v29, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    throw v28
.end method

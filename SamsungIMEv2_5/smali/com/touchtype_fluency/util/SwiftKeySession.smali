.class public final Lcom/touchtype_fluency/util/SwiftKeySession;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_MODELS_NGRAM_ORDER:I = 0x4

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/touchtype_fluency/util/LiveLanguagePack;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private f:Lcom/touchtype_fluency/Session;

.field private g:Lcom/touchtype_fluency/util/PredictionsListener;

.field private h:Lcom/touchtype_fluency/util/ExclusionPattern;

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/touchtype_fluency/util/LoadProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/touchtype_fluency/Session;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/touchtype_fluency/util/ExclusionPattern;->createDefault()Lcom/touchtype_fluency/util/ExclusionPattern;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/io/File;)V
    .locals 16

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_a

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/touchtype_fluency/TouchHistory;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/touchtype_fluency/Sequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/touchtype_fluency/ResultsFilter;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_3
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz p4, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v2

    if-ge v4, v2, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v12

    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getProbability()D

    move-result-wide v14

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\t["

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getTags()Ljava/util/Set;

    move-result-object v5

    const/4 v2, 0x1

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v5, v2

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_1
    const-string v2, "TouchHistory is null"

    move-object v8, v2

    goto :goto_0

    :cond_2
    const-string v2, "(Pre-)Sequence is null"

    move-object v7, v2

    goto :goto_1

    :cond_3
    const-string v2, "Post-Sequence is null"

    move-object v6, v2

    goto :goto_2

    :cond_4
    const-string v2, "ResultsFilter is null"

    move-object v3, v2

    goto :goto_3

    :cond_5
    const-string v14, ","

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_6
    const-string v2, "]\tterm breaks: "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/touchtype_fluency/Prediction;->getTermBreaks()[Ljava/lang/Integer;

    move-result-object v12

    const/4 v2, 0x1

    array-length v13, v12

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v13, :cond_8

    aget-object v14, v12, v5

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    const-string v15, ","

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_8
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    const-string v4, "TouchHistory: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(Pre-) Sequence: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Post-Sequence: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ResultsFilter: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Predictions: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :try_start_0
    const-string v2, "predictionstate.txt"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_a
    return-void

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Predictions are null"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :catch_0
    move-exception v2

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing predictionstate.txt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    iget-object v5, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v5, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->d()V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->e()V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->getTags(Lcom/touchtype_fluency/TagSelector;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inconsistent static models (still loaded/reloaded by another thread):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    :cond_2
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/io/File;

    const-string v0, "punctuator_rules"

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v3, v4}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v5, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error copying "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " to "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not loaded - can\'t be removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v6

    const/4 v0, 0x0

    if-eqz v6, :cond_5

    invoke-direct {p0, v6}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_1
    if-nez p2, :cond_3

    move v0, v3

    :goto_2
    if-eqz p3, :cond_1

    if-eq v0, v3, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_4

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    invoke-direct {p0, v6, v4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "keeping "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v5}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_2

    if-eqz v4, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v4}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unloaded "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 6

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LanguagePack;->getLiveLanguagePack()Lcom/touchtype_fluency/util/LiveLanguagePack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "unloaded "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, v0, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setLiveLanguageBroken(Lcom/touchtype_fluency/util/LiveLanguagePack;)V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_3
    :try_start_1
    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Live LM path not found: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePackManager;ZZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/io/File;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/lang/Runnable;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f()V

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    :cond_1
    iget-object v3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    sget-object v6, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v4, v5, v2, v6}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/io/File;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lost possible training data, but proceeding with personalization merge "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c(Ljava/io/File;)V
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getIntentionalEvents()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "intentionalevents.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing intentionalevents.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/touchtype_fluency/util/SwiftKeySession;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    return v0
.end method

.method public static create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/LicenseException;
        }
    .end annotation

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession;

    invoke-static {p0}, Lcom/touchtype_fluency/SwiftKeySDK;->createSession(Ljava/lang/String;)Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;-><init>(Lcom/touchtype_fluency/Session;)V

    return-object v0
.end method

.method private declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->c()V

    return-void
.end method

.method private d(Ljava/io/File;)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getLayoutFilter()Lcom/touchtype_fluency/LayoutFilter;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/LayoutFilter;->get()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/CodepointRange;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/touchtype_fluency/CodepointRange;->getBegin()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/touchtype_fluency/CodepointRange;->getEnd()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "layoutfilter.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing layoutfilter.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic e(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/LoadProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e(Ljava/io/File;)V
    .locals 20

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v10

    invoke-interface {v10}, Lcom/touchtype_fluency/ParameterSet;->getTargets()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v12, :cond_6

    aget-object v13, v11, v7

    invoke-interface {v10, v13}, Lcom/touchtype_fluency/ParameterSet;->getProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v15, :cond_5

    aget-object v16, v14, v6

    move-object/from16 v0, v16

    invoke-interface {v10, v13, v0}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->getValueType()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->defaultValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v17

    const-class v18, Ljava/lang/Float;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    check-cast v2, [Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v2, v3

    check-cast v2, [Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (default: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    :cond_1
    const-class v17, Ljava/lang/Integer;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_2

    check-cast v2, Ljava/lang/Integer;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_2
    const-class v17, Ljava/lang/Float;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_3

    check-cast v2, Ljava/lang/Float;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    goto :goto_2

    :cond_3
    const-class v17, Ljava/lang/Boolean;

    move-object/from16 v0, v17

    if-ne v5, v0, :cond_4

    check-cast v2, Ljava/lang/Boolean;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_2

    :cond_4
    const-string v5, "Unknown type for "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v19, v4

    move-object v4, v3

    move-object v3, v2

    move/from16 v2, v19

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_0

    :cond_6
    :try_start_0
    const-string v2, "changedparameters.txt"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v2

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error writing changedparameters.txt: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private f()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v1, "impossible - loading a temporary dynamic model doesn\'t throw!"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v1, "impossible - loading a temporary dynamic model doesn\'t throw!"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljunit/framework/Assert;->fail()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->b()V

    return-void
.end method

.method private f(Ljava/io/File;)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v3, v0

    invoke-virtual {v4}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "languagemodels.txt"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing languagemodels.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic g(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/Session;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method private declared-synchronized g()Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g(Ljava/io/File;)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getLoadedSets()[Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_8

    aget-object v5, v3, v2

    :try_start_1
    invoke-virtual {v5}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v9, :cond_7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v7, v9, :cond_0

    if-le v6, v7, :cond_4

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-static {v0, v7}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error writing dynamic language models: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Path does not specify a directory for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    sget-object v6, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error processing ModelSetDescription "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/touchtype_fluency/ModelSetDescription;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Directory does not exist for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Directory cannot be read for ModelSetDescription loaded at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    return-void
.end method

.method public static getFilteredPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/h;->a()Lcom/touchtype_fluency/util/h;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFilteredZhuyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/k;->a()Lcom/touchtype_fluency/util/k;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/touchtype_fluency/util/k;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/touchtype_fluency/util/SwiftKeySession;)Lcom/touchtype_fluency/util/PredictionsListener;
    .locals 1

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->g()Lcom/touchtype_fluency/util/PredictionsListener;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v1}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0, p1, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;)V

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " broken - re-download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " missing - download it"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/Runnable;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LiveLanguagePack;->isDownloaded()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Lcom/touchtype_fluency/ModelSetDescription;->fromFile(Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0, p1, v2}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/util/LiveLanguagePack;Ljava/lang/String;)V

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " loaded by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered IOException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " broken - re-download it. Encountered InvalidDataException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing - download it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    invoke-virtual {v2, p1}, Lcom/touchtype_fluency/util/ExclusionPattern;->a(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    iget-object v7, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v7}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v6

    if-eqz v0, :cond_0

    invoke-virtual {v6, p2}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    move v0, v1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v6, p3}, Lcom/touchtype_fluency/Sequence;->setContact(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v6, p4}, Lcom/touchtype_fluency/Sequence;->setFieldHint(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3, v6}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v2, "Did not delete dynamic LM. Probably means there wasn\'t one there"

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->resetLearnedParameters()V

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final createOrLoadDynamicUserModel(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v0, v2, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v2, v0}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got InvalidDataException loading model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->dispose()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final get12KeyZhuyins(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession;->getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyPinyinPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/touchtype_fluency/util/h;->a()Lcom/touchtype_fluency/util/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/h;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getFiltered12KeyZhuyinsPredictions(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictions;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Lcom/touchtype_fluency/util/k;->a(Lcom/touchtype_fluency/Session;)Lcom/touchtype_fluency/util/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/k;->a(Lcom/touchtype_fluency/Predictions;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getPredictions(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/touchtype_fluency/Predictions;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Sequence;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {p1, v0}, Lcom/touchtype_fluency/Sequence;->setType(Lcom/touchtype_fluency/Sequence$Type;)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession$8;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/ResultsFilter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final getSession()Lcom/touchtype_fluency/Session;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    return-object v0
.end method

.method public final loadEnabledLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1

    invoke-virtual {p1}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/touchtype_fluency/util/SwiftKeySession;->loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    return-void
.end method

.method public final declared-synchronized loadLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/touchtype_fluency/util/SwiftKeySession$1;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Ljava/util/List;)V

    iput-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->k:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/LoadProgressListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/LoadProgressListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/LoadProgressListener;->onComplete(Z)V

    :cond_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iput-object p3, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->l:Lcom/touchtype_fluency/util/LoadProgressListener;

    iget-boolean v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$2;

    invoke-direct {v1, p0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$2;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/LanguagePack;

    iget-object v2, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->d:Ljava/util/Queue;

    new-instance v3, Lcom/touchtype_fluency/util/SwiftKeySession$3;

    invoke-direct {v3, p0, v0, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$3;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$4;

    invoke-direct {v1, p0}, Lcom/touchtype_fluency/util/SwiftKeySession$4;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You should not merge dynamic models when dynamic models are disabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The new dynamic language model File is null or its parent is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getDynamicModel()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/String;

    sget-object v4, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v2, v6, v3, v4}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    sget-object v5, Lcom/touchtype_fluency/ModelSetDescription$Type;->PRIMARY_DYNAMIC_MODEL:Lcom/touchtype_fluency/ModelSetDescription$Type;

    invoke-static {v3, v6, v4, v5}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicWithFile(Ljava/lang/String;I[Ljava/lang/String;Lcom/touchtype_fluency/ModelSetDescription$Type;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/touchtype_fluency/util/SwiftKeySession;->b(Ljava/io/File;)V

    sget-object v4, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v5, "Unloading existing dynamic model"

    invoke-static {v4, v5}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v4, v2}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/touchtype_fluency/ModelSetDescription;->merge(Lcom/touchtype_fluency/ModelSetDescription;Lcom/touchtype_fluency/ModelSetDescription;Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    const-string v3, "Successfully merged user models"

    invoke-static {v1, v3}, Lcom/touchtype_fluency/util/HttpDownload$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Session;->load(Lcom/touchtype_fluency/ModelSetDescription;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/touchtype_fluency/CountOverflowException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    invoke-interface {p3, v0}, Lcom/touchtype_fluency/util/CompletionListener;->onComplete(Z)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got illegal state when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got invalid data when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/InvalidDataException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got IOException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got CountOverflowException when merging user model "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/touchtype_fluency/CountOverflowException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final mergeLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/touchtype_fluency/InvalidDataException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/touchtype_fluency/util/SwiftKeySession;->mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    return-void
.end method

.method public final preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    return-void
.end method

.method public final declared-synchronized preserveLanguages(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/PreservationListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$5;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$5;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/Set;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/PreservationListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/touchtype_fluency/util/SwiftKeySession;->replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    return-void
.end method

.method public final declared-synchronized replaceLanguages(Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            "Lcom/touchtype_fluency/util/CompletionListener;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype_fluency/util/SwiftKeySession$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession$6;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Ljava/util/List;Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetTemporaryModel()V
    .locals 3

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/touchtype_fluency/ModelSetDescription;->dynamicTemporary(I[Ljava/lang/String;)Lcom/touchtype_fluency/ModelSetDescription;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Session;->unload(Lcom/touchtype_fluency/ModelSetDescription;)V

    invoke-direct {p0}, Lcom/touchtype_fluency/util/SwiftKeySession;->f()V

    return-void
.end method

.method public final setDynamicModelsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->i:Z

    return-void
.end method

.method public final setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V
    .locals 0

    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->h:Lcom/touchtype_fluency/util/ExclusionPattern;

    return-void
.end method

.method public final setLiveLanguageModelsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->j:Z

    return-void
.end method

.method public final declared-synchronized setPredictionsListener(Lcom/touchtype_fluency/util/PredictionsListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->g:Lcom/touchtype_fluency/util/PredictionsListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized storeDebugInfo(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/TouchHistory;",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/Sequence;",
            "Lcom/touchtype_fluency/ResultsFilter;",
            "Lcom/touchtype_fluency/Predictions;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    if-nez p7, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outputDirectory is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    if-nez p6, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "punctuatorRulesPathList is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Storing debug info in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/util/HttpDownload$a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/touchtype_fluency/util/b;->a(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->f(Ljava/io/File;)V

    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->g(Ljava/io/File;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->getBlacklist()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "blacklist.txt"

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1, v2}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :goto_0
    :try_start_5
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "kpm.txt"

    invoke-direct {v1, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    :try_start_6
    invoke-interface {v0, v1}, Lcom/touchtype_fluency/KeyPressModel;->saveFile(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    :try_start_7
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/InputMapper;->summariseMappings()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :try_start_8
    const-string v1, "mappings.txt"

    invoke-static {v1, v5, v0}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_2
    :try_start_9
    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->e(Ljava/io/File;)V

    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->c(Ljava/io/File;)V

    invoke-direct {p0, v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->d(Ljava/io/File;)V

    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LanguagePackManager Version: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    const-string v0, "versions.txt"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/touchtype_fluency/util/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    :try_start_b
    invoke-static {v5, p6}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Ljava/io/File;Ljava/util/List;)V

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/touchtype_fluency/util/SwiftKeySession;->a(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/ResultsFilter;Lcom/touchtype_fluency/Predictions;Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-static {v5}, Lcom/touchtype_fluency/util/b;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_d
    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error setting up the output directory "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    sget-object v3, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Error copying "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception thrown while writing KPM file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing mappings.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing versions.txt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_5
    move-exception v0

    sget-object v1, Lcom/touchtype_fluency/util/SwiftKeySession;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error zipping files in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/touchtype_fluency/util/HttpDownload$a;->c(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public final submitTask(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized updateLiveLanguages(Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/touchtype_fluency/util/SwiftKeySession$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/touchtype_fluency/util/SwiftKeySession$7;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final writeDynamicModel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/touchtype_fluency/util/SwiftKeySession;->f:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/touchtype_fluency/Trainer;->write()V

    :cond_0
    return-void
.end method

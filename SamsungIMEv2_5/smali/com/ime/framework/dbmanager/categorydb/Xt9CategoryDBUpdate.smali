.class public Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
.super Ljava/lang/Object;
.source "Xt9CategoryDBUpdate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;,
        Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "Xt9CategoryDBUpdate"

.field private static mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;


# instance fields
.field private mACManagerStartedNotify:Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;

.field private mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

.field private mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mChnDownloadingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;

.field private mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

.field private mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

.field private mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

.field private mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

.field private mDownloadedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation
.end field

.field private mHKDownloadingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;

.field private mPendingDownloadDbs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadDBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTWDownloadingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mChnDownloadingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPreloadDBList:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    new-instance v0, Lcom/ime/framework/dbmanager/DbSettings;

    invoke-direct {v0, p1}, Lcom/ime/framework/dbmanager/DbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    new-instance v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mListCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;

    invoke-static {p1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getInstance(Landroid/content/Context;)Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    new-instance v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mConnectionCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mConnectionCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$connectionCallBack;

    invoke-virtual {v0, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->addConnectionCallBack(Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasConnectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->initDownloadService()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;

    invoke-direct {v0, p0, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$acManagerStart;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$1;)V

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACManagerStartedNotify:Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACManagerStartedNotify:Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;

    invoke-virtual {v0, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->addACManagerStartCallBack(Lcom/ime/framework/acmanager/ACChineseDictionaryManager$ACManagerStartNotify;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/DbSettings;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->downloadPendingDownloadDBs()V

    return-void
.end method

.method static synthetic access$800(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->inDownloadingList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private downloadPendingDownloadDBs()V
    .locals 8

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    invoke-virtual {p0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->isDictDownloadable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v1, v2, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->startDownload(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x7

    new-instance v6, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    invoke-direct {v6, v1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5, v6}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v5, "Xt9CategoryDBUpdate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not get dictionary obj, dbId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;)",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v1

    :cond_1
    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    .locals 2

    const-class v1, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inDownloadingList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDownloadingListbyLan(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private startDownload(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    new-instance v2, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$downloadFileCallBack;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    invoke-virtual {v1, p2, v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->downloadDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadFileCallback;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addPreloadDBList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPreloadDBList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstallDictionary(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addToDownloadingList(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDownloadingListbyLan(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    const-string v2, "Xt9CategoryDBUpdate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelUpdate dbId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dict:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->cancelDownload(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V
    :try_end_0
    .catch Lcom/nuance/swypeconnect/ac/ACException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeFromDownloadingList(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v2, 0x9

    new-instance v3, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    invoke-direct {v3, p1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2, v3}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 0

    return-void
.end method

.method public getAvailableDictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getAvailableDictionaries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableDownloadingCatDBCnt(I)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDownloadingListbyLan(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/ime/framework/dbmanager/DbID;->isHotwordDB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->isAvailableDict(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDownloadedDictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getDownloadedDictionaries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadedList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingListbyLan(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xe0

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mTWDownloadingList:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0xe1

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mChnDownloadingList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/16 v1, 0xe2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mHKDownloadingList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getUpdatableDictList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->isDictionaryListAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->getUpdatableDictionaries()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    return-object v0
.end method

.method public hasDownloadingDB()Z
    .locals 3

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mChnDownloadingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int v0, v1, v2

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initDownloadService()V
    .locals 5

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->getDictionayDownloadService()Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mListCallBack:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dictionarylistCallBack;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->registerCallback(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionaryDownloadListCallback;Z)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPreloadDBList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v2, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstallDictionary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    const-string v3, "225-hotwords-HotwordsCN"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstallDictionary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    const-string v3, "224-hotwords-HotwordsTW"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstallDictionary(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    const-string v3, "226-hotwords-HotwordsHK"

    invoke-virtual {v2, v3}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->preinstallDictionary(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public isAvailableDict(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDictDownloadable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mAvailableList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mUpdatableList:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDictionaryInList(Ljava/lang/String;Ljava/util/List;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseInstance()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->releaseInstance()V

    :cond_0
    return-void
.end method

.method public removeDictionaries(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    invoke-interface {v0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;->onRemovedDictionaries(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public removeDictionary(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDownloadService:Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;

    invoke-virtual {v1, v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService;->removeDictionary(Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;)V

    :cond_0
    return-void
.end method

.method public removeFromDownloadingList(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDownloadingListbyLan(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDBListChangeCb(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListChangeCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListChangeCallBack;

    return-void
.end method

.method public setDBListRefreshCb(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mDBListRefreshCB:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate$dbListRefreshCallBack;

    return-void
.end method

.method public setDownloadBackgoundStatus()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0, v1, v1, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->configNetwork(ZZZ)V

    return-void
.end method

.method public update(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->hasInit()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v1, v2, v2, v2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->configNetwork(ZZZ)V

    const-string v1, "Xt9CategoryDBUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update dbId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dict :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->isDictDownloadable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->addToDownloadingList(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->startDownload(Ljava/lang/String;Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x7

    new-instance v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    invoke-direct {v2, p1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->addToDownloadingList(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mPendingDownloadDbs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->updateDBList()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    new-instance v2, Lcom/ime/framework/dbmanager/DbDownloadInfo;

    invoke-direct {v2, p1}, Lcom/ime/framework/dbmanager/DbDownloadInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1, v2}, Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateDBList()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0, v1, v1, v1}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->configNetwork(ZZZ)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->mACSDKMgr:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    invoke-virtual {v0}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->refresh()V

    return-void
.end method

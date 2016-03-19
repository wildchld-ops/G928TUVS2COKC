.class public Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
.super Lcom/ime/framework/dbmanager/DbUpdateAbs;
.source "Xt9CategoryDBMgr.java"


# static fields
.field private static final CATEGORY_PATH:Ljava/lang/String; = "/CatDB"

.field private static final CHINESE_CATEGORY:Ljava/lang/String; = "/CHN_cat.xml"

.field private static final HK_CATEGORY:Ljava/lang/String; = "/HK_cat.xml"

.field public static final MAX_DOWNLOAD_CATDB:I = 0x8

.field private static final PRELOAD_PATH:Ljava/lang/String; = "xt9db/cdb"

.field private static final TAG:Ljava/lang/String; = "Xt9CategoryDBMgr"

.field private static final TW_CATEGORY:Ljava/lang/String; = "/TW_cat.xml"

.field private static mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;


# instance fields
.field private mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

.field private mChnDownLoadCatDbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mChnSavedDownloadListFileName:Ljava/lang/String;

.field private mDownloadedFilePath:Ljava/lang/String;

.field private mHKDownLoadCatDbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mHKSavedDownloadListFileName:Ljava/lang/String;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

.field private mPreloadDBVersionInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTWDownLoadCatDbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation
.end field

.field private mTWSavedDownloadListFileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mPreloadDBVersionInfo:Ljava/util/HashMap;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/CatDB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDownloadedFilePath:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDownloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/CHN_cat.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnSavedDownloadListFileName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDownloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/HK_cat.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKSavedDownloadListFileName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDownloadedFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/TW_cat.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWSavedDownloadListFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    move-result-object v3

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnDownLoadCatDbList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKDownLoadCatDbList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWDownLoadCatDbList:Ljava/util/ArrayList;

    new-instance v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    invoke-direct {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;-><init>()V

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->parsePreloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->parseDownloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->updateFinish(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;ILjava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private deleteCatDBFile(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    return-void
.end method

.method private getCatDB(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;
    .locals 1

    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    invoke-direct {v0, p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    :cond_0
    sget-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    return-object v0
.end method

.method private getSavedFileName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xe0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWSavedDownloadListFileName:Ljava/lang/String;

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    const/16 v1, 0xe1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnSavedDownloadListFileName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 v1, 0xe2

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKSavedDownloadListFileName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isHotwowrdCDB(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/ime/framework/dbmanager/DbID;->isHotwordDB(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parseDownloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V
    .locals 1

    const/16 v0, 0xe1

    invoke-direct {p0, p1, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->praseDownloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;I)V

    return-void
.end method

.method private parsePreloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;)V
    .locals 10

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v7, "xt9db/cdb/CHN_cat.xml"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDBList(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnDownLoadCatDbList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mPreloadDBVersionInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v7, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->addPreloadDBList(Ljava/util/ArrayList;)V

    :cond_2
    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKDownLoadCatDbList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    const-string v7, "xt9db/cdb/HK_cat.xml"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDBList(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKDownLoadCatDbList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mPreloadDBVersionInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    iget-object v8, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKDownLoadCatDbList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->addPreloadDBList(Ljava/util/ArrayList;)V

    :cond_4
    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWDownLoadCatDbList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    const-string v7, "xt9db/cdb/TW_cat.xml"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDBList(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWDownLoadCatDbList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mPreloadDBVersionInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v7, v6}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->addPreloadDBList(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private praseDownloadDBsToList(Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;I)V
    .locals 10

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getSavedFileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->getDBList(Ljava/io/InputStream;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-direct {p0, v6, v1, v2}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->updatePreloadDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/util/ArrayList;I)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v7, "Xt9CategoryDBMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There are not download CatDBs, msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateFinish(Ljava/lang/String;Ljava/io/File;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v8, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isHotwowrdCDB(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, p1, v5}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getCatDB(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v1

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy.MM.dd"

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-direct {v8, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_3

    new-instance v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getId()I

    move-result v8

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v9

    const-string v10, ""

    invoke-direct {v1, v8, v9, v10}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;-><init>(IILjava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setPreload(Z)V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDownloadedFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_4
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    invoke-static {p2, v6}, Lcom/ime/framework/util/Utils;->uncompressGZipFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBCategory(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBEnable(Z)V

    invoke-virtual {v1, v7}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBVersion(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBAbsolutePath(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    invoke-interface {v8, v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;->install(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I

    :cond_5
    new-instance v4, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    invoke-direct {v4}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;-><init>()V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getSavedFileName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->updateCatDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private updatePreloadDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/util/ArrayList;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBAbsolutePath(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->setDBVersion(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public cancelUpdate(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->cancelUpdate(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->cancelUpdate(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public checkUpdatable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadCallBack(Ljava/lang/String;)Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->checkUpdatable(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.method public deleteCatDB(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    new-instance v5, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;

    invoke-direct {v5}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getLanguageId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getLanguageId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getSavedFileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBParser;->deleteCatDB(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeDictionary(Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    invoke-interface {v6, v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;->uninstall(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I

    :cond_2
    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mDbSettings:Lcom/ime/framework/dbmanager/DbSettings;

    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Lcom/ime/framework/dbmanager/DbSettings;->setDbUpdateDate(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->deleteCatDBFile(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v6, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->removeDictionaries(Ljava/util/ArrayList;)V

    :cond_4
    return-void
.end method

.method public getCdbUpdate()Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    return-object v0
.end method

.method public getDBName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v3, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/dbmanager/DbID;->isXT9POI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/dbmanager/DbID;->isXT9Dialect(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-virtual {v2}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnDownLoadCatDbList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getCatDB(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/dbmanager/DbID;->isXT9POI(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ime/framework/dbmanager/DbID;->isXT9Dialect(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDeletableDBList(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    iget-object v5, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mPreloadDBVersionInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->isPreload()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->isPreload()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->getDBVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getDownloadDBList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ime/framework/dbmanager/categorydb/CategoryDB;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0xe0

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mTWDownLoadCatDbList:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0xe1

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mChnDownLoadCatDbList:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    const/16 v1, 0xe2

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mHKDownLoadCatDbList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public isMemoryFull(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isHotwowrdCDB(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v6, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->isAvailableDict(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v6, p1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getDctionary(Ljava/lang/String;)Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getLanguage()I

    move-result v5

    :cond_2
    invoke-virtual {p0, v5}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    iget-object v6, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v6, v5}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getAvailableDownloadingCatDBCnt(I)I

    move-result v4

    add-int v6, v2, v4

    const/16 v7, 0x8

    if-lt v6, v7, :cond_4

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public loadAllCDBs(Ljava/lang/String;)V
    .locals 5

    const/16 v3, 0xe1

    const-string v4, "zh_HK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v3, 0xe2

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->getDownloadDBList(I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    const-string v4, "zh_TW"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xe0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDB;->isDBEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    invoke-interface {v4, v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;->install(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    invoke-interface {v4, v0}, Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;->uninstall(Lcom/ime/framework/dbmanager/categorydb/CategoryDB;)I

    goto :goto_1
.end method

.method public releaseInstance()V
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->releaseInstance()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstance:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;

    return-void
.end method

.method public setCDBInstaller(Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInstaller:Lcom/ime/framework/dbmanager/categorydb/CategoryDBInstallInterface;

    return-void
.end method

.method public setUpdateBackground(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->setUpdateCallBack(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->setDownloadBackgoundStatus()V

    :cond_0
    return-void
.end method

.method public startAutoUpdate()V
    .locals 5

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isXT9DBUpdateSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    invoke-virtual {v4}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->getUpdatableDictList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACChineseDictionaryDownloadService$ACChineseDictionary;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isHotwowrdCDB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->isUpdating(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->update(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/ime/framework/dbmanager/DbUpdateAbs;->update(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;->mCDBUpdate:Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;

    new-instance v1, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr$1;

    invoke-direct {v1, p0}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr$1;-><init>(Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBMgr;)V

    invoke-virtual {v0, p1, v1}, Lcom/ime/framework/dbmanager/categorydb/Xt9CategoryDBUpdate;->update(Ljava/lang/String;Lcom/ime/framework/dbmanager/DbUpdateInterface$DbDownloadNotifier;)V

    :cond_0
    return-void
.end method

.class public Lcom/myscript/atk/rmc/RMHelper;
.super Ljava/lang/Object;
.source "RMHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;,
        Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;,
        Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;
    }
.end annotation


# static fields
.field public static final ANALYZER:Ljava/lang/String; = "nlg_analyzer"

.field public static final LANG_FILE:Ljava/lang/String; = "langfile"

.field public static final MATH:Ljava/lang/String; = "nlg_math"

.field private static PRELOAD_LIB_PATH:Ljava/lang/String; = null

.field public static final RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

.field public static final SHAPE:Ljava/lang/String; = "nlg_shape"

.field public static final SYMBOL:Ljava/lang/String; = "nlg_symbol"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private EngineVersion:Ljava/lang/String;

.field private client:Landroid/content/ContentProviderClient;

.field private cr:Landroid/content/ContentResolver;

.field final mContext:Landroid/content/Context;

.field private mParent:Lcom/myscript/atk/rmc/VOLanguagePackManager;

.field mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

.field mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

.field mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/myscript/atk/rmc/RMHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    const-string v0, "/system/VODB/lib"

    sput-object v0, Lcom/myscript/atk/rmc/RMHelper;->PRELOAD_LIB_PATH:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lcom/myscript/atk/rmc/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/myscript/atk/rmc/VOLanguagePackManager;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->EngineVersion:Ljava/lang/String;

    iput-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    iput-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    iput-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/myscript/atk/rmc/RMHelper;->mParent:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    invoke-virtual {p0}, Lcom/myscript/atk/rmc/RMHelper;->initHelper()Z

    return-void
.end method

.method static synthetic access$000(Lcom/myscript/atk/rmc/RMHelper;)Lcom/myscript/atk/rmc/VOLanguagePackManager;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mParent:Lcom/myscript/atk/rmc/VOLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/myscript/atk/rmc/RMHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMHelper;->EngineVersion:Ljava/lang/String;

    return-object p1
.end method

.method private resourceManagerGetAvailableQuery()V
    .locals 9

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Updates;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/myscript/atk/rmc/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetDownloadingQuery()V
    .locals 9

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Downloading;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/myscript/atk/rmc/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private resourceManagerGetInstalledQuery()V
    .locals 9

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Langs;->getContentURI()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/myscript/atk/rmc/RMHelper;->RM_PROJECTIONS_UPDATE_LANG_VERSION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public RMisReady()Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    const-string v1, "SamsungIME : RMisReady() : client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAnalyzerResPath()Ljava/lang/String;
    .locals 1

    const-string v0, "nlg_analyzer"

    invoke-virtual {p0, v0}, Lcom/myscript/atk/rmc/RMHelper;->getNlgResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableList()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;-><init>(Lcom/myscript/atk/rmc/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetAvailableAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetAvailableQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/rmc/RMHelper;->resourceManagerGetAvailableQuery()V

    return-void
.end method

.method public getDownloadingLangList()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;-><init>(Lcom/myscript/atk/rmc/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetDownloadingAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetDowndingQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/rmc/RMHelper;->resourceManagerGetDownloadingQuery()V

    return-void
.end method

.method public getEnginePath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->PRELOAD_LIB_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->EngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledLangList()V
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;-><init>(Lcom/myscript/atk/rmc/RMHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mRMQueryGetInstalledAsyncHandler:Lcom/myscript/atk/rmc/RMHelper$ResourceManagerGetInstalledQueryAsyncHandler;

    :cond_0
    invoke-direct {p0}, Lcom/myscript/atk/rmc/RMHelper;->resourceManagerGetInstalledQuery()V

    return-void
.end method

.method public getMathResPath()Ljava/lang/String;
    .locals 1

    const-string v0, "nlg_math"

    invoke-virtual {p0, v0}, Lcom/myscript/atk/rmc/RMHelper;->getNlgResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNlgResourcePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v9, ""

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    const-string v1, "ResourceManager client is not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/myscript/atk/rmc/RMHelper;->initHelper()Z

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Langs;->getContentURI()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "langfile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "resource"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public getResources(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract$Langs;->getContentURI()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_0
    :goto_0
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v8, v9, 0x1

    const-string v0, "resource"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v8

    goto :goto_1

    :catch_0
    move-exception v7

    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    return-object v10

    :catch_1
    move-exception v7

    :try_start_2
    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    invoke-virtual {p0}, Lcom/myscript/atk/rmc/RMHelper;->initHelper()Z

    goto :goto_2
.end method

.method public getShapeResPath()Ljava/lang/String;
    .locals 1

    const-string v0, "nlg_shape"

    invoke-virtual {p0, v0}, Lcom/myscript/atk/rmc/RMHelper;->getNlgResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSymbolResPath()Ljava/lang/String;
    .locals 1

    const-string v0, "nlg_symbol"

    invoke-virtual {p0, v0}, Lcom/myscript/atk/rmc/RMHelper;->getNlgResourcePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initHelper()Z
    .locals 2

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->cr:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->cr:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/myscript/atk/rmc/ResourceManagerContract;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMHelper;->client:Landroid/content/ContentProviderClient;

    if-nez v0, :cond_0

    sget-object v0, Lcom/myscript/atk/rmc/RMHelper;->TAG:Ljava/lang/String;

    const-string v1, "SamsungIME : initHelper() : client is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

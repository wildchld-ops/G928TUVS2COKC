.class public abstract Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.super Ljava/lang/Object;
.source "DataConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;,
        Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;,
        Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;,
        Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

.field protected mCancelLock:Ljava/lang/Object;

.field protected volatile mCancelled:Z

.field protected final mContext:Landroid/content/Context;

.field protected mDoNotNeedCheckChange:Z

.field protected mIsSafeMode:Z

.field protected mLauncherApps:Landroid/content/pm/LauncherApps;

.field protected final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/launcher/data/DataManager$IDataListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLoadListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

.field protected final mLoaderThread:Landroid/os/HandlerThread;

.field protected mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected final mUiHandler:Landroid/os/Handler;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;ZZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelled:Z

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mDoNotNeedCheckChange:Z

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoadListeners:Ljava/util/HashSet;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mIsSafeMode:Z

    iput-object p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUserManager:Landroid/os/UserManager;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-direct {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;-><init>(ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mIsSafeMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Ljava/util/List;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->sortItemsByListener(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private sortItemsByListener(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/app/launcher/data/DataManager$IDataListener;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;>;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;

    invoke-interface {v4, v2}, Lcom/sec/android/app/launcher/data/DataManager$IDataListener;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v5
.end method


# virtual methods
.method protected addItem(JLcom/sec/daliviews/views/Item;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->addItem(JLcom/sec/daliviews/views/Item;Z)V

    return-void
.end method

.method public addItem(JLcom/sec/daliviews/views/Item;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->addItem(JLcom/sec/daliviews/views/Item;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p0, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->notifyItemAdded(Lcom/sec/daliviews/views/Item;)V

    :cond_0
    return-void
.end method

.method public checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoadListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoadListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->checkItemLoading(Landroid/os/Bundle;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected decodeBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract deleteItem(Lcom/sec/daliviews/views/Item;)I
.end method

.method public abstract deleteItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)I"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->stop()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->destroy()V

    return-void
.end method

.method protected getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v0, 0x1

    const-string v1, "itemType"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-nez v8, :cond_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->decodeBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    :cond_1
    :goto_1
    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_2
    move-object v0, v7

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v8, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->decodeBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected abstract getContentUri(Z)Landroid/net/Uri;
.end method

.method protected getIdsFromDb(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-object v8

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getItem(J)Lcom/sec/daliviews/views/Item;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    return-object v0
.end method

.method public abstract getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
.end method

.method public getUiHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUserManager:Landroid/os/UserManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public insertItem(Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public abstract insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;
.end method

.method public abstract insertItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)I"
        }
    .end annotation
.end method

.method public loadBgImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method loadImageCache()V
    .locals 6

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelled:Z

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->onLoadImageCache()V

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onLoadImageCache() duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public loadItem(J)Lcom/sec/daliviews/views/Item;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->onLoadItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    goto :goto_0
.end method

.method loadItems()V
    .locals 6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->onLoadItems()V

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onLoadItems() duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->onPostLoadItems()V

    sget-object v2, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".onPostLoadItems() duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public loadPreviewImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$7;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyBadgeUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$8;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyItemAdded(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$3;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyItemUpdated(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$4;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$4;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyItemsAdded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/LauncherItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$2;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyItemsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$5;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected notifyUpdateCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$6;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected abstract onCheckValidation()V
.end method

.method protected abstract onLoadImageCache()V
.end method

.method protected onLoadItem(J)Lcom/sec/daliviews/views/Item;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onLoadItems()V
.end method

.method protected onPostLoadItems()V
    .locals 0

    return-void
.end method

.method public registerListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected abstract removeItemFromCache(Lcom/sec/daliviews/views/Item;)V
.end method

.method public removePackage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItemsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    const/4 v12, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/daliviews/views/Item;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    if-lez v12, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v7, v7, v25

    invoke-virtual {v9, v3, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in ("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p1, :cond_6

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v12, :cond_6

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v3

    const/4 v3, 0x1

    const-string v7, "pos"

    aput-object v7, v4, v3

    const-string v5, "containerId=?"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v3, "pos"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    :cond_3
    :goto_3
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v0, v22

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v3

    move/from16 v0, v21

    if-le v0, v3, :cond_3

    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    add-int/lit8 v21, v21, -0x1

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentValues;->clear()V

    const-string v3, "pos"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v7, v25

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v14

    :try_start_1
    sget-object v3, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "removePackage Error e="

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public runLoadTask(Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    const-string v1, "mLoaderHandler is null, not start runLoadTask() ..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Lcom/sec/android/app/launcher/data/connectors/DataConnector$ILoadTask;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDoNotNeedCheckChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mDoNotNeedCheckChange:Z

    return-void
.end method

.method protected startLoaderHandler()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;-><init>(Lcom/sec/android/app/launcher/data/connectors/DataConnector;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->startLoading()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    const-string v2, "mLoaderThread.getLooper() is null, not start startLoading() ..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mCancelled:Z

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoaderThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataConnector stop() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->stop()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterLoadListener(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoadListeners:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->mLoadListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateChannel(Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract updateDisplacedItems(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract updateItem(Lcom/sec/daliviews/views/Item;)I
.end method

.method public abstract updateItem(Lcom/sec/daliviews/views/Item;Z)I
.end method

.method public abstract updateItemsPositions(Ljava/util/List;Z)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)I"
        }
    .end annotation
.end method

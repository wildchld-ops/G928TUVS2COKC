.class public Lcom/sec/android/app/launcher/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/DataManager$SortType;,
        Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;,
        Lcom/sec/android/app/launcher/data/DataManager$IDataListener;,
        Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDataConnectors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/DataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->addDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->addDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->addDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->addDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    return-void
.end method

.method private addDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Landroid/os/Bundle;Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p4}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->checkItemLoading(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;Landroid/os/Bundle;Z)V

    :cond_0
    return-void
.end method

.method public deleteItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)V
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->deleteItem(Lcom/sec/daliviews/views/Item;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->destroy()V

    sget-object v1, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete item[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] from DB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->destroy()V

    sget-object v1, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteItem, no connector found, destroy item[id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] without DB update. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->deleteItems(Ljava/util/List;)I

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    return-object v0
.end method

.method public getItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->getItems()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;Lcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;",
            "Lcom/sec/android/app/launcher/data/DataManager$SortType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;ZLcom/sec/android/app/launcher/data/DataManager$SortType;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;",
            "Z",
            "Lcom/sec/android/app/launcher/data/DataManager$SortType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/DataManager;->getItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Ljava/util/List;

    move-result-object v6

    if-eqz p2, :cond_0

    if-nez v6, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v6

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    invoke-interface {p2, v7}, Lcom/sec/android/app/launcher/data/DataManager$IDataFilter;->isInWatchList(Lcom/sec/daliviews/views/Item;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    if-eq p4, v8, :cond_5

    :cond_3
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ITEMS_NOT_TO_SHOW_ONLY:Lcom/sec/android/app/launcher/data/DataManager$SortType;

    if-eq p4, v8, :cond_5

    :cond_4
    sget-object v8, Lcom/sec/android/app/launcher/data/DataManager$SortType;->ALL_ITEMS:Lcom/sec/android/app/launcher/data/DataManager$SortType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p4, v8, :cond_2

    :cond_5
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    :cond_6
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->insertItem(Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->insertItems(Ljava/util/List;)I

    goto :goto_0
.end method

.method public loadItemWithDbId(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;J)Lcom/sec/daliviews/views/Item;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerDataListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->registerListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    :cond_0
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->removePackage(Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->removePackage(Landroid/net/Uri;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/DataManager;->getDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;)Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->removePackage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 4

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public unregisterDataListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->unregisterListener(Lcom/sec/android/app/launcher/data/DataManager$IDataListener;)V

    :cond_0
    return-void
.end method

.method public unregisterLoadCompleteListener(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->unregisterLoadListener(Lcom/sec/android/app/launcher/data/DataManager$ILoadCompleteListener;)V

    :cond_0
    return-void
.end method

.method public updateChannel(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateChannel(Lcom/sec/android/app/launcher/data/connectors/DataConnector$ChannelType;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateDisplacedItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateDisplacedItems(Ljava/util/List;)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update displaced Items"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/daliviews/views/Item;->getItemType()I

    move-result v1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItem(Lcom/sec/daliviews/views/Item;Z)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItem(Lcom/sec/daliviews/views/Item;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/launcher/data/DataManager;->updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V

    return-void
.end method

.method public updateItems(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v0, v2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItem(Lcom/sec/daliviews/views/Item;Z)I

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    const-string v4, "Failed to update an item"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateItemsPositions(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/DataManager;->mDataConnectors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->updateItemsPositions(Ljava/util/List;Z)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/data/DataManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update position each item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

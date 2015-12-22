.class public Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;
.super Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.source "HomePagesConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-direct {v0, p1, v1, p0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->startLoaderHandler()V

    return-void
.end method

.method private buildSelectionClause([J)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    array-length v6, p1

    if-nez v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    array-length v6, p1

    if-lez v6, :cond_3

    const-string v6, "_id in ("

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-wide v4, v0, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x29

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private checkForDelete(Landroid/net/Uri;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/ProviderBase;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->removeItems([J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->checkForDeleteFull()V

    goto :goto_0
.end method

.method private checkForDeleteFull()V
    .locals 4

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->getIdsFromDb(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItemIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->removeItems(Ljava/util/Set;)V

    return-void
.end method

.method private checkForUpdate(Landroid/net/Uri;)V
    .locals 12

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/ProviderBase;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->buildSelectionClause([J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v4, v8

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->createPageItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/HomePageItem;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/sec/android/app/launcher/data/PageItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-nez v0, :cond_1

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, v9}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->addItem(JLcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v10

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private createPageItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/HomePageItem;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Lcom/sec/android/app/launcher/data/HomePageItem;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/HomePageItem;-><init>()V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setDbId(I)V

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setName(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPageOrder(I)V

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPosMenu(I)V

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setEnabled(Z)V

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setDragAndDrop(Z)V

    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setLayoutType(I)V

    const/4 v5, 0x7

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setBufferSize(I)V

    const/16 v5, 0x8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setLayoutOrientation(I)V

    const/16 v5, 0x9

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setSource(I)V

    const/16 v5, 0xa

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCategory(I)V

    const/16 v5, 0xc

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setRearrangement(I)V

    const/16 v5, 0xb

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setContainerFilter(I)V

    const/16 v5, 0xe

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setChangeMode(Z)V

    const/16 v5, 0xf

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setBackgroundColour(I)V

    const/16 v5, 0x10

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_3
    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setLongClickable(Z)V

    const-string v5, "layoutClipping"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    const/16 v5, 0x19

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v5, v6

    :goto_4
    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setLayoutClipping(Z)V

    :cond_0
    const/16 v5, 0x1b

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v6, :cond_6

    :goto_5
    invoke-virtual {v0, v6}, Lcom/sec/android/app/launcher/data/HomePageItem;->setEmptyPage(Z)V

    const/16 v5, 0x11

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSizeWidth(I)V

    const/16 v5, 0x12

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSizeHeight(I)V

    const/16 v5, 0x13

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSpacingHorizontal(I)V

    const/16 v5, 0x14

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setCellSpacingVertical(I)V

    const/16 v5, 0x15

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v5, 0x16

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v5, 0x17

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v5, 0x18

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v2, v4, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setPagePaddings(Landroid/graphics/Rect;)V

    const/16 v5, 0x1a

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/launcher/data/HomePageItem;->setChannel(I)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/launcher/data/HomePageItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    return-object v0

    :cond_1
    move v5, v7

    goto/16 :goto_0

    :cond_2
    move v5, v7

    goto/16 :goto_1

    :cond_3
    move v5, v7

    goto/16 :goto_2

    :cond_4
    move v5, v7

    goto :goto_3

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    move v6, v7

    goto :goto_5
.end method

.method private removeItem(J)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method private removeItems(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->removeItem(J)V

    goto :goto_0
.end method

.method private removeItems([J)V
    .locals 6

    move-object v0, p1

    array-length v4, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCancelled:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->removeItem(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(Lcom/sec/daliviews/views/Item;)I
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public deleteItems(Ljava/util/List;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const-string v0, ","

    if-lez v8, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v7}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v10, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    :cond_2
    return v10
.end method

.method protected getContentUri(Z)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_HOME_PAGES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;
    .locals 10

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/PageItem;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "pageOrder"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "posMenu"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getPosMenu()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "enabled"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->isEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "dragAndDrop"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->canDragAndDrop()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "layout"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutType()Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->ordinal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "orientation"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "sourceType"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getSource()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "category"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getCategory()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "containerFilter"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "rearrangement"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getRearrangement()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "itemMode"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getHomeIconMode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "changeMode"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getChangeMode()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "backgroundColour"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getBackgroundColour()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "longClickable"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getLongClickable()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "cellWidth"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cellHeight"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSizeHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cellSpacingHorizontal"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingHorizontal()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "cellSpacingVertical"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getCellSpacingVertical()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "layoutClipping"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutClipping()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "emptyPage"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getEmptyPage()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/PageItem;->getPagePaddings()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v6, "pagePaddingLeft"

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "pagePaddingTop"

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "pagePaddingRight"

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "pagePaddingBottom"

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez p2, :cond_1

    if-eqz v5, :cond_1

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    long-to-int v1, v6

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/PageItem;->setDbId(I)V

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9, v3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->addItem(JLcom/sec/daliviews/views/Item;)Z

    :cond_1
    return-object v5
.end method

.method public insertItems(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onCheckValidation()V
    .locals 0

    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/ProviderBase;->getNotifyQueryType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->checkForUpdate(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->checkForDelete(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLoadImageCache()V
    .locals 0

    return-void
.end method

.method protected onLoadItems()V
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    const-string v5, "pageOrder ASC"

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->createPageItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/HomePageItem;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, p0}, Lcom/sec/android/app/launcher/data/PageItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, v8}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->addItem(JLcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected removeItemFromCache(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->deleteItem(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_0
    return-void
.end method

.method public updateDisplacedItems(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;)I
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/app/launcher/data/PageItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v4

    if-gtz v4, :cond_0

    :goto_0
    return v6

    :cond_0
    move-object v1, v2

    sget-object v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getDbId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v4, "name"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v4, "pageOrder"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getPageOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "posMenu"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getPosMenu()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "enabled"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "dragAndDrop"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->canDragAndDrop()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "layout"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutType()Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "orientation"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getLayoutOrientation()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sourceType"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getSource()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "category"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getCategory()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerFilter"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getContainerFilter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "rearrangement"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getRearrangement()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "itemMode"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getHomeIconMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "changeMode"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getChangeMode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "backgroundColour"

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/data/PageItem;->getBackgroundColour()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "emptyPage"

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/PageItem;->getEmptyPage()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_0

    :cond_2
    move v4, v6

    goto/16 :goto_1

    :cond_3
    move v5, v6

    goto/16 :goto_2
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;Z)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/HomePagesConnector;->updateItem(Lcom/sec/daliviews/views/Item;)I

    move-result v0

    return v0
.end method

.method public updateItemsPositions(Ljava/util/List;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

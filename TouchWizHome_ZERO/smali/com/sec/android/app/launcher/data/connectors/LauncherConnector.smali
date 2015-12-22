.class public abstract Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;
.super Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.source "LauncherConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;
.implements Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$3;
    }
.end annotation


# static fields
.field protected static final CACHE_ICONS:Z = true

.field protected static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "LauncherConnector"

.field private static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

.field protected mShorcutWidgetsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->DEBUGGABLE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mNonDisableItems:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;ZZLjava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-direct {v0, p1, v1, p0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    new-instance v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-direct {v0, p1, v1, p0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    return-void
.end method

.method private buildSelectionClause([J)Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getWhereClause()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    const-string v6, " and "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getColumnNameId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v4, v0, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/16 v7, 0x29

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private checkForDelete(Landroid/net/Uri;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->removeItems([J)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->checkForDeleteFull()V

    goto :goto_0
.end method

.method private checkForDeleteFull()V
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getIdsFromDb(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItemIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->removeItems(Ljava/util/Set;)V

    return-void
.end method

.method private checkForUpdate(Landroid/net/Uri;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v15

    const-string v2, "packageUpdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->buildSelectionClause([J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getProjectionNoIcon()[Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-nez v2, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v6, v11

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v10, v9, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->checkForChange(Landroid/database/Cursor;Lcom/sec/daliviews/views/Item;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addNewItem(Lcom/sec/android/app/launcher/data/LauncherItem;Z)V

    :cond_3
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyItemUpdated(Lcom/sec/daliviews/views/Item;)V

    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyUpdateCompleted()V

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2

    :cond_6
    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/launcher/data/LauncherItem;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addNewItem(Lcom/sec/android/app/launcher/data/LauncherItem;Z)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyItemsAdded(Ljava/util/List;)V

    goto :goto_3

    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyItemsUpdated(Ljava/util/List;)V

    goto :goto_4
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isNonDisableItem(Lcom/sec/android/app/launcher/data/HomeItem;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->loadNonDisableAppList()V

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized loadNonDisableAppList()V
    .locals 8

    const-class v6, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;

    monitor-enter v6

    :try_start_0
    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mNonDisableItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    monitor-exit v6

    return-void

    :cond_1
    :try_start_1
    const-string v0, "nondisableapps"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mNonDisableItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f060003

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    :try_start_2
    const-string v5, "nondisableapps"

    invoke-static {v4, v5}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v3, v4

    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_2
    const/4 v5, 0x1

    if-eq v2, v5, :cond_0

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_1
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
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

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->removeItem(J)V

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

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->removeItem(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addNewItem(Lcom/sec/android/app/launcher/data/LauncherItem;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->getbadgeCount()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->getBadgeCount()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setBadgeCount(I)V

    :cond_0
    invoke-virtual {p1, p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDbId()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v4, v5, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addItem(JLcom/sec/daliviews/views/Item;Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method protected abstract buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;
.end method

.method protected checkForChange(Landroid/database/Cursor;Lcom/sec/daliviews/views/Item;Z)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mDoNotNeedCheckChange:Z

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mDoNotNeedCheckChange:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_3

    invoke-virtual {p2, v0}, Lcom/sec/daliviews/views/Item;->packageUpdated(Lcom/sec/daliviews/views/Item;)V

    :cond_3
    invoke-virtual {p0, p2, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateCachedItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method protected abstract createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;
.end method

.method public deleteItem(Lcom/sec/daliviews/views/Item;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
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

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getColumnNameId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v9, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    :cond_2
    return v10
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->stop()V

    :cond_0
    return-void
.end method

.method protected abstract getColumnNameIcon()Ljava/lang/String;
.end method

.method protected abstract getColumnNameId()Ljava/lang/String;
.end method

.method protected abstract getProjectionNoIcon()[Ljava/lang/String;
.end method

.method protected abstract getWhereClause()Ljava/lang/String;
.end method

.method public insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mIsSafeMode:Z

    if-eqz v4, :cond_1

    move-object v2, v5

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    instance-of v4, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/FolderItem;->isClone()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v6

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->addFolder(Lcom/sec/android/app/launcher/data/FolderItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyItemAdded(Lcom/sec/daliviews/views/Item;)V

    :cond_2
    move-object v2, v5

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v2, v5

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v5

    goto :goto_0

    :cond_5
    instance-of v4, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v4, :cond_6

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v1, v4

    if-eq v1, v6, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    check-cast p1, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V

    goto :goto_0

    :cond_6
    if-nez p2, :cond_0

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v1, v4

    if-eq v1, v6, :cond_0

    invoke-virtual {p1, v1}, Lcom/sec/daliviews/views/Item;->setDbId(I)V

    int-to-long v4, v1

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, p1, v6}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addItem(JLcom/sec/daliviews/views/Item;Z)V

    goto :goto_0
.end method

.method public insertItems(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;)I"
        }
    .end annotation

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mIsSafeMode:Z

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/content/ContentValues;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0
.end method

.method public loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    instance-of v4, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$3;->$SwitchMap$com$sec$android$app$launcher$providers$LauncherProvider$LauncherValues$ItemType:[I

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->fromInt(I)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_3

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getColumnNameIcon()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    :goto_1
    if-nez v0, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_5

    sget-boolean v4, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->DEBUGGABLE:Z

    if-eqz v4, :cond_2

    const-string v4, "LauncherConnector"

    const-string v5, "bmp is null!! return default icon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LauncherConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "icon == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v2

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v4, "LauncherConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadIconImage() exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method loadItems()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->loadItems()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mBadgeMonitor:Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor;->start()V

    :cond_0
    return-void
.end method

.method protected notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$2;-><init>(Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onBadgeUpdated(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v8, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItemsForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;

    sget-boolean v7, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string v7, "LauncherConnector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "entry key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->getBadgeCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/daliviews/views/Item;

    move-object v6, v4

    check-cast v6, Lcom/sec/android/app/launcher/data/LauncherItem;

    sget-boolean v7, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->DEBUGGABLE:Z

    if-eqz v7, :cond_5

    const-string v7, "LauncherConnector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "item : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getcontainertype : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", item badge count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getBadgeCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->getBadgeCount()I

    move-result v7

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->getBadgeCount()I

    move-result v8

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeCount;->getBadgeCount()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->setBadgeCount(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyBadgeUpdated(Lcom/sec/daliviews/views/Item;)V

    goto :goto_0
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getNotifyQueryType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->checkForUpdate(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->checkForDelete(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadItem(J)Lcom/sec/daliviews/views/Item;
    .locals 11

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/launcher/utils/Utils;->getItemUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getProjectionNoIcon()[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDbId()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5, v8}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addItem(JLcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return-object v8

    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_1
    move-object v8, v9

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected onLoadItems()V
    .locals 13

    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->loadNonDisableAppList()V

    const/4 v7, 0x0

    const-string v9, ""

    const/4 v6, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getProjectionNoIcon()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    instance-of v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    if-eqz v0, :cond_5

    const-string v0, "LauncherConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HOME] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items will be loaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    instance-of v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    invoke-virtual {p0, v12}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start(Landroid/net/Uri;)V

    :cond_3
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCancelled:Z

    if-nez v0, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v7, v11}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDbId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, v8}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->addItem(JLcom/sec/daliviews/views/Item;)V

    instance-of v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[HOME] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getItemType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCellX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getCellY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_4
    :goto_3
    const-string v0, "LauncherConnector"

    const-string v1, "-1"

    const-string v2, "-"

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    instance-of v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;

    if-eqz v0, :cond_1

    const-string v0, "LauncherConnector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[APPS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " items will be loaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "containerId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "pos"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_1

    :cond_6
    instance-of v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[APPS] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getItemType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getContainerType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_3

    :cond_7
    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0
.end method

.method protected removeItem(J)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->removeItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V

    return-void
.end method

.method protected removeItemFromCache(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

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

.method protected abstract updateCachedItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)Z
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateItem(Lcom/sec/daliviews/views/Item;Z)I

    move-result v0

    return v0
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;Z)I
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mIsSafeMode:Z

    if-eqz v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v2, 0x0

    if-eqz p2, :cond_2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "container"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "containerId"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellX"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "cellY"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanX"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "spanY"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0
.end method

.method public updateItemsInFolder(Lcom/sec/android/app/launcher/data/FolderItem;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->hasItems()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/Item;->setContainerType(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/Item;->setContainerId(I)V

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/daliviews/views/Item;->setCustomContainerId(I)V

    invoke-virtual {v1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->updateItemsPositions(Ljava/util/List;Z)I

    new-instance v4, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->insertItems(Ljava/util/List;)I

    goto :goto_0
.end method

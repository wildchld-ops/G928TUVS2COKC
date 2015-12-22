.class public Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;
.super Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;
.source "LauncherFavoritesConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;
.implements Lcom/sec/android/app/launcher/data/monitors/BadgeMonitor$BadgeUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$3;
    }
.end annotation


# static fields
.field private static final CLAUSE_FAVORITES:Ljava/lang/String;

.field private static final COL_APPWIDGETID:I = 0xa

.field private static final COL_CELLX:I = 0x4

.field private static final COL_CELLY:I = 0x5

.field private static final COL_COLOR:I = 0xf

.field private static final COL_CONTAINER:I = 0x2

.field private static final COL_CONTAINER_ID:I = 0x3

.field private static final COL_CUE:I = 0x11

.field private static final COL_ID:I = 0x0

.field private static final COL_INTENT:I = 0x9

.field private static final COL_IS_SYSTEM_APP:I = 0xe

.field private static final COL_ITEMTYPE:I = 0x1

.field private static final COL_SHOW:I = 0xc

.field private static final COL_SPANX:I = 0x6

.field private static final COL_SPANY:I = 0x7

.field private static final COL_TITLE:I = 0x8

.field private static final COL_USER_ID:I = 0x10

.field private static final CSC_FILE_EXTRA_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace_extra.xml"

.field private static final PREFERENCES_CHANGE_DIALER:Ljava/lang/String; = "change_dialer"

.field private static final PROJ_ICON_AND_PREVIEW:[Ljava/lang/String;

.field private static final PROJ_NO_ICON:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "FavoritesConnector"

.field private static final TAG_EXTRAAPPS:Ljava/lang/String; = "extraapps"

.field private static final TAG_EXTRAFOTA_FOLDER_ITEM:Ljava/lang/String; = "folder"

.field private static final TAG_EXTRAFOTA_HOME_ITEM:Ljava/lang/String; = "home"

.field private static final TAG_EXTRAFOTA_VERSION:Ljava/lang/String; = "version"

.field private static final mContentUri:Landroid/net/Uri;

.field private static mInstance:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;


# instance fields
.field private mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

.field mCutomerDialerChangeListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContentUri:Landroid/net/Uri;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "itemType"

    aput-object v1, v0, v4

    const-string v1, "container"

    aput-object v1, v0, v5

    const-string v1, "containerId"

    aput-object v1, v0, v6

    const-string v1, "cellX"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "intent"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "show"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iconMode"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "isSystemApp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "newCue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->PROJ_NO_ICON:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "icon"

    aput-object v1, v0, v4

    const-string v1, "preview"

    aput-object v1, v0, v5

    const-string v1, "iconPackage"

    aput-object v1, v0, v6

    const-string v1, "iconResource"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "newCue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->PROJ_ICON_AND_PREVIEW:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->EVENTTHEME:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->CLAUSE_FAVORITES:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCutomerDialerChangeListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

    sput-object p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mInstance:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    sget-boolean v0, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerDialerChange:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCutomerDialerChangeListener:Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->startLoaderHandler()V

    return-void
.end method

.method private changeDialer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 29

    const/16 v24, 0x0

    const/16 v22, 0x0

    const/16 v16, -0x1

    const/16 v25, 0x0

    const/16 v23, 0x0

    if-eqz p5, :cond_4

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/daliviews/views/Item;

    move-object/from16 v2, v21

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_7

    const/16 v24, 0x1

    move-object/from16 v25, v21

    :cond_1
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_0

    :cond_2
    if-eqz v24, :cond_3

    if-nez v25, :cond_9

    :cond_3
    const-string v2, "FavoritesConnector"

    const-string v3, "There is no old dialer app in hotseat"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v16

    const/4 v2, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    const-string v2, "FavoritesConnector"

    const-string v3, "HomeScreen Default Page Index is -1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    :cond_5
    const/4 v14, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pageOrder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    :cond_6
    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catch_0
    move-exception v15

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2

    :cond_7
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    if-nez v22, :cond_8

    move-object/from16 v23, v21

    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_1

    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setBadgeCount(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->notifyBadgeUpdated(Lcom/sec/daliviews/views/Item;)V

    if-eqz v22, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;

    move-result-object v9

    if-nez v9, :cond_a

    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeDialer() - buildContentValues returns null Old : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    const-string v2, "iconMode"

    invoke-virtual {v9, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "container"

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "containerId"

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellX"

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "show"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id"

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    :goto_3
    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;

    move-result-object v10

    if-nez v10, :cond_c

    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeDialer() - buildContentValues returns null New : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_b
    const-string v2, "FavoritesConnector"

    const-string v3, "newDialerInHomeDefaultPage is false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v2, "iconMode"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->removeItemFromPackage(Lcom/sec/daliviews/views/Item;)V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/sec/daliviews/views/Item;->setTitle(Ljava/lang/String;)V

    :cond_d
    move-object/from16 v2, v23

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v3, v23

    check-cast v3, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v2, v23

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v3, v23

    check-cast v3, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setPackageName(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v2, v23

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v3, v23

    check-cast v3, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setComponentName(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->addItemForPackageName(Lcom/sec/daliviews/views/Item;)V

    :goto_4
    const-string v2, "container"

    invoke-virtual/range {v25 .. v25}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "containerId"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "cellX"

    invoke-virtual/range {v25 .. v25}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cellY"

    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "show"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "_id"

    invoke-virtual/range {v25 .. v25}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "packageUpdate"

    const-string v6, "true"

    invoke-virtual {v2, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    if-eqz v22, :cond_11

    invoke-virtual/range {v23 .. v23}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->removeItem(J)V

    :cond_11
    move-object/from16 v6, p0

    move/from16 v11, p5

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->changeDialerToDB(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/ContentValues;Z)V

    goto/16 :goto_2

    :cond_12
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v12, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const/16 v27, 0x0

    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v19

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    if-eqz v18, :cond_13

    const-string v2, "icon"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/launcher/utils/Utils;->getBytesFromDrawable(Landroid/graphics/drawable/Drawable;)[B

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    const-string v2, "intent"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "title"

    move-object/from16 v0, v27

    invoke-virtual {v10, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "itemType"

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->removeItemFromPackage(Lcom/sec/daliviews/views/Item;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/daliviews/views/Item;->setTitle(Ljava/lang/String;)V

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setPackageName(Ljava/lang/String;)V

    move-object/from16 v2, v25

    check-cast v2, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setComponentName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->addItemForPackageName(Lcom/sec/daliviews/views/Item;)V

    goto/16 :goto_4

    :cond_13
    :try_start_3
    const-string v2, "icon"

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private changeDialerToDB(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/content/ContentValues;Z)V
    .locals 8

    iget-object v7, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$2;-><init>(Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/net/Uri;Landroid/content/ContentValues;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkWidgetIdsValidation()V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getFistRunVersion(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v2, "FavoritesConnector"

    const-string v3, "checkWidgetValidation => return, it is not FirstRun!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setFistRunVersion(Landroid/content/Context;Z)V

    const/16 v22, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    const-string v28, "profileId=? AND itemType=?"

    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "profileId=? AND itemType=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, "appWidgetId"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    const-string v2, "intent"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    :cond_2
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v0, v19

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v22, :cond_2

    invoke-virtual {v11, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v30

    if-nez v30, :cond_2

    const/16 v22, 0x1

    goto :goto_0

    :cond_3
    if-eqz v13, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetIDsMap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needRefreashWidgetId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v22, :cond_0

    new-instance v8, Landroid/appwidget/AppWidgetHost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    const/16 v3, 0x400

    invoke-direct {v8, v2, v3}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    const/16 v23, 0x0

    const/4 v12, 0x0

    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/util/Pair;

    const/4 v12, 0x0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    if-eqz v23, :cond_6

    const/16 v20, 0x0

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v23

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v20

    if-eqz v20, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    :cond_6
    if-eqz v12, :cond_5

    invoke-virtual {v8}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v10

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v11, v10, v0, v12, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    const-string v2, "appWidgetId"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v31

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v32

    move-object/from16 v0, v25

    invoke-virtual {v3, v4, v0, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception v15

    :try_start_2
    const-string v2, "FavoritesConnector"

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetIDsMap : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needRefreashWidgetId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    if-eqz v13, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    const-string v3, "FavoritesConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "appWidgetIDsMap : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FavoritesConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needRefreashWidgetId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :catch_1
    move-exception v15

    goto/16 :goto_2

    :cond_9
    const-string v2, "FavoritesConnector"

    const-string v3, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "FavoritesConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindAppWidgetIdIfAllowed failed, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v10}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    goto/16 :goto_2
.end method

.method private extraUpdateByFota()V
    .locals 42

    const/16 v22, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    :try_start_0
    new-instance v15, Ljava/io/File;

    const-string v5, "/system/csc/default_workspace_extra.xml"

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v5, v38, v40

    if-lez v5, :cond_8

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v21

    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/16 v35, 0x0

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    const-string v5, "extraapps"

    move-object/from16 v0, v35

    invoke-static {v0, v5}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    :goto_0
    const/4 v5, 0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_7

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v34

    const/4 v5, 0x2

    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    const-string v5, "version"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "home"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "folder"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    const/4 v5, 0x4

    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    const-string v5, "version"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v20

    :cond_1
    :goto_1
    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    goto :goto_0

    :cond_2
    const-string v5, "home"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v16

    move-object/from16 v22, v23

    :goto_2
    :try_start_2
    sget-boolean v5, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string v5, "FavoritesConnector"

    const-string v38, "Got exception parsing extra item."

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    if-eqz v22, :cond_4

    :try_start_3
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "FavoritesConnector"

    const-string v38, "extra fota => return, item is empty"

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_5
    :try_start_4
    const-string v5, "folder"

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface/range {v35 .. v35}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v16

    move-object/from16 v22, v23

    :goto_5
    :try_start_5
    sget-boolean v5, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->DEBUGGABLE:Z

    if-eqz v5, :cond_6

    const-string v5, "FavoritesConnector"

    const-string v38, "Got exception parsing extra item."

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    if-eqz v22, :cond_4

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v16

    const-string v5, "FavoritesConnector"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    move-object/from16 v22, v23

    :cond_8
    if-eqz v22, :cond_4

    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v16

    const-string v5, "FavoritesConnector"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_4
    move-exception v16

    const-string v5, "FavoritesConnector"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_5
    move-exception v16

    :goto_6
    :try_start_8
    sget-boolean v5, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->DEBUGGABLE:Z

    if-eqz v5, :cond_9

    const-string v5, "FavoritesConnector"

    const-string v38, "Got exception parsing extra item."

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_9
    if-eqz v22, :cond_4

    :try_start_9
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto/16 :goto_3

    :catch_6
    move-exception v16

    const-string v5, "FavoritesConnector"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    :goto_7
    if-eqz v22, :cond_a

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    :cond_a
    :goto_8
    throw v5

    :catch_7
    move-exception v16

    const-string v38, "FavoritesConnector"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getExtraWorkspaceVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "extra fota => return, version equal, version: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", extraVersion: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v16

    const-string v5, "FavoritesConnector"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_c
    :try_start_c
    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Start about adding extra item... FOTA, version: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ", extraVersion: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v8

    const-wide/16 v6, -0x1

    const/16 v25, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v38, 0x7f0d0072

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getFolderID(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v38, 0x0

    cmp-long v5, v6, v38

    if-gez v5, :cond_d

    const-string v5, "Microsoft%"

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getFolderID(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_d
    const-wide/16 v38, 0x0

    cmp-long v5, v6, v38

    if-lez v5, :cond_f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getFolderItems(JJLjava/util/ArrayList;)I

    move-result v25

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_e
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_10
    :goto_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ComponentName;

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "package: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " activities is empty..."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_11
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_12
    :goto_b
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    const-string v5, "container"

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerId"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cellX"

    rem-int/lit8 v38, v25, 0x3

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cellY"

    div-int/lit8 v38, v25, 0x3

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v25, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->makeDBvalue(Landroid/content/ContentValues;JLandroid/content/pm/LauncherActivityInfo;)V

    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Add folder : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "title"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_b

    :cond_13
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_14
    :goto_c
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v33

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getWorkspaceID(Landroid/content/ComponentName;IJ)J

    move-result-wide v38

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getWorkspaceID(Landroid/content/ComponentName;IJ)J

    move-result-wide v40

    add-long v30, v38, v40

    const-wide/16 v38, 0x0

    cmp-long v5, v30, v38

    if-gez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mLauncherApps:Landroid/content/pm/LauncherApps;

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "package: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " activities is empty..."

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_15
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_16
    :goto_d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    const/16 v38, 0x1

    const/16 v39, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v5, v0, v1}, Lcom/sec/android/app/launcher/services/LauncherService;->findVacantCell(Landroid/content/Context;ZZ)[I

    move-result-object v24

    if-eqz v24, :cond_17

    const-string v5, "container"

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v38 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerId"

    const/16 v38, 0x0

    aget v38, v24, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cellX"

    const/16 v38, 0x1

    aget v38, v24, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "cellY"

    const/16 v38, 0x2

    aget v38, v24, v38

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->makeDBvalue(Landroid/content/ContentValues;JLandroid/content/pm/LauncherActivityInfo;)V

    const-string v5, "FavoritesConnector"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Add workspace : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "title"

    move-object/from16 v0, v32

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v38, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_d

    :cond_17
    const-string v5, "FavoritesConnector"

    const-string v38, "insertOrUpdateActivitiesToApps(), findVacantCell is null"

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-static {v5, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setExtraWorkspaceVersion(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    :catchall_1
    move-exception v5

    move-object/from16 v22, v23

    goto/16 :goto_7

    :catch_9
    move-exception v16

    move-object/from16 v22, v23

    goto/16 :goto_6

    :catch_a
    move-exception v16

    goto/16 :goto_5

    :catch_b
    move-exception v16

    goto/16 :goto_2
.end method

.method private getFolderID(Ljava/lang/String;J)J
    .locals 12

    const-wide/16 v8, -0x1

    const-string v3, "profileId=? AND itemType=? AND title like ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object p1, v4, v0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v8

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "FavoritesConnector"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getFolderItems(JJLjava/util/ArrayList;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)I"
        }
    .end annotation

    const/4 v9, -0x1

    const-string v4, "profileId=? AND container=? AND containerId=?"

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v1, "intent"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v1, 0x0

    invoke-static {v12, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string v1, "FavoritesConnector"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v9

    :cond_2
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    :cond_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static getInstance()Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mInstance:Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    return-object v0
.end method

.method private getShortcutWidgetTitle(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v6, 0x10200000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v3, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    :cond_1
    return-object v5
.end method

.method private getWorkspaceID(Landroid/content/ComponentName;IJ)J
    .locals 13

    const-wide/16 v10, -0x1

    const-string v3, "profileId=? AND container=? AND intent like ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%component="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";end%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-wide v10

    :catch_0
    move-exception v7

    :try_start_1
    const-string v0, "FavoritesConnector"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private makeDBvalue(Landroid/content/ContentValues;JLandroid/content/pm/LauncherActivityInfo;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "itemType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "spanY"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual {p4}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "intent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "color"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "show"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "isSystemApp"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, "profileId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;
    .locals 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v7

    if-ge v7, v8, :cond_0

    invoke-virtual {p1, v8}, Lcom/sec/daliviews/views/Item;->setSpanX(I)V

    :cond_0
    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v7

    if-ge v7, v8, :cond_1

    invoke-virtual {p1, v8}, Lcom/sec/daliviews/views/Item;->setSpanY(I)V

    :cond_1
    instance-of v7, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v7, :cond_7

    move-object v4, p1

    check-cast v4, Lcom/sec/android/app/launcher/data/HomeItem;

    const-string v7, "title"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "iconMode"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getCurrentMode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "profileId"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "newCue"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->isNewCue()Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v7

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    if-ne v7, v10, :cond_2

    const-string v7, "iconType"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconType()I

    move-result v7

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v10

    if-ne v7, v10, :cond_2

    const-string v7, "iconPackage"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconPackgae()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "iconResource"

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconResource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_4

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getIconImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v8}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getColumnNameIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {p0, v7, v10, v12, v13}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v0, v7, v10, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v7, "icon"

    invoke-virtual {v2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_4
    :goto_1
    instance-of v7, p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-eqz v7, :cond_5

    const-string v10, "show"

    move-object v7, p1

    check-cast v7, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v7

    if-eqz v7, :cond_a

    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    const-string v7, "itemType"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "container"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "containerId"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "cellX"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "cellY"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "spanX"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "spanY"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "intent"

    check-cast p1, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v2

    :cond_6
    move v7, v9

    goto/16 :goto_0

    :cond_7
    instance-of v7, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v7, :cond_8

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v7, "title"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "color"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_8
    instance-of v7, p1, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    if-eqz v7, :cond_9

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    const-string v7, "title"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "appWidgetId"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getWidgetId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "profileId"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->getUserId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    :cond_9
    instance-of v7, p1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    if-nez v7, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_a
    move v9, v8

    goto/16 :goto_2
.end method

.method public checkChangeDialer(Z)V
    .locals 11

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCustomerDialerClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getCustomerDialerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->getOemDialerPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "FavoritesConnector"

    const-string v5, "CustomerDialer or OemDialer info is null"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "skt_phone20_settings"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_2

    const-string v0, "FavoritesConnector"

    const-string v5, "OEM -> Customer phone app"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->changeDialer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "FavoritesConnector"

    const-string v5, "Customer -> OEM phone app"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p0

    move-object v6, v3

    move-object v7, v4

    move-object v8, v1

    move-object v9, v2

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->changeDialer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 28

    const/4 v14, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->fromInt(I)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    move-result-object v16

    sget-object v23, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector$3;->$SwitchMap$com$sec$android$app$launcher$providers$LauncherProvider$LauncherValues$ItemType:[I

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v24

    aget v23, v23, v24

    packed-switch v23, :pswitch_data_0

    const/16 v23, 0x0

    :goto_0
    return-object v23

    :pswitch_0
    new-instance v11, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {v11}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    const/4 v4, 0x0

    const/16 v23, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v12, 0x0

    if-eqz v13, :cond_1

    sget-object v23, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    const/16 v23, 0x0

    :try_start_0
    move/from16 v0, v23

    invoke-static {v13, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_1
    if-nez v12, :cond_0

    const/16 v23, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string v23, "FavoritesConnector"

    const-string v24, "createItem failed to parse intent URI"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v7, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_2
    if-nez v4, :cond_3

    sget-object v23, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    if-eqz v13, :cond_2

    const/16 v23, 0x0

    :try_start_1
    move/from16 v0, v23

    invoke-static {v13, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v13}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getShortcutWidgetTitle(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    :cond_2
    :goto_3
    if-nez v4, :cond_3

    const/16 v23, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_5

    const-string v23, "FavoritesConnector"

    const-string v24, "createItem failed to find Title"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual {v12}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/launcher/utils/Utils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :catch_1
    move-exception v9

    const-string v23, "FavoritesConnector"

    const-string v24, "createItem failed to parse intent URI"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v9

    const-string v23, "FavoritesConnector"

    const-string v24, "createItem failed to get shortcut widget\'s title"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    invoke-virtual {v11, v4}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(Ljava/lang/String;)V

    const/16 v23, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-nez v23, :cond_6

    const/16 v23, 0x1

    :goto_4
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setHidden(Z)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v23

    if-eqz v23, :cond_7

    const v23, 0x7f0b00d8

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    :goto_5
    const/16 v23, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    const/16 v23, 0x1

    :goto_6
    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setIsSystemApp(Z)V

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setItemType(I)V

    move-object v14, v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mIsSafeMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_9

    if-eqz v13, :cond_9

    const/16 v23, 0x0

    :try_start_2
    move/from16 v0, v23

    invoke-static {v13, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v12

    :goto_7
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Lcom/sec/android/app/launcher/utils/Utils;->isSystemApp(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v23, 0x0

    goto :goto_4

    :cond_7
    const v23, 0x7f0b00d7

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    goto :goto_5

    :cond_8
    const/16 v23, 0x0

    goto :goto_6

    :catch_3
    move-exception v9

    const-string v23, "FavoritesConnector"

    const-string v24, "createItem failed to parse intent URI"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_1
    new-instance v10, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {v10}, Lcom/sec/android/app/launcher/data/FolderItem;-><init>()V

    const/16 v23, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setTitle(Ljava/lang/String;)V

    const/16 v23, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderColor(I)V

    move-object v14, v10

    :cond_9
    :goto_8
    :pswitch_2
    if-eqz v14, :cond_a

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDbId(I)V

    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerType(I)V

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerId(I)V

    const/16 v23, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    const/16 v23, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    const/16 v23, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    const/16 v23, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    const/16 v23, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    const/16 v23, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setUserId(J)V

    const/16 v23, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v23, 0x1

    :goto_9
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setNewCue(Z)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    :cond_a
    move-object/from16 v23, v14

    goto/16 :goto_0

    :pswitch_3
    new-instance v6, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v6}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    const/16 v23, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getWidgetInfo(Landroid/content/Context;I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v22

    if-eqz v22, :cond_b

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    new-instance v5, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setTitle(Ljava/lang/String;)V

    const/16 v23, 0x0

    aget v23, v18, v23

    const/16 v24, 0x1

    aget v24, v18, v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setMinSpanXY(II)V

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    move-object v14, v5

    goto/16 :goto_8

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mIsSafeMode:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v23, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_id="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v23, "FavoritesConnector"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "createItem() - Widget id "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " is not exists."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_4
    sget-object v17, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/16 v23, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    :try_start_3
    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v12

    if-nez v12, :cond_c

    const-string v23, "FavoritesConnector"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "createItem() - intent is null : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    const-string v25, "themename"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v19

    new-instance v15, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v15, v0, v1}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;-><init>(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_5

    const/16 v23, 0x4

    :try_start_4
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v18, v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    const/16 v23, 0x0

    aget v23, v18, v23

    const/16 v24, 0x1

    aget v24, v18, v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMinSpanXY(II)V

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v23, 0x3

    aget v23, v18, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    const/16 v23, 0x2

    aget v23, v18, v23

    const/16 v24, 0x3

    aget v24, v18, v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMaxSpanXY(II)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_d
    move-object v14, v15

    goto/16 :goto_8

    :catch_4
    move-exception v9

    :goto_a
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/16 v23, 0x0

    goto/16 :goto_0

    :catch_5
    move-exception v9

    :goto_b
    const-string v23, "FavoritesConnector"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Exception when parsing URI:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " SurfaceWidget will not be added"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/16 v23, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_9

    :catch_6
    move-exception v9

    move-object v14, v15

    goto :goto_b

    :catch_7
    move-exception v9

    move-object v14, v15

    goto :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public destroy()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->destroy()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->stop()V

    :cond_0
    return-void
.end method

.method protected getColumnNameIcon()Ljava/lang/String;
    .locals 1

    const-string v0, "icon"

    return-object v0
.end method

.method protected getColumnNameId()Ljava/lang/String;
    .locals 1

    const-string v0, "_id"

    return-object v0
.end method

.method protected getContentUri(Z)Landroid/net/Uri;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected getProjectionNoIcon()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->PROJ_NO_ICON:[Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method protected getWhereClause()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->CLAUSE_FAVORITES:Ljava/lang/String;

    return-object v0
.end method

.method protected onCheckValidation()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getAppsValidationChecker()Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mIsSafeMode:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->run(ZZ)V

    :cond_0
    return-void
.end method

.method protected onLoadImageCache()V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContentUri:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->PROJ_ICON_AND_PREVIEW:[Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->CLAUSE_FAVORITES:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v22

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-nez v4, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v4, 0x5

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v8, v15

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_2

    move-object/from16 v0, v20

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v17, v0

    const/4 v11, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v4

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getColumnNameIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-nez v4, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v16

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_3
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v8, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    move-object/from16 v0, v24

    invoke-static {v8, v9, v0}, Lcom/sec/android/app/launcher/utils/Utils;->getLauncherActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v8

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v8, v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_4

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_4
    if-eqz v11, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4, v15, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateHomeIcon(ILandroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4

    :cond_5
    const/4 v4, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getColumnNameIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-nez v4, :cond_2

    if-eqz v11, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-nez v4, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v8, v15

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_7

    move-object/from16 v0, v20

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getItemType()I

    move-result v4

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getColumnNameIcon()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v4, v8, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getBitmapFromDb(Landroid/net/Uri;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_9

    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    if-eqz v18, :cond_9

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    :try_start_4
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v4, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->getIconWidth(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/launcher/utils/Utils;->getIconHeight(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/data/LauncherItem;->getUserId()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v10, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v10

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;IIILandroid/os/UserHandle;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    :cond_8
    :goto_3
    if-eqz v11, :cond_9

    :try_start_5
    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V

    const-string v4, "icon"

    invoke-static {v11}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-nez v4, :cond_7

    if-eqz v11, :cond_7

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2

    :catch_1
    move-exception v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_a
    sget-boolean v4, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerDialerChange:Z

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    if-eqz v4, :cond_b

    const/4 v12, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    const-string v8, "com.sec.android.app.launcher.prefs"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    const-string v4, "change_dialer"

    const/4 v8, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "FavoritesConnector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LauncherFavoritesConnector onLoadImageCache change_dialer = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v12, :cond_b

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->checkChangeDialer(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_b
    invoke-static {v14}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0
.end method

.method protected onLoadItems()V
    .locals 8

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->extraUpdateByFota()V

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->checkWidgetIdsValidation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "FavoritesConnector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extraUpdateByFota() duration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->onLoadItems()V

    sget-boolean v1, Lcom/sec/android/app/launcher/utils/LauncherFeature;->mUseCustomerDialerChange:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCustomerDialerChangeMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    const-string v4, "skt_phone20_settings"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start(Landroid/net/Uri;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FavoritesConnector"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onPostLoadItems()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/views/Item;

    instance-of v4, v2, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->mCancelled:Z

    if-eqz v4, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    goto :goto_0
.end method

.method protected updateCachedItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/sec/daliviews/views/Item;->update(Lcom/sec/daliviews/views/Item;Z)Z

    move-result v0

    instance-of v1, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/sec/android/app/launcher/data/HomeItem;

    check-cast p1, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/HomeItem;->getBadgeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/HomeItem;->setBadgeCount(I)V

    :cond_0
    return v0
.end method

.method public updateDisplacedItems(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)I"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    iget v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanX:I

    if-ge v4, v5, :cond_0

    iput v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanX:I

    :cond_0
    iget v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanY:I

    if-ge v4, v5, :cond_1

    iput v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanY:I

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "container"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerId"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cellX"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cellY"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewCellY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanX"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanX:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    iget v7, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewSpanY:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "profileId"

    iget-object v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getUserId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "newCue"

    iget-object v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    check-cast v4, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->isNewCue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v4

    const-string v5, "favorites"

    invoke-virtual {v4, v5, v3, v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateDisplacedItems(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v4

    return v4
.end method

.method public updateItemsPositions(Ljava/util/List;Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;Z)I"
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerId"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getContainerId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellX"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCellX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "cellY"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCellY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanX"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getSpanX()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanY"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getSpanY()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v5

    const-string v6, "favorites"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateDisplacedItems(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v0

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->notifyItemsUpdated(Ljava/util/List;)V

    :cond_1
    return v0
.end method

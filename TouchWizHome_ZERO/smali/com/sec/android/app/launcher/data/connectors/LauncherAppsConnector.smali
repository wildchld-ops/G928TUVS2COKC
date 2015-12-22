.class public Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;
.super Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;
.source "LauncherAppsConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector$2;
    }
.end annotation


# static fields
.field private static final CLAUSE_APPS:Ljava/lang/String;

.field private static final COL_COLOR:I = 0x8

.field private static final COL_COMPONENT_NAME:I = 0x7

.field private static final COL_CONTAINER:I = 0x2

.field private static final COL_CONTAINER_ID:I = 0x3

.field private static final COL_CUE:I = 0xb

.field private static final COL_HIDDEN:I = 0x5

.field private static final COL_ID:I = 0x0

.field private static final COL_IS_SYSTEM_APP:I = 0x9

.field private static final COL_ITEMTYPE:I = 0x1

.field private static final COL_POS:I = 0x4

.field private static final COL_TITLE:I = 0x6

.field private static final COL_USER_ID:I = 0xa

.field private static final PROJ_ICON:[Ljava/lang/String;

.field private static final PROJ_NO_ICON:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppsConnector"

.field private static final mContentUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContentUri:Landroid/net/Uri;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "itemType"

    aput-object v1, v0, v4

    const-string v1, "container"

    aput-object v1, v0, v5

    const-string v1, "containerId"

    aput-object v1, v0, v6

    const-string v1, "pos"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "color"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isSystemApp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "newCue"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->PROJ_NO_ICON:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "icon"

    aput-object v1, v0, v4

    const-string v1, "profileId"

    aput-object v1, v0, v5

    const-string v1, "newCue"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->PROJ_ICON:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->CLAUSE_APPS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->startLoaderHandler()V

    return-void
.end method


# virtual methods
.method protected buildContentValues(Lcom/sec/daliviews/views/Item;)Landroid/content/ContentValues;
    .locals 14

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    instance-of v9, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v9, :cond_4

    move-object v6, p1

    check-cast v6, Lcom/sec/android/app/launcher/data/HomeItem;

    const-string v9, "title"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "hidden"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v10

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "isSystemApp"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v9

    if-ne v9, v10, :cond_2

    move v9, v10

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "profileId"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "newCue"

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/data/HomeItem;->isNewCue()Z

    move-result v12

    if-eqz v12, :cond_3

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const-string v9, "componentName"

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_3
    const-string v9, "itemType"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getItemType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "container"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "containerId"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "pos"

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_4
    return-object v3

    :cond_1
    move v9, v11

    goto/16 :goto_0

    :cond_2
    move v9, v11

    goto :goto_1

    :cond_3
    move v10, v11

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    :cond_4
    instance-of v9, p1, Lcom/sec/android/app/launcher/data/FolderItem;

    if-eqz v9, :cond_6

    move-object v5, p1

    check-cast v5, Lcom/sec/android/app/launcher/data/FolderItem;

    const-string v9, "title"

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "hidden"

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->isHidden()Z

    move-result v12

    if-eqz v12, :cond_5

    :goto_5
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "color"

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :cond_5
    move v10, v11

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    goto :goto_4
.end method

.method protected createItem(Landroid/database/Cursor;Z)Lcom/sec/android/app/launcher/data/LauncherItem;
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector$2;->$SwitchMap$com$sec$android$app$launcher$providers$LauncherProvider$LauncherValues$ItemType:[I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->fromInt(I)Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    aget v6, v6, v10

    packed-switch v6, :pswitch_data_0

    move-object v6, v9

    :goto_0
    return-object v6

    :pswitch_0
    new-instance v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {v3}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setComponentName(Ljava/lang/String;)V

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_0

    move v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setIsSystemApp(Z)V

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setItemType(I)V

    move-object v4, v3

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mIsSafeMode:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemApp()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v9

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    :pswitch_1
    new-instance v2, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-direct {v2}, Lcom/sec/android/app/launcher/data/FolderItem;-><init>()V

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/android/app/launcher/data/FolderItem;->setFolderColor(I)V

    move-object v4, v2

    :cond_1
    if-eqz v4, :cond_3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDbId(I)V

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCustomPosition(II)V

    invoke-virtual {v4, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerType(I)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    invoke-virtual {v4, v7}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->setHidden(Z)V

    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->setUserId(J)V

    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v7, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {v4, v8}, Lcom/sec/android/app/launcher/data/LauncherItem;->setNewCue(Z)V

    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    instance-of v6, v4, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v6, :cond_5

    if-ne p2, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/LauncherItem;->getUserId()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    :cond_3
    :goto_3
    move-object v6, v4

    goto/16 :goto_0

    :cond_4
    move v6, v8

    goto :goto_2

    :cond_5
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected getProjectionNoIcon()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->PROJ_NO_ICON:[Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_MENU_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method protected getWhereClause()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->CLAUSE_APPS:Ljava/lang/String;

    return-object v0
.end method

.method public loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->notifyBadgeUpdated(Lcom/sec/daliviews/views/Item;)V

    return-object v0
.end method

.method protected notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    instance-of v2, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->removeBitmapByPackage(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector$1;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector$1;-><init>(Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;Lcom/sec/daliviews/views/Item;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onCheckValidation()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getAppsValidationChecker()Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mIsSafeMode:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;->run(ZZ)V

    :cond_0
    return-void
.end method

.method protected onLoadImageCache()V
    .locals 28

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContentUri:Landroid/net/Uri;

    sget-object v6, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->PROJ_ICON:[Ljava/lang/String;

    sget-object v7, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->CLAUSE_APPS:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v23

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v17

    const/16 v19, 0x0

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_9

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v6, v14

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_2

    move-object/from16 v0, v20

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v25

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    :cond_4
    const/4 v10, 0x0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v5, v12, v0}, Lcom/sec/android/app/launcher/utils/Utils;->getLauncherActivityInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v5

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v5, v1}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeAppIcon(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    if-eqz v11, :cond_5

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->updateBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Z

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_2

    if-eqz v10, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v4

    invoke-virtual {v4, v14, v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateAppsIcon(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v15

    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4

    :cond_6
    :try_start_3
    const-string v4, "AppsConnector"

    const-string v5, "onLoadImageCache(Theme),  DefaultIcon"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    goto :goto_2

    :cond_7
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    if-nez v10, :cond_8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->decodeBitmap(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_2

    if-eqz v10, :cond_2

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getChangedTheme(I)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_a

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/theme/ThemeManager;->updateIconThemePackageName()V

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->setChangedTheme(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_a
    :goto_3
    invoke-static {v13}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_b
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v17

    const/16 v19, 0x0

    const-string v4, "AppsConnector"

    const-string v5, "iconCache Start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_13

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mUserManager:Landroid/os/UserManager;

    move-wide/from16 v0, v26

    invoke-virtual {v4, v0, v1}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v6, v14

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/data/LauncherItem;

    move-object/from16 v0, v20

    instance-of v4, v0, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v4, :cond_c

    move-object/from16 v0, v20

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/launcher/data/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_c

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getBitmap(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getThemeManager()Lcom/sec/android/app/launcher/theme/ThemeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/theme/ThemeManager;->getThemeLoader()Lcom/sec/android/app/launcher/theme/ThemeLoader;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->APP_ICON:Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/theme/ThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/launcher/theme/ThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_f
    if-nez v10, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getIcon(Landroid/content/Context;Lcom/sec/android/app/launcher/data/HomeItem;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_10
    if-eqz v10, :cond_12

    move-object/from16 v0, v17

    move-wide/from16 v1, v26

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->addBitmap(JLjava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :goto_5
    if-nez v10, :cond_11

    const-string v4, "AppsConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLoadImageCache,  DefaultIcon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/data/LauncherItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-nez v4, :cond_c

    if-eqz v10, :cond_c

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_12
    const-string v4, "AppsConnector"

    const-string v5, "onLoadImageCache, bmp not cached"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_13
    const-string v4, "AppsConnector"

    const-string v5, "iconCache End"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method protected onPostLoadItems()V
    .locals 5

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

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

    iget-boolean v4, p0, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->mCancelled:Z

    if-eqz v4, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->getIntent()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isNonDisable()Z

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/data/HomeItem;->isSystemSigned()Z

    goto :goto_0
.end method

.method public removePackage(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->removeBitmapByPackage(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/LauncherConnector;->removePackage(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method protected updateCachedItem(Lcom/sec/daliviews/views/Item;Lcom/sec/daliviews/views/Item;)Z
    .locals 3

    const/4 v1, 0x1

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/daliviews/dragAndDrop/DisplacedItem;",
            ">;)I"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "container"

    iget v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerId"

    iget v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mNewContainerDbId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    const-string v4, "pos"

    iget-object v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getPos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-object v4, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v4}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "pos"

    iget-object v5, v1, Lcom/sec/daliviews/dragAndDrop/DisplacedItem;->mItem:Lcom/sec/daliviews/views/Item;

    invoke-virtual {v5}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v4

    const-string v5, "appOrder"

    const/4 v6, 0x0

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

    const/4 v6, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "container"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getContainerType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "containerId"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCustomContainerId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "hidden"

    move-object v5, v3

    check-cast v5, Lcom/sec/android/app/launcher/data/LauncherItem;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/data/LauncherItem;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pos"

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getCustomPos()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v5

    const-string v7, "appOrder"

    invoke-virtual {v5, v7, v4, v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->updateDisplacedItems(Ljava/lang/String;Ljava/util/Map;Z)I

    move-result v0

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/LauncherAppsConnector;->notifyItemsUpdated(Ljava/util/List;)V

    :cond_2
    return v0
.end method

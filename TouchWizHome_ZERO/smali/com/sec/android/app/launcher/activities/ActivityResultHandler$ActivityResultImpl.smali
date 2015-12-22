.class public Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;
.super Ljava/lang/Object;
.source "ActivityResultHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/ActivityResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResultImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;,
        Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;
    }
.end annotation


# static fields
.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityResultImpl"


# instance fields
.field private final mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    return-void
.end method

.method private completeAdd(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->requestCode:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->resetAddInfo()V

    return v0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->completeAddShortcut(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget-object v1, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->completeAddAppWidget(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "ActivityResultImpl"

    const-string v2, "ActivityResultHandler.ActivityResultImpl::completeAdd() invalid pendingwidgetInfo"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private completeAddAppWidget(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V
    .locals 12

    iget-object v2, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v9, "appWidgetId"

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v8, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v1, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;

    invoke-direct {v1}, Lcom/sec/android/app/launcher/widget/framework/AppWidgetBinder;-><init>()V

    new-instance v5, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-direct {v5, v8, v1}, Lcom/sec/android/app/launcher/data/AppWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/sec/android/app/launcher/widget/framework/WidgetBinder;)V

    const/4 v9, 0x4

    new-array v6, v9, [I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSpanCalculater()Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;

    move-result-object v9

    invoke-virtual {v9, v8, v6}, Lcom/sec/android/app/launcher/utils/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-object v9, v5

    check-cast v9, Lcom/sec/android/app/launcher/data/AppWidgetItem;

    invoke-virtual {v9, v0}, Lcom/sec/android/app/launcher/data/AppWidgetItem;->setWidgetId(I)V

    iget-object v9, v8, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setTitle(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getSpanX()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanX(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getSpanY()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setSpanY(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellX()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellX(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getCellY()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setCellY(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getPos()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setPos(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerId()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerId(I)V

    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getContainerType()I

    move-result v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerType(I)V

    const/4 v9, 0x0

    aget v9, v6, v9

    const/4 v10, 0x1

    aget v10, v6, v10

    invoke-virtual {v5, v9, v10}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMinSpanXY(II)V

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v9, 0x3

    aget v9, v6, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    const/4 v9, 0x2

    aget v9, v6, v9

    const/4 v10, 0x3

    aget v10, v6, v10

    invoke-virtual {v5, v9, v10}, Lcom/sec/android/app/launcher/data/LauncherItem;->setMaxSpanXY(II)V

    :cond_0
    iget-object v9, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/launcher/data/HomeItem;->getUserId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/sec/android/app/launcher/data/LauncherItem;->setUserId(J)V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v9, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/launcher/data/LauncherItem;->setIntent(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->get()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    move-result-object v9

    # getter for: Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v9}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->access$100(Lcom/sec/android/app/launcher/activities/ActivityResultHandler;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    invoke-virtual {v9, v10, v5}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    long-to-int v3, v10

    invoke-virtual {v5, v3}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDbId(I)V

    :cond_1
    return-void
.end method

.method private completeAddShortcut(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V
    .locals 6

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->infoFromShortcutIntent(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->get()Lcom/sec/android/app/launcher/activities/ActivityResultHandler;

    move-result-object v3

    # getter for: Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->mDataManager:Lcom/sec/android/app/launcher/data/DataManager;
    invoke-static {v3}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler;->access$100(Lcom/sec/android/app/launcher/activities/ActivityResultHandler;)Lcom/sec/android/app/launcher/data/DataManager;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_FAVORITES:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    iget-object v5, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/launcher/data/DataManager;->insertItem(Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;Lcom/sec/daliviews/views/Item;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v3, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    goto :goto_0
.end method

.method private resetAddInfo()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellX:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellY:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerType:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerId:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanX:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanY:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->pos:I

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    iput-object v2, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->getMyUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->userId:J

    return-void
.end method


# virtual methods
.method public getPendingAddInfo()Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    return-object v0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)V
    .locals 17

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    instance-of v1, v7, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    sget-object v12, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    check-cast v7, Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-static {v7, v0}, Lcom/sec/android/app/launcher/utils/Utils;->createIconBitmapToShortcut(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_0
    :goto_0
    if-nez v10, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v1, v14}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v12}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconType(I)V

    if-eqz v13, :cond_3

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x10200000

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/sec/android/app/launcher/data/HomeItem;->setIntent(Ljava/lang/String;)V

    :cond_3
    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    if-ne v12, v1, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v15, v11, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconPackgae(Ljava/lang/String;)V

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v15, v11, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconResource(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    sget-object v12, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v8, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    instance-of v1, v9, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v1, :cond_0

    :try_start_0
    move-object v0, v9

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v11, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v1, v11, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget-object v1, v11, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v1, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v15, 0x7f0a0002

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v15, 0x7f0a0002

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method makeHomeItemFromPendingAdd(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;)V
    .locals 4

    new-instance v0, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {v0}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    iput-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellX:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellX(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->cellY:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setCellY(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerId(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->containerType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->pos:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setPos(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanX:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanX(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget v1, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->spanY:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanY(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setItemType(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    iget-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingItem:Lcom/sec/android/app/launcher/data/HomeItem;

    iget-wide v2, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->userId:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setUserId(J)V

    iget-object v0, p2, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->pendingWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 9

    const/4 v8, 0x5

    const/4 v7, -0x1

    const-string v4, "ActivityResultImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityResultHandler.ActivityResultImpl::onActivityResult() resultCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requestCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v7, :cond_1

    if-eq p1, v8, :cond_0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_3

    :cond_0
    new-instance v1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;-><init>(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$1;)V

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->mPendingAddInfo:Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->makeHomeItemFromPendingAdd(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$HomePendingWidget;)V

    iput-object p3, v1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->intent:Landroid/content/Intent;

    iput p1, v1, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;->requestCode:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl;->completeAdd(Lcom/sec/android/app/launcher/activities/ActivityResultHandler$ActivityResultImpl$PendingAddArguments;)Z

    move-result v4

    :goto_0
    return v4

    :cond_1
    if-ne p1, v8, :cond_3

    if-nez p2, :cond_3

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v3

    const-string v4, "appWidgetId"

    invoke-virtual {p3, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const-string v4, "ActivityResult"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete Widget due to result canceled - deleteAppWidgetId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->hasInstance()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->getInstance()Lcom/sec/daliviews/dragAndDrop/DragAndDrop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop;->dragEnd()V

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

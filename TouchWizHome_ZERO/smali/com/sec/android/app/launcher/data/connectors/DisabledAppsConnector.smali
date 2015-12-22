.class public Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;
.super Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.source "DisabledAppsConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$1;,
        Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;
    }
.end annotation


# static fields
.field private static final CACHE_ICONS:Z = true

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNextId:I

.field private final mPkgManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

.field private mStringIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const-class v1, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mReceiver:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mNextId:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mStringIdMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    new-instance v1, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;-><init>(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$1;)V

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mReceiver:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mReceiver:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->startLoaderHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->checkForUpdate(Landroid/content/Intent;)V

    return-void
.end method

.method private checkForUpdate(Landroid/content/Intent;)V
    .locals 10

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    new-instance v4, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {v4}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(Ljava/lang/String;)V

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_DISABLED_APP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setItemType(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanX(I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanY(I)V

    invoke-virtual {v4, v0}, Lcom/sec/android/app/launcher/data/HomeItem;->setAppInfo(Landroid/content/pm/ApplicationInfo;)V

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isMobileKeyboardMode()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0b00d8

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    :goto_1
    invoke-virtual {v4, p0}, Lcom/sec/android/app/launcher/data/HomeItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->getAvailableId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v6, v7, v4}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->addItem(JLcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const v6, 0x7f0b00d7

    :try_start_1
    invoke-virtual {v4, v6}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->getPackageId(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAvailableId(Ljava/lang/String;)I
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mStringIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mNextId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mNextId:I

    iget-object v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mStringIdMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getPackageId(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mStringIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteItem(Lcom/sec/daliviews/views/Item;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public deleteItems(Ljava/util/List;)I
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

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mReceiver:Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector$PackageEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;->destroy()V

    return-void
.end method

.method protected getContentUri(Z)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisabledAppList()V
    .locals 14

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v10, 0x200

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    move-object v5, v6

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->findActivitiesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    :try_start_0
    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v10, :cond_0

    const/4 v10, 0x2

    if-eq v1, v10, :cond_0

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v11, "com.sec.android.emergencylauncher"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v5, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-direct {v3}, Lcom/sec/android/app/launcher/data/HomeItem;-><init>()V

    invoke-virtual {v3, v9}, Lcom/sec/android/app/launcher/data/HomeItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanX(I)V

    invoke-virtual {v3, v13}, Lcom/sec/android/app/launcher/data/HomeItem;->setSpanY(I)V

    invoke-virtual {v3, v5}, Lcom/sec/android/app/launcher/data/HomeItem;->setAppInfo(Landroid/content/pm/ApplicationInfo;)V

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setContainerType(I)V

    sget-object v10, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_DISABLED_APP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v10}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setItemType(I)V

    const v10, 0x7f0b00da

    invoke-virtual {v3, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setCurrentMode(I)V

    invoke-virtual {v3, p0}, Lcom/sec/android/app/launcher/data/HomeItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->getAvailableId(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/sec/android/app/launcher/data/HomeItem;->setDbId(I)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getDbId()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11, v3}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->addItem(JLcom/sec/daliviews/views/Item;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v10, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_DISABLED_APPS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public insertItem(Lcom/sec/daliviews/views/Item;Z)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
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

.method public loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    instance-of v5, p1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v5, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/data/HomeItem;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v4, Landroid/content/res/Resources;->mAppIconResId:I

    invoke-static {v4, v5}, Lcom/sec/daliviews/utils/BitmapUtils;->loadBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCheckValidation()V
    .locals 0

    return-void
.end method

.method protected onLoadImageCache()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/Item;

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mCancelled:Z

    if-eqz v2, :cond_2

    :cond_1
    return-void

    :cond_2
    instance-of v2, v1, Lcom/sec/android/app/launcher/data/HomeItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/launcher/data/HomeItem;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->loadIconImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/launcher/data/HomeItem;->setIconImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected onLoadItems()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->getDisabledAppList()V

    goto :goto_0
.end method

.method protected removeItemFromCache(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/DisabledAppsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

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
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateItem(Lcom/sec/daliviews/views/Item;Z)I
    .locals 1

    const/4 v0, 0x0

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

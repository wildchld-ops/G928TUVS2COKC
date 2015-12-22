.class public Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;
.super Lcom/sec/android/app/launcher/data/connectors/DataConnector;
.source "WidgetsConnector.java"

# interfaces
.implements Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetsConnector"

.field private static final UNINSTALLABLE:I = 0x81

.field private static final mRootUri:Landroid/net/Uri;

.field public static nonUninstallableApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static nonUninstallableWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBadgeOffset:I

.field private static sBadgeSize:I


# instance fields
.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPkgManager:Landroid/content/pm/PackageManager;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mShorcutWidgetsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanDescriptionFormat:Ljava/lang/String;

.field private mSpanTextFormat:Ljava/lang/String;

.field public mWidgetListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mRootUri:Landroid/net/Uri;

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeSize:I

    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableWidgets:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.agoda.mobile.consumer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.bombshells_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.izsoft.canimalsabc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.contractkiller2_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.NamcoBandaiGames.DoodleFit2.Samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.glu.dragonslayer_samsung"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.oceanhouse_media.booklcjustmeandmymomlite_app"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.moleskine.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.pdfreaderpro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "air.com.adobe.pstouch.oem1"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.namcobandaigames.rocketfox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.sesame.apps.elmocalls.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ea.tetrisfree_na"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.fuzzypeach.worldfactbook_tab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.ikonet.vhb"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.itech.virtualofficepro"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableApps:Ljava/util/ArrayList;

    const-string v1, "kr.co.rightbrain.RetailMode.Galaxy_TAB3_8_DCT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.almond.kitty.spen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.tecace.cameraace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableWidgets:Ljava/util/ArrayList;

    const-string v1, "com.hcom.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sec/android/app/launcher/data/connectors/DataConnector;-><init>(Landroid/content/Context;ZZLjava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanTextFormat:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanDescriptionFormat:Ljava/lang/String;

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetsInfos:Ljava/util/List;

    iput-object v3, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    new-instance v0, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mLoaderHandler:Lcom/sec/android/app/launcher/data/connectors/DataConnector$RequestHandler;

    invoke-direct {v0, p1, v1, p0}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/android/app/launcher/data/monitors/DataMonitor$IContentChangeListener;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->startLoaderHandler()V

    return-void
.end method

.method private buildSelectionClause([J)Ljava/lang/String;
    .locals 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    array-length v6, p1

    if-lez v6, :cond_1

    const-string v6, "_id"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public static canUninstall(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->nonUninstallableWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T310X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->canUninstall(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "WidgetsConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkForChange(Landroid/database/Cursor;Z)Lcom/sec/daliviews/views/Item;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->createItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->updateCache(Lcom/sec/android/app/launcher/data/WidgetListItem;Z)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    goto :goto_0
.end method

.method private checkForDelete(Landroid/net/Uri;)V
    .locals 2

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->removeItems([J)V

    goto :goto_0
.end method

.method private checkForUpdate(Landroid/net/Uri;Z)V
    .locals 10

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getNotifyIds(Landroid/net/Uri;)[J

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->buildSelectionClause([J)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues$Widgets;->PROJ_FULL:[Ljava/lang/String;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetsInfos:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-nez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->checkForChange(Landroid/database/Cursor;Z)Lcom/sec/daliviews/views/Item;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v9, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->notifyItemsUpdated(Ljava/util/List;)V

    goto :goto_0
.end method

.method private createItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/WidgetListItem;
    .locals 19

    const-string v17, "_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v17, "shortcut"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_2

    const/4 v3, 0x1

    :goto_0
    const-string v17, "spanX"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v17, "spanY"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v17, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v17, "componentName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v17, "themeName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v17, "profileId"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    new-instance v2, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/launcher/data/WidgetListItem;-><init>(ZIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDbId(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanX(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanY(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanTextFormat:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanTextFormat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanDescriptionFormat:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setSpanDescriptionFormat(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setUserId(J)V

    const/16 v16, 0x0

    if-eqz v3, :cond_3

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    new-instance v9, Landroid/content/ComponentName;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v11}, Lcom/sec/android/app/launcher/utils/Utils;->getTitle(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v16

    :cond_1
    :goto_1
    if-nez v16, :cond_4

    invoke-virtual {v2, v12}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setTitle(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    return-object v2

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetsInfos:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo(Ljava/util/List;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v13

    if-eqz v13, :cond_1

    iget-object v0, v13, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_1

    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setTitle(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanTextFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00be

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mSpanDescriptionFormat:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a02de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPreviewWidth:I

    const v1, 0x7f0a02dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPreviewHeight:I

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-void
.end method

.method private removeItem(J)V
    .locals 7

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {v4, p1, p2}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->notifyAndDeleteItem(Lcom/sec/daliviews/views/Item;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    invoke-virtual {v3}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    move-object v1, v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/Item;

    iget-object v4, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

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

    iget-boolean v5, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->removeItem(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private updateCache(Lcom/sec/android/app/launcher/data/WidgetListItem;Z)Lcom/sec/daliviews/views/Item;
    .locals 4

    if-nez p1, :cond_0

    const-string v1, "WidgetsConnector"

    const-string v2, "updateCache dbItem is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "WidgetsConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCache() dbItem - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDbId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDbId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->getItem(J)Lcom/sec/daliviews/views/Item;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setAppWidgetInfo(Landroid/appwidget/AppWidgetProviderInfo;)V

    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/daliviews/views/Item;->update(Lcom/sec/daliviews/views/Item;)Z

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1, p0}, Lcom/sec/android/app/launcher/data/WidgetListItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDbId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3, p1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->addItem(JLcom/sec/daliviews/views/Item;)V

    :cond_3
    move-object v0, p1

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

.method protected getContentUri(Z)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceType()Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;->SOURCE_WIDGETS:Lcom/sec/android/app/launcher/data/connectors/DataConnector$SourceType;

    return-object v0
.end method

.method public getWidgetListItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/views/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

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

.method public loadPreviewImage(Lcom/sec/daliviews/views/Item;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/sec/android/app/launcher/data/WidgetListItem;

    if-eqz v2, :cond_5

    move-object/from16 v22, p1

    check-cast v22, Lcom/sec/android/app/launcher/data/WidgetListItem;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v23

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    const/16 v16, 0x0

    const/4 v10, 0x0

    if-eqz v23, :cond_4

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    new-array v8, v2, [I

    const/4 v2, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanX()I

    move-result v4

    aput v4, v8, v2

    const/4 v2, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getWidgetSpanY()I

    move-result v4

    aput v4, v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    iget v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    move-object/from16 v0, v23

    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPreviewHeight:I

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/launcher/utils/Utils;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->getUserManager()Landroid/os/UserManager;

    move-result-object v21

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v20

    if-eqz v16, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v20, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v4, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    sub-int v14, v2, v4

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v4, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    sub-int v19, v2, v4

    new-instance v9, Landroid/graphics/Rect;

    sget v2, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeSize:I

    sub-int v2, v14, v2

    sget v4, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeSize:I

    sub-int v4, v19, v4

    move/from16 v0, v19

    invoke-direct {v9, v2, v4, v14, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v2, v9, Landroid/graphics/Rect;->left:I

    if-gez v2, :cond_3

    sget v2, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    :cond_0
    :goto_0
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v9, v5}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_1
    :goto_1
    instance-of v2, v10, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_2

    move-object v11, v10

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    :cond_2
    :goto_2
    return-object v16

    :cond_3
    iget v2, v9, Landroid/graphics/Rect;->top:I

    if-gez v2, :cond_0

    sget v2, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->sBadgeOffset:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_4
    if-eqz v12, :cond_1

    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v13, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mUserManager:Landroid/os/UserManager;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getUserId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-static {v2, v0, v4}, Lcom/sec/android/app/launcher/utils/Utils;->getIconUsingPackageManager(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    goto :goto_2
.end method

.method protected onCheckValidation()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/WidgetsProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsDatabaseHelper;->runWidgetDBValidationCheck()V

    :cond_0
    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/launcher/providers/WidgetsProvider;->getNotifyQueryType(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->checkForUpdate(Landroid/net/Uri;Z)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->checkForUpdate(Landroid/net/Uri;Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->checkForDelete(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLoadImageCache()V
    .locals 0

    return-void
.end method

.method protected onLoadItems()V
    .locals 10

    const/4 v1, 0x1

    const/4 v9, 0x0

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setItemsLoading(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->init()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mAppWidgetsInfos:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mPkgManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mShorcutWidgetsInfos:Ljava/util/List;

    const/4 v6, 0x0

    :try_start_0
    sget-object v0, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    const-string v5, "componentName ASC"

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mRootUri:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/launcher/providers/WidgetsProvider$WidgetsValues$Widgets;->PROJ_FULL:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mMonitor:Lcom/sec/android/app/launcher/data/monitors/DataMonitor;

    sget-object v1, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mRootUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/monitors/DataMonitor;->start(Landroid/net/Uri;)V

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCancelled:Z

    if-nez v0, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->createItem(Landroid/database/Cursor;)Lcom/sec/android/app/launcher/data/WidgetListItem;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/data/WidgetListItem;->getDbId()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1, v8}, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->addItem(JLcom/sec/daliviews/views/Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setItemsLoading(Z)V

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setItemsLoading(Z)V

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->setItemsLoading(Z)V

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method protected removeItemFromCache(Lcom/sec/daliviews/views/Item;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mCache:Lcom/sec/android/app/launcher/data/connectors/ItemCache;

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->getDbId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/launcher/data/connectors/ItemCache;->deleteItem(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/Item;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/data/connectors/WidgetsConnector;->mWidgetListItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
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

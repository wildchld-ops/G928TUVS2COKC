.class public Lcom/sec/android/app/launcher/providers/LauncherProviderID;
.super Landroid/content/ContentProvider;
.source "LauncherProviderID.java"


# static fields
.field public static final ACTION_CSC_CHAMELEON_UPDATE_LAUNCHER:Ljava/lang/String; = "com.samsung.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

.field public static final ACTION_SPRINT_LAUNCHER_REFRESH:Ljava/lang/String; = "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

.field static final AUTHORITY_FAVORITE:Ljava/lang/String; = "com.sec.android.app.launcher.providers.LauncherProvider.id"

.field static final CONTENT_APPWIDGET_UNBIND:Ljava/lang/String; = "appWidgetUnbind"

.field private static final FAVORITES:Ljava/lang/String; = "favorites"

.field static final PARAMETER_INITID:Ljava/lang/String; = "initId"

.field static final SETTING_DEFAULT_SCREEN_GET:Ljava/lang/String; = "defaultScreen"

.field static final SETTING_DEFAULT_SCREEN_SET:Ljava/lang/String; = "defaultScreenSet"

.field private static final TAG:Ljava/lang/String; = "Launcher.LauncherProviderID"

.field static final WIDGET_CLS_NAME:Ljava/lang/String; = "widgetClsName"

.field static final WIDGET_PKG_NAME:Ljava/lang/String; = "widgetPkgName"


# instance fields
.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mLauncherProvider:Lcom/sec/android/app/launcher/providers/LauncherProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mLauncherProvider:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mLauncherProvider:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mLauncherProvider:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    return-object v0
.end method

.method private handleWidget(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 14

    const-string v11, "itemType"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v11, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v11

    if-ne v6, v11, :cond_4

    const-string v11, "appWidgetId"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "appWidgetId"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    const-string v11, "widgetPkgName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "widgetPkgName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v11, "widgetClsName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "widgetPkgName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v11, "widgetClsName"

    invoke-virtual {p1, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v7, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v1}, Lcom/sec/android/app/launcher/utils/Utils;->getInstalledProviders(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v11, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_5

    const-string v11, "Launcher.LauncherProviderID"

    const-string v12, "insert widget"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    if-nez v11, :cond_2

    new-instance v11, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v12

    const/16 v13, 0x400

    invoke-direct {v11, v12, v13}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v11}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    const-string v11, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {p1, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v11, v12, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v11

    invoke-virtual {v11, v0, v3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v11

    if-eqz v11, :cond_3

    :goto_1
    return-object v8

    :cond_3
    const-string v11, "Launcher.LauncherProviderID"

    const-string v12, "Problem allocating appWidgetId"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const-string v11, "Launcher.LauncherProviderID"

    const-string v12, "No insertion for widget"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const-string v5, "defaultScreen"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getHomeScreenIndex()I

    move-result v2

    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "Launcher.LauncherProviderID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default home is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    const-string v5, "defaultScreenSet"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getHomeFragment()Lcom/sec/android/app/launcher/activities/HomeFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/activities/HomeFragment;->getHomePresenter()Lcom/sec/android/app/launcher/activities/HomePresenter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/sec/android/app/launcher/activities/HomePresenter;->setDefaultHome(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v5, "Launcher.LauncherProviderID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default Home has been set : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeScreenIndex(Landroid/content/Context;I)V

    const-string v5, "Launcher.LauncherProviderID"

    const-string v6, "Launcher is not initiated yet, so set home index into preference directly"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v5, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const-string v5, "com.samsung.intent.action.CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "delete_db"

    const/4 v6, 0x0

    invoke-virtual {p3, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v5, "Launcher.LauncherProviderID"

    const-string v6, "Received ACTION_CSC_CHAMELEON_UPDATE_LAUNCHER"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/launcher/services/LauncherService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/android/app/launcher/activities/LauncherApp;->startLauncherService(Landroid/content/Intent;)V

    goto :goto_2

    :cond_4
    const-string v5, "Launcher.LauncherProviderID"

    const-string v6, "Received ACTION_CSC_CHAMELEON_UPDATE_LAUNCHER, but no refresh"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const-string v7, "appWidgetUnbind"

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Launcher.LauncherProviderID"

    const-string v7, "Unbinding widget"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    move-object v0, p3

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getWidgetHost()Lcom/sec/android/app/launcher/widget/framework/HomeAppWidgetHost;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v4, v6, p2, p3}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    return v6
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const-string v3, "favorites"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->handleWidget(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const-string v2, "widgetPkgName"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "widgetPkgName"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_1
    const-string v2, "widgetClsName"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "widgetClsName"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_2
    const-string v2, "Launcher.LauncherProviderID"

    const-string v3, "About to insert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v0, v2, p2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/LauncherProviderID;->getLauncherProvider()Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

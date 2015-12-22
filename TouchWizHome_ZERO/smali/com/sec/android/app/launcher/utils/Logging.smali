.class public Lcom/sec/android/app/launcher/utils/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/utils/Logging$PreferecesLogging;,
        Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;
    }
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final FEATURE_NAME_APPS_FOLDER_COUNT:Ljava/lang/String; = "APFO"

.field public static final FEATURE_NAME_APPS_FOLDER_NAME:Ljava/lang/String; = "APFN"

.field public static final FEATURE_NAME_APPS_ICON_STARTED:Ljava/lang/String; = "APIS"

.field public static final FEATURE_NAME_APPS_PAGE_COUNT:Ljava/lang/String; = "APPS"

.field public static final FEATURE_NAME_ATOZ_BUTTON:Ljava/lang/String; = "AZBT"

.field public static final FEATURE_NAME_DELETE_APPS_FOLDER:Ljava/lang/String; = "DTAF"

.field public static final FEATURE_NAME_DELETE_HOME_FOLDER:Ljava/lang/String; = "DTHF"

.field public static final FEATURE_NAME_DISABLE_APP:Ljava/lang/String; = "HSDS"

.field public static final FEATURE_NAME_ENTER_ZEROPAGE:Ljava/lang/String; = "ZPEN"

.field public static final FEATURE_NAME_GRID_STATUS:Ljava/lang/String; = "HSGR"

.field public static final FEATURE_NAME_HOME_FOLDER_COUNT:Ljava/lang/String; = "HSFO"

.field public static final FEATURE_NAME_HOME_FOLDER_NAME:Ljava/lang/String; = "HOFN"

.field public static final FEATURE_NAME_HOME_ICON_STARTED:Ljava/lang/String; = "HOIS"

.field public static final FEATURE_NAME_HOME_PAGE_COUNT:Ljava/lang/String; = "HOME"

.field public static final FEATURE_NAME_HOTSEAT_ADD:Ljava/lang/String; = "HSAD"

.field public static final FEATURE_NAME_HOTSEAT_DELETE:Ljava/lang/String; = "HSDT"

.field public static final FEATURE_NAME_HOTSEAT_LIST:Ljava/lang/String; = "HST"

.field public static final FEATURE_NAME_SEARCH_WIDGET_STARTED:Ljava/lang/String; = "GSWS"

.field public static final FEATURE_NAME_WIDGET_ADD:Ljava/lang/String; = "WGAD"

.field public static final FEATURE_NAME_WIDGET_DELETE:Ljava/lang/String; = "WGDT"

.field public static final FEATURE_NAME_WIDGET_LIST:Ljava/lang/String; = "LIST"

.field public static final FEATURE_NAME_WIDGET_SEARCH:Ljava/lang/String; = "WGSC"

.field public static final FEATURE_NAME_ZERO_PAGE_ENABLED:Ljava/lang/String; = "ZPON"

.field private static final PREFERECES_WEEKLOGGING_ENABLE:Ljava/lang/String; = "week_logging_enable"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;",
            ">;)V"
        }
    .end annotation

    sget-boolean v4, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    const-string v5, "app_id"

    const-string v6, "com.sec.android.app.launcher"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v1, v2

    const-string v5, "feature"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;->getFeatures()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    aget-object v4, v1, v2

    const-string v5, "extra"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;->getValues()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    aget-object v4, v1, v2

    const-string v5, "value"

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;->getValues()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private getAppsCount(Landroid/app/Activity;)I
    .locals 9

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "container , containerId"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "containerId desc"

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "containerId"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return v6

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getGridInfo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pageColumns , pageRows"

    aput-object v0, v2, v1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->GRID_SIZE_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getHomeCount(Landroid/app/Activity;)I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getHomeFolderCount(Landroid/app/Activity;)I
    .locals 9

    const/4 v2, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemType is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return v8

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private getZeroPageStatus()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "home_zeropage_enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static homeWidgetListLogging(Landroid/app/Activity;)V
    .locals 18

    sget-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or itemType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or itemType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SAMSUNG_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "containerId desc"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :try_start_0
    const-string v2, "intent"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v15, ""

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    const/4 v2, 0x0

    invoke-static {v13, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    :cond_0
    :try_start_2
    new-instance v14, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v2, "LIST"

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-direct {v14, v2, v15, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v9

    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/sec/android/app/launcher/utils/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_2
    move-exception v9

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v2
.end method

.method public static insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7

    sget-boolean v2, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p5, :cond_3

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static setWeekLogging(Landroid/app/Activity;)V
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Logging$PreferecesLogging;->getWeekLoggingState()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/launcher/utils/Logging;->homeWidgetListLogging(Landroid/app/Activity;)V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Logging$PreferecesLogging;->setWeekLoggingState(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Logging$PreferecesLogging;->setWeekLoggingState(Z)V

    goto :goto_0
.end method

.method public static topFiveItemListLogging(Landroid/app/Activity;)V
    .locals 22

    sget-boolean v4, Lcom/sec/android/app/launcher/activities/LauncherApp;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v4, :cond_0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "cellX , title, intent"

    aput-object v5, v6, v4

    const-string v7, "containerId is null or containerId is 0"

    const-string v9, "cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :try_start_0
    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v18, ""

    const/4 v15, 0x0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v17, v17, 0x1

    :try_start_1
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    const/4 v4, 0x0

    invoke-static {v15, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    :goto_1
    :try_start_2
    new-instance v16, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, -0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_4
    const-string v18, "Folder"
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v11

    :cond_2
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/sec/android/app/launcher/utils/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    :catch_2
    move-exception v11

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-static {v10}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v4
.end method


# virtual methods
.method public startFisrtLoggingForLauncherStatus(Landroid/app/Activity;)V
    .locals 18

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/utils/Logging;->getHomeCount(Landroid/app/Activity;)I

    move-result v11

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/utils/Logging;->getAppsCount(Landroid/app/Activity;)I

    move-result v9

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/utils/Logging;->getHomeFolderCount(Landroid/app/Activity;)I

    move-result v10

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/utils/Logging;->getGridInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/utils/Logging;->getZeroPageStatus()Z

    move-result v4

    if-lez v11, :cond_0

    new-instance v7, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "HOME"

    const/4 v14, 0x0

    int-to-long v0, v11

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v7, v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lez v9, :cond_1

    new-instance v2, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "APPS"

    const/4 v14, 0x0

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v2, v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-ltz v10, :cond_2

    new-instance v5, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "HSFO"

    const/4 v14, 0x0

    int-to-long v0, v10

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-direct {v5, v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v3, :cond_3

    new-instance v6, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "HSGR"

    const-wide/16 v14, -0x1

    invoke-direct {v6, v13, v3, v14, v15}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v12, 0x0

    if-eqz v4, :cond_4

    new-instance v12, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "ZPON"

    const/4 v14, 0x0

    const-wide/16 v16, 0x1

    move-wide/from16 v0, v16

    invoke-direct {v12, v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/utils/Logging;->topFiveItemListLogging(Landroid/app/Activity;)V

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Lcom/sec/android/app/launcher/utils/Logging;->firstStatusLogging(Landroid/app/Activity;Ljava/util/List;)V

    return-void

    :cond_4
    new-instance v12, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;

    const-string v13, "ZPON"

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v12, v13, v14, v0, v1}, Lcom/sec/android/app/launcher/utils/Logging$LoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

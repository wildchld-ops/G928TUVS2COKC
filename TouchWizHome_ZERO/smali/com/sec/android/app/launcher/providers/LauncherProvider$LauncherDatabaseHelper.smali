.class Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;
.super Lcom/sec/android/app/launcher/providers/DatabaseHelper;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/sec/android/app/launcher/migrators/TableCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherDatabaseHelper"
.end annotation


# static fields
.field private static final TAGS_ALLOWED_HOME:I = 0xf

.field private static final TAGS_ALLOWED_HOTSEAT:I = 0x7

.field private static final TAG_ALLOWED_APP:I = 0x1

.field private static final TAG_ALLOWED_FOLDER:I = 0x4

.field private static final TAG_ALLOWED_SHORTCUT:I = 0x2

.field private static final TAG_ALLOWED_WIDGET:I = 0x8

.field private static final TAG_APP:Ljava/lang/String; = "favorite"

.field private static final TAG_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TAG_APPWIDGET:Ljava/lang/String; = "appwidget"

.field private static final TAG_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final TAG_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TAG_FOLDER:Ljava/lang/String; = "folder"

.field private static final TAG_GRID_COLUMN:Ljava/lang/String; = "Columns"

.field private static final TAG_GRID_ROW:Ljava/lang/String; = "Rows"

.field private static final TAG_HOME:Ljava/lang/String; = "home"

.field private static final TAG_HOTSEAT:Ljava/lang/String; = "hotseat"

.field private static final TAG_PAGE_COUNT:Ljava/lang/String; = "PageCount"

.field private static final TAG_SACTIVITYWIDGET:Ljava/lang/String; = "sactivitywidget"

.field private static final TAG_SCREEN_INDEX:Ljava/lang/String; = "ScreenIndex"

.field private static final TAG_SHORTCUT:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mComponentList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/UserHandle;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIsHomeModeChangeFeature:Z

.field private mIsHomeOnlyMode:Z

.field private mLastAddedAppPos:I

.field private mLastAddedPage:I

.field private mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

.field private mMaxId:J

.field private mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

.field private mRestoreTitle:Ljava/lang/String;

.field private mRestore_columns:I

.field private mRestore_rows:I

.field private mSurfaceWidgetId:I

.field private mUserSerialNumber:J

.field final synthetic this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    const-string v11, "launcher.db"

    const/4 v12, 0x0

    const/16 v13, 0x11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v12, v13}, Lcom/sec/android/app/launcher/providers/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeOnlyMode:Z

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mUserSerialNumber:J

    new-instance v11, Landroid/appwidget/AppWidgetHost;

    const/16 v12, 0x400

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v12}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    const/4 v9, 0x0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$100()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v11, :cond_a

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$100()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    const-string v12, "com.sec.android.app.launcher.prefs"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "home_only_mode"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "Launcher.Provider"

    const-string v12, "PREFERENCES_HOME_ONLY_MODE is exist"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string v11, "home_only_mode"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    :goto_0
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$100()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeOnlyModeEnabled(Z)V

    :cond_0
    :goto_1
    const-string v11, "Launcher.Provider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Home only mode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/data/IconBitmapCache;->getInstance()Lcom/sec/android/app/launcher/data/IconBitmapCache;

    move-result-object v8

    if-nez v9, :cond_b

    const/4 v11, 0x1

    :goto_2
    sput-boolean v11, Lcom/sec/android/app/launcher/data/IconBitmapCache;->USE_CACHE:Z

    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    const-wide/16 v14, -0x1

    cmp-long v11, v12, v14

    if-nez v11, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v11, :cond_3

    new-instance v11, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "appOrder"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v11, :cond_5

    const-string v11, "favorites_homeApps"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeOnlyMode:Z

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->switchFavoritesIfNecessary(Z)Z

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v11

    if-eqz v11, :cond_d

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->modeSwitch(Z)Z

    :cond_5
    :goto_4
    const/4 v7, 0x0

    :try_start_0
    const-string v11, "SELECT modified, restored FROM favorites LIMIT 0"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    if-nez v7, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v11, "ALTER TABLE favorites ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v11, "ALTER TABLE favorites ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v11, "ALTER TABLE appOrder ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v11, "ALTER TABLE appOrder ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_6
    :goto_6
    const-string v11, "Launcher.Provider"

    const-string v12, "LauncherDatabaseHelper..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/launcher/activities/LauncherApp;->registerPackageReceiver()V

    return-void

    :cond_7
    const-string v11, "home_only_mode"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    goto/16 :goto_0

    :cond_8
    const-string v11, "Launcher.Provider"

    const-string v12, "PREFERENCES_HOME_ONLY_MODE is not exist. Check setting DB"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "home_and_apps_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_9

    const/4 v9, 0x1

    :cond_9
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v11, "home_only_mode"

    invoke-interface {v5, v11, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$100()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeOnlyModeEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_c
    const-string v11, "favorites_homeOnly"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "favorites_homeOnly"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mUserSerialNumber:J

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11, v12, v13}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    const-string v11, "favorites_homeOnly"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v12}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    goto/16 :goto_3

    :cond_d
    const-string v11, "Launcher.Provider"

    const-string v12, "PageSettingProvider is Null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_0
    move-exception v4

    const-string v11, "Launcher.Provider"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_1
    move-exception v6

    :try_start_2
    const-string v11, "Launcher.Provider"

    invoke-virtual {v6}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_6

    :catchall_0
    move-exception v11

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v11
.end method

.method static synthetic access$1000(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    return-object p1
.end method

.method private addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;II)J
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v2

    const-string v4, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "itemType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "containerId"

    invoke-virtual {p2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pos"

    rem-int v5, p4, p5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "container"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "hidden"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "color"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "appOrder"

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v5, p2}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method private addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIII)J
    .locals 28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v10, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v23

    if-eqz v23, :cond_0

    const-string v23, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "addAppShortcut className="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v10, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$200(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/content/pm/LauncherApps;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    const/4 v14, 0x0

    const-string v23, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "activities="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v23

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    :cond_1
    const-string v23, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No activity : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, -0x1

    :cond_2
    :goto_0
    return-wide v8

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/LauncherActivityInfo;

    if-eqz p5, :cond_4

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    const/4 v14, 0x1

    :cond_5
    if-nez v14, :cond_7

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v23

    if-eqz v23, :cond_6

    const-string v23, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "This activity is not Launcher/MAIN activity : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-wide/16 v8, -0x1

    goto :goto_0

    :cond_7
    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x81

    move/from16 v23, v0

    if-eqz v23, :cond_8

    const/16 v18, 0x1

    :goto_1
    const/4 v11, -0x1

    const/4 v12, 0x0

    const/16 v21, -0x1

    const-wide/16 v26, -0x1

    cmp-long v23, p6, v26

    if-nez v23, :cond_9

    sget-object v23, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v11

    move-object/from16 v12, p8

    rem-int v21, p10, p11

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewAppOrderId()J

    move-result-wide v16

    const-string v23, "_id"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v23, "itemType"

    sget-object v26, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "container"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "containerId"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "pos"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "title"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "componentName"

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "color"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v23, "isSystemApp"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    move-object/from16 v23, v0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v24

    const-string v23, "profileId"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v23, "appOrder"

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    const-wide/16 v26, 0x0

    cmp-long v23, v8, v26

    if-gtz v23, :cond_a

    const-wide/16 v8, -0x1

    goto/16 :goto_0

    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_9
    sget-object v23, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v11

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    move/from16 v21, p9

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez p9, :cond_2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v23

    if-eqz v23, :cond_b

    const-string v23, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " does not exist"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-wide/16 v8, -0x1

    goto/16 :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z
    .locals 10

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    iget-object v7, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    :try_start_0
    iget-object v7, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v7, p4, v8}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Launcher.Provider"

    const-string v8, "Problem allocating appWidgetId; bindAppWidgetIdIfAllowed returned false"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "Launcher.Provider"

    const-string v8, "Problem allocating appWidgetId"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewId()J

    move-result-wide v4

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v6, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v7, "intent"

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "itemType"

    sget-object v8, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "spanX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "spanY"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "appWidgetId"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "profileId"

    iget-object v8, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/launcher/utils/Utils;->getMyUserSerialNumber(Landroid/content/Context;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x0

    invoke-static {p0, p1, p2, v7, p3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 13

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v11, 0x1

    new-instance v6, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v11, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ComponentName;II)Z

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v6, Landroid/content/ComponentName;

    const/4 v2, 0x0

    aget-object v2, v12, v2

    move-object/from16 v0, p6

    invoke-direct {v6, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v10

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addColumn_NewCue(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "ALTER TABLE favorites ADD COLUMN newCue INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_1

    const-string v1, "favorites_homeApps"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ALTER TABLE favorites_homeApps ADD COLUMN newCue INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v1, "favorites_homeOnly"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ALTER TABLE favorites_homeOnly ADD COLUMN newCue INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const-string v1, "ALTER TABLE appOrder ADD COLUMN newCue INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.Provider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private addColumn_Profile(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE favorites ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_1

    const-string v1, "favorites_homeApps"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE favorites_homeApps ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites_homeApps ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites_homeApps ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v1, "favorites_homeOnly"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE favorites_homeOnly ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites_homeOnly ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE favorites_homeOnly ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE appOrder ADD COLUMN profileId INTEGER DEFAULT "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE appOrder ADD COLUMN modified INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "ALTER TABLE appOrder ADD COLUMN restored INTEGER DEFAULT 0;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Launcher.Provider"

    invoke-virtual {v0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method private addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 6

    const/4 v4, 0x1

    const-string v2, "itemType"

    sget-object v3, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanX"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "spanY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewId()J

    move-result-wide v0

    const-string v2, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v2, p3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const-wide/16 v0, -0x1

    :cond_0
    return-wide v0
.end method

.method private addPageSettings()V
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "0,1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerFilter in ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "pageOrder DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v6, v10}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    move-object v9, v10

    :goto_0
    if-eqz v9, :cond_1

    const-string v0, "pageOrder"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const-string v0, "_id"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "pageOrder"

    add-int/lit8 v2, v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_1
    return-void

    :catch_0
    move-exception v7

    :goto_1
    :try_start_2
    const-string v0, "Launcher.Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPageSettings() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v10

    goto :goto_2

    :catch_1
    move-exception v7

    move-object v9, v10

    goto :goto_1
.end method

.method private addRemainedApps(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 30

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v26

    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    const/16 v25, 0x0

    :goto_0
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->clear()V

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$200(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/content/pm/LauncherApps;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    if-nez v24, :cond_2

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_3
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v2, 0x7f0c0008

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    const v2, 0x7f0c0006

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    mul-int v13, v18, v17

    const v2, 0x7f0a00cd

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    const v2, 0x7f0a00c9

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    new-instance v29, Ljava/util/ArrayList;

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper$1;-><init>(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;)V

    move-object/from16 v0, v29

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mLastAddedPage="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " mLastAddedAppPos="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    add-int/lit8 v3, v13, -0x1

    if-gt v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    if-gez v2, :cond_7

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_8
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v23 .. v23}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    add-int/lit8 v3, v13, -0x1

    if-le v2, v3, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    :cond_9
    const-string v2, "hidden"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, -0x1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v15}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIII)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    goto :goto_2

    :cond_a
    return-void
.end method

.method private addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J
    .locals 18

    const-wide/16 v8, -0x1

    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewId()J

    move-result-wide v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v13, 0x10200000

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v13, "intent"

    const/4 v14, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "title"

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "itemType"

    sget-object v14, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_APPLICATION:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v14}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "spanX"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "spanY"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v13

    if-eqz v13, :cond_1

    :cond_0
    iget-object v13, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v13, v13, 0x81

    if-eqz v13, :cond_3

    const/4 v10, 0x1

    :goto_1
    const-string v13, "isSystemApp"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v13, v3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-gez v13, :cond_4

    const-wide/16 v8, -0x1

    :cond_2
    :goto_2
    return-wide v8

    :catch_0
    move-exception v6

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object p6, v13, v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    new-instance v5, Landroid/content/ComponentName;

    const/4 v13, 0x0

    aget-object v13, v12, v13

    move-object/from16 v0, p7

    invoke-direct {v5, v13, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v5, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    move-object v4, v5

    goto/16 :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    :try_start_3
    sget-object v13, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v13

    const-string v14, "container"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v13, v14, :cond_2

    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {v13, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v6

    :goto_3
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "Launcher.Provider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to add Home app: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p7

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_2
    move-exception v6

    move-object v4, v5

    goto :goto_3
.end method

.method private addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p5, p6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->INST:Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;

    invoke-virtual {v5, v0, p7}, Lcom/sec/android/app/launcher/widget/framework/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p7, :cond_0

    const-string v5, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v1, v5, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p8, :cond_2

    invoke-virtual {p8}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "instance"

    invoke-static {p8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewId()J

    move-result-wide v2

    const-string v5, "intent"

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "itemType"

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SURFACE_WIDGET:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanX"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "spanY"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "appWidgetId"

    iget v6, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mSurfaceWidgetId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mSurfaceWidgetId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v5, p3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v4, 0x1

    :cond_1
    return v4

    :cond_2
    const-string v5, "instance"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 23

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/4 v11, 0x1

    if-eqz p7, :cond_0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v22

    :cond_0
    if-eqz p7, :cond_1

    const/16 v4, 0x9

    :try_start_0
    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p8

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p8

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    if-eqz p7, :cond_5

    if-eqz v17, :cond_2

    if-nez v22, :cond_5

    :cond_2
    const-string v4, "Launcher.Provider"

    const-string v5, "Shortcut is missing title or icon resource ID"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, -0x1

    :cond_3
    :goto_0
    return-wide v18

    :catch_0
    move-exception v14

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut has malformed uri: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide/16 v18, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->generateNewId()J

    move-result-wide v18

    const/high16 v4, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "intent"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "itemType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->HOME_SHORTCUT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ItemType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanX"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "spanY"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p7, :cond_7

    const-string v4, "iconType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconPackage"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title"

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "iconResource"

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    if-eqz v11, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v4, v3}, Lcom/sec/android/app/launcher/providers/ProviderBase;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteOpenHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    const-wide/16 v18, -0x1

    goto/16 :goto_0

    :cond_7
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz p5, :cond_6

    if-eqz p6, :cond_6

    const/4 v15, 0x0

    :try_start_1
    invoke-virtual/range {p4 .. p5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->getInst()Lcom/sec/android/app/launcher/activities/LauncherApp;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->getIconWidth(Landroid/content/Context;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->getIconHeight(Landroid/content/Context;)I

    move-result v9

    move-object/from16 v5, p4

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/launcher/utils/Utils;->loadBitmap(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v15

    :cond_8
    const-string v4, "title"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "iconType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->RESOURCE:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "iconPackage"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "iconResource"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_9

    const-string v4, "Launcher.Provider"

    const-string v5, "restore, shortcutUri road imgage from application resource"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "icon"

    invoke-static {v15}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v14

    const/4 v11, 0x0

    const-string v4, "Launcher.Provider"

    const-string v5, "restore, NameNotFoundException when load icon from resources..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    :try_start_2
    const-string v4, "Launcher.Provider"

    const-string v5, "restore, shortcutUri road imgage from backup xml"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    const-string v4, "icon"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :cond_a
    const-string v10, ""

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_b

    const-string v4, "title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_d

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_c

    const-string v4, "iconType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "icon"

    invoke-static {v12}, Lcom/sec/android/app/launcher/utils/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_b
    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut is missing title : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut\'s drawable is null : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shortcut is missing icon : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private cleanCellList([[ZII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p3, :cond_0

    aget-object v2, p1, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "containerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "pos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "componentName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSystemApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newCue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 4

    const-string v0, "appOrder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findEmptyCell([[ZIIII)Landroid/graphics/Point;
    .locals 6

    const/4 v4, 0x0

    :goto_0
    sub-int v5, p5, p3

    if-gt v4, v5, :cond_6

    const/4 v3, 0x0

    :goto_1
    sub-int v5, p4, p2

    if-gt v3, v5, :cond_5

    aget-object v5, p1, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_4

    const/4 v1, 0x0

    move v0, v3

    :goto_2
    add-int v5, v3, p2

    if-ge v0, v5, :cond_1

    move v2, v4

    :goto_3
    add-int v5, v4, p3

    if-ge v2, v5, :cond_0

    aget-object v5, p1, v0

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_3

    :cond_1
    if-nez v1, :cond_4

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    return-object v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_4
.end method

.method private getPageSettings(Z)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "pageOrder"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    :goto_0
    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "pageOrder"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 6

    const-string v4, "SELECT MAX(_id) FROM favorites"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error: could not query max id"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    return-wide v2
.end method

.method private initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select ifnull(max(_id),0) from "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: could not query max id from table "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-wide v2
.end method

.method private loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadAppOrderContainer. folderId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v4, 0x7f0c0008

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v27

    const v4, 0x7f0c0006

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    mul-int v15, v27, v26

    const v4, 0x7f0a00cd

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    const v4, 0x7f0a00c9

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v28

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v35

    const/4 v14, 0x0

    const/16 v32, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v30, 0x0

    const/4 v13, -0x1

    :cond_1
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v41

    const/4 v4, 0x3

    move/from16 v0, v41

    if-ne v0, v4, :cond_2

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v35

    if-le v4, v0, :cond_3

    :cond_2
    const/4 v4, 0x1

    move/from16 v0, v41

    if-ne v0, v4, :cond_4

    :cond_3
    return v14

    :cond_4
    const/4 v4, 0x2

    move/from16 v0, v41

    if-ne v0, v4, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v31

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadApplicationsContainer. Process tag: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v12, ""

    const-string v8, ""

    const-string v9, ""

    const/4 v4, 0x0

    const-string v5, "screen"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const-string v4, "favorite"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    const-string v5, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const-string v5, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    const-string v5, "hidden"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v30

    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    if-eqz v30, :cond_8

    const-string v4, "hidden"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    if-nez v30, :cond_b

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_9

    const/4 v14, 0x0

    :cond_6
    :goto_2
    const/4 v13, -0x1

    :goto_3
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v10, p3

    invoke-direct/range {v4 .. v17}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addAppShortcut(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IIIII)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_c

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v32

    :cond_7
    if-eqz v30, :cond_1

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    :cond_8
    const-string v4, "hidden"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v32

    if-ne v0, v4, :cond_a

    if-lt v14, v15, :cond_a

    const/4 v14, 0x0

    add-int/lit8 v32, v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v32

    if-le v0, v4, :cond_6

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-eqz v4, :cond_1

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_0

    :cond_d
    const-wide/16 v4, -0x1

    cmp-long v4, p3, v4

    if-nez v4, :cond_14

    const-string v4, "folder"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v39, 0x0

    const/16 v40, -0x1

    if-eqz p5, :cond_10

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    :cond_e
    :goto_4
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    const-string v4, "title"

    move-object/from16 v0, v39

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v32

    if-ge v0, v4, :cond_f

    const/4 v14, 0x0

    :cond_f
    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, v6

    move-object/from16 v21, v12

    move/from16 v22, v14

    move/from16 v23, v15

    invoke-direct/range {v18 .. v23}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addAppFolder(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;II)J

    move-result-wide v22

    const-wide/16 v4, -0x1

    cmp-long v4, v22, v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    move/from16 v36, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    rem-int v4, v14, v15

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    add-int/lit8 v14, v14, 0x1

    move/from16 v38, v32

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move/from16 v24, p5

    invoke-direct/range {v19 .. v24}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v29

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->delAppFolder(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    if-eqz v4, :cond_12

    add-int/lit8 v14, v14, -0x1

    move/from16 v32, v38

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedPage:I

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mLastAddedAppPos:I

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    move-object/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v25

    const/4 v4, 0x5

    const/4 v5, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v40

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, -0x1

    move/from16 v0, v40

    if-eq v0, v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    :cond_11
    if-nez v39, :cond_e

    const/4 v4, 0x0

    const-string v5, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_4

    :cond_12
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete empty Appfolder. _id: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_1

    const-string v4, "appOrder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v14, v14, -0x1

    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "containerId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v4, "containerId"

    const-string v5, "containerId"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "container"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->MENU:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pos"

    const-string v5, "pos"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "appOrder"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v42

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_14
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Launcher.Provider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tag <"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "> detected while parsing favorites at line "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 20

    const/4 v15, 0x0

    const-string v3, "Launcher.Provider"

    const-string v4, "loadAppOrderDefaults."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    const/4 v8, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/io/File;

    const-string v3, "/system/csc/default_application_order.xml"

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v13

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isOwner()Z

    move-result v14

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    const-string v3, "appOrder"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v17

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    const-string v3, "Launcher.Provider"

    const-string v4, "loadAppOrderContainer [["

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_EnableViewByAlphabetAsDefault"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Launcher.Provider"

    const-string v4, "loadAppOrderContainer custom order"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, -0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadAppOrderContainer(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;JZ)I

    move-result v15

    :goto_1
    const-string v3, "Launcher.Provider"

    const-string v4, "loasddAppOrderContainer ]]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :cond_0
    :goto_2
    const-string v3, "Launcher.Provider"

    const-string v4, "addRemainedApps [[ "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addRemainedApps(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v3, "Launcher.Provider"

    const-string v4, "addRemainedApps ]]"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_1
    if-nez v14, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    const-string v3, "appOrder"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v17

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v18, 0x0

    cmp-long v3, v6, v18

    if-lez v3, :cond_3

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v12

    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    invoke-interface {v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v8, 0x1

    move-object v2, v9

    goto/16 :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v17

    const-string v3, "appOrder"

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v17

    goto/16 :goto_0

    :cond_4
    const-string v3, "Launcher.Provider"

    const-string v4, "loadAppOrderContainer alphabet order"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    :goto_3
    :try_start_4
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "Launcher.Provider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catch_1
    move-exception v11

    :goto_4
    :try_start_5
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "Launcher.Provider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catch_2
    move-exception v11

    :goto_5
    :try_start_6
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Launcher.Provider"

    const-string v4, "Got exception parsing applications."

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v2, :cond_8

    invoke-static {v2}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :cond_8
    throw v3

    :catchall_1
    move-exception v3

    move-object v2, v9

    goto :goto_6

    :catch_3
    move-exception v11

    move-object v2, v9

    goto :goto_5

    :catch_4
    move-exception v11

    move-object v2, v9

    goto :goto_4

    :catch_5
    move-exception v11

    move-object v2, v9

    goto :goto_3
.end method

.method private loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    .locals 30

    const-string v2, "favorites_homeOnly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    const/16 v19, 0x1

    :goto_0
    const/16 v20, 0x0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadFavorites table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hotseatOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isHomeOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v16

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/4 v5, 0x0

    const/16 v27, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v12, Ljava/io/File;

    const-string v2, "/system/csc/default_workspace_knox.xml"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v19, :cond_2

    new-instance v12, Ljava/io/File;

    const-string v2, "/system/csc/default_workspace_homeonly_knox.xml"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_1
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRestoreHomeScreen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    const/4 v11, 0x1

    :goto_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    :cond_3
    :goto_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x3

    move/from16 v0, v29

    if-ne v0, v2, :cond_4

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v14, :cond_19

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_19

    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    const-string v2, "home"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-nez p3, :cond_3

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x0

    const/16 v10, 0xf

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JJIZ)I

    move-result v2

    add-int v20, v20, v2

    goto :goto_3

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    if-eqz v19, :cond_7

    new-instance v12, Ljava/io/File;

    const-string v2, "/system/csc/default_workspace_homeonly.xml"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    new-instance v12, Ljava/io/File;

    const-string v2, "/system/csc/default_workspace.xml"

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v11, 0x1

    move-object/from16 v17, v18

    goto/16 :goto_2

    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v2

    if-eqz v2, :cond_b

    const v26, 0x7f06000a

    if-eqz v19, :cond_a

    const v26, 0x7f060009

    :cond_a
    :goto_4
    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v27

    const-string v2, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v5, v27

    goto/16 :goto_2

    :cond_b
    if-eqz v19, :cond_c

    const v26, 0x7f060008

    goto :goto_4

    :cond_c
    const v26, 0x7f060007

    goto :goto_4

    :cond_d
    const-string v2, "hotseat"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JJIZ)I

    move-result v2

    add-int v20, v20, v2

    goto/16 :goto_3

    :cond_e
    const-string v2, "PageCount"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    if-lez v24, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v22

    check-cast v22, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v2, "page_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "page_settings"

    move/from16 v0, v24

    invoke-static {v13, v2, v3, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;I)V

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore, TAG_PAGE_COUNT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    :catch_0
    move-exception v15

    :goto_5
    :try_start_3
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "Launcher.Provider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_f
    if-eqz v17, :cond_10

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_10
    :goto_6
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$702(Z)Z

    :cond_11
    return v20

    :cond_12
    :try_start_5
    const-string v2, "ScreenIndex"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    move/from16 v0, v28

    invoke-static {v2, v0}, Lcom/sec/android/app/launcher/activities/LauncherApp;->setHomeScreenIndex(Landroid/content/Context;I)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v15

    :goto_7
    :try_start_6
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "Launcher.Provider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_13
    if-eqz v17, :cond_10

    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v15

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_14
    :try_start_8
    const-string v2, "Rows"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore, TAG_GRID_ROW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v15

    :goto_8
    :try_start_9
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "Launcher.Provider"

    const-string v3, "Got exception parsing favorites."

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_15
    if-eqz v17, :cond_10

    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_6

    :catch_4
    move-exception v15

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_16
    :try_start_b
    const-string v2, "Columns"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v29

    const/4 v2, 0x4

    move/from16 v0, v29

    if-ne v0, v2, :cond_3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore, TAG_GRID_COLUMN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    if-lez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_rows:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestore_columns:I

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->setHomePageGridSize(II)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    :goto_9
    if-eqz v17, :cond_17

    :try_start_c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    :cond_17
    :goto_a
    throw v2

    :cond_18
    :try_start_d
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid tag <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> detected while parsing favorites at line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    :cond_19
    if-eqz v17, :cond_10

    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_6

    :catch_5
    move-exception v15

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_6
    move-exception v15

    const-string v2, "Launcher.Provider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :catch_7
    move-exception v15

    const-string v3, "Launcher.Provider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :catchall_1
    move-exception v2

    move-object/from16 v17, v18

    goto/16 :goto_9

    :catch_8
    move-exception v15

    move-object/from16 v17, v18

    goto/16 :goto_8

    :catch_9
    move-exception v15

    move-object/from16 v17, v18

    goto/16 :goto_7

    :catch_a
    move-exception v15

    move-object/from16 v17, v18

    goto/16 :goto_5
.end method

.method private loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JJIZ)I
    .locals 78
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFavoritesContainer. containerType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowedTags: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v15, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v52

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v70

    const/16 v59, 0x0

    const/16 v53, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v27, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    const/16 v50, 0x0

    const/16 v64, 0x1

    const/16 v51, -0x1

    const/16 v55, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sget v9, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    :cond_1
    filled-new-array {v8, v9}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Z

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->cleanCellList([[ZII)V

    :cond_2
    const-string v4, "favorites_homeOnly"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    const/16 v58, 0x1

    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getPageSettings(Z)Ljava/util/Map;

    move-result-object v65

    :cond_4
    :goto_1
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v74

    const/4 v4, 0x3

    move/from16 v0, v74

    if-ne v0, v4, :cond_5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move/from16 v0, v70

    if-le v4, v0, :cond_6

    :cond_5
    const/4 v4, 0x1

    move/from16 v0, v74

    if-ne v0, v4, :cond_8

    :cond_6
    return v59

    :cond_7
    const/16 v58, 0x0

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    move/from16 v0, v74

    if-ne v0, v4, :cond_4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v63

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFavoritesContainer. Process tag: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const-string v67, ""

    if-eqz p9, :cond_12

    const/16 v26, 0x0

    const/4 v4, 0x0

    const-string v6, "packageName"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    const-string v6, "className"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x0

    const-string v6, "screen"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    const/4 v4, 0x0

    const-string v6, "x"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    const/4 v4, 0x0

    const-string v6, "y"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->HOTSEAT:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, p4, v6

    if-nez v4, :cond_a

    if-nez v76, :cond_a

    move-object/from16 v76, v67

    const/16 v67, 0x0

    :cond_a
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    const-string v6, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mRestoreTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "iconPackage"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/4 v4, 0x0

    const-string v6, "iconResource"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    :cond_b
    :goto_2
    :try_start_0
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, p4, v6

    if-nez v4, :cond_11

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v0, v51

    if-eq v0, v4, :cond_c

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v51

    const/16 v64, 0x1

    :cond_c
    if-eqz v76, :cond_d

    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v8, :cond_e

    :cond_d
    if-eqz v77, :cond_11

    invoke-static/range {v77 .. v77}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v4, v9, :cond_11

    :cond_e
    if-eqz v64, :cond_f

    const/16 v64, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addPageSettings()V

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getPageSettings(Z)Ljava/util/Map;

    move-result-object v65

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->cleanCellList([[ZII)V

    add-int/lit8 v50, v50, 0x1

    :cond_f
    const-string v4, "favorite"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "shortcut"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "folder"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    :cond_10
    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->findEmptyCell([[ZIIII)Landroid/graphics/Point;

    move-result-object v55

    if-nez v55, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addPageSettings()V

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getPageSettings(Z)Ljava/util/Map;

    move-result-object v65

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->cleanCellList([[ZII)V

    add-int/lit8 v50, v50, 0x1

    :cond_11
    :goto_3
    const-string v4, "folder"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const/16 v71, 0x0

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$700()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "shortcut"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-eqz v24, :cond_1a

    move-object/from16 v71, v24

    :goto_4
    move-object/from16 v0, v71

    invoke-static {v0, v14}, Lcom/sec/android/app/launcher/utils/Utils;->packageEnabled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string v4, "Launcher.Provider"

    const-string v6, "skip because package not installed."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v54

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> detected while parsing favorites at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v26

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v4, 0x2

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v67

    const/4 v4, 0x3

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v76

    const/4 v4, 0x4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v77

    goto/16 :goto_2

    :cond_13
    :try_start_1
    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->x:I

    aget-object v4, v5, v4

    move-object/from16 v0, v55

    iget v6, v0, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    aput-boolean v7, v4, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v54

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> detected while parsing favorites at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "Launcher.Provider"

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_14
    :try_start_2
    const-string v4, "appwidget"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string v4, "sactivitywidget"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_15
    const/4 v4, 0x0

    const-string v6, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const/4 v4, 0x0

    const-string v6, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_16

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_17

    :cond_16
    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_17
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->findEmptyCell([[ZIIII)Landroid/graphics/Point;

    move-result-object v55

    if-nez v55, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addPageSettings()V

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getPageSettings(Z)Ljava/util/Map;

    move-result-object v65

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v9}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->cleanCellList([[ZII)V

    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v76

    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v77

    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v57, v0

    :goto_5
    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    move/from16 v0, v57

    if-ge v0, v4, :cond_11

    move-object/from16 v0, v55

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v62, v0

    :goto_6
    move-object/from16 v0, v55

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    move/from16 v0, v62

    if-ge v0, v4, :cond_19

    aget-object v4, v5, v57

    const/4 v6, 0x1

    aput-boolean v6, v4, v62

    add-int/lit8 v62, v62, 0x1

    goto :goto_6

    :cond_19
    add-int/lit8 v57, v57, 0x1

    goto :goto_5

    :cond_1a
    move-object/from16 v71, v16

    goto/16 :goto_4

    :cond_1b
    const/4 v4, 0x0

    const-string v6, "hidden"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v56

    if-eqz v56, :cond_1c

    const/16 v67, 0x0

    :cond_1c
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    const-string v4, "container"

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v6, 0x0

    cmp-long v4, p6, v6

    if-eqz v4, :cond_20

    const-string v4, "containerId"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1d
    :goto_7
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    int-to-long v6, v4

    cmp-long v4, p4, v6

    if-nez v4, :cond_1e

    rem-int/lit8 v4, v53, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v76

    div-int/lit8 v4, v53, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v77

    add-int/lit8 v53, v53, 0x1

    :cond_1e
    const-string v4, "cellX"

    move-object/from16 v0, v76

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellY"

    move-object/from16 v0, v77

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v56, :cond_22

    const-string v4, "show"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_8
    and-int/lit8 v4, p8, 0x1

    if-eqz v4, :cond_23

    const-string v4, "favorite"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    const-string v6, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-direct/range {v10 .. v19}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-ltz v4, :cond_1f

    if-nez v56, :cond_1f

    add-int/lit8 v59, v59, 0x1

    :cond_1f
    :goto_9
    const/4 v4, 0x1

    move/from16 v0, p9

    if-eq v0, v4, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_20
    if-eqz v67, :cond_1d

    invoke-virtual/range {v67 .. v67}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    move-result v6

    if-lt v4, v6, :cond_21

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Favorites item screen is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v67

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". But pages count is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v65 .. v65}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v26, :cond_4

    invoke-virtual/range {v26 .. v26}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_1

    :cond_21
    const-string v6, "containerId"

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int v4, v4, v50

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v13, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_7

    :cond_22
    const-string v4, "show"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    :cond_23
    and-int/lit8 v4, p8, 0x2

    if-eqz v4, :cond_25

    const-string v4, "shortcut"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    if-eqz p9, :cond_24

    const/4 v4, 0x0

    const-string v6, "uri"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/4 v4, 0x0

    const-string v6, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/4 v4, 0x0

    const-string v6, "icon"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    :cond_24
    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p2

    move-object/from16 v22, v13

    move-object/from16 v23, v14

    move-object/from16 v28, v18

    invoke-direct/range {v19 .. v29}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addUriShortcut(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-ltz v4, :cond_1f

    if-nez v56, :cond_1f

    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_9

    :cond_25
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_2b

    const-string v4, "appwidget"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    if-eqz p9, :cond_2a

    const/4 v4, 0x0

    const-string v6, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const/4 v4, 0x0

    const-string v6, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    :goto_a
    if-eqz v68, :cond_26

    const-string v4, "null"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    :cond_26
    const-string v68, "1"

    :cond_27
    if-eqz v69, :cond_28

    const-string v4, "null"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    :cond_28
    const-string v69, "1"

    :cond_29
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    move-object/from16 v30, p0

    move-object/from16 v31, p1

    move-object/from16 v32, p2

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    invoke-direct/range {v30 .. v38}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addAppWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1f

    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_9

    :cond_2a
    const/4 v4, 0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v68

    const/4 v4, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v69

    goto :goto_a

    :cond_2b
    and-int/lit8 v4, p8, 0x8

    if-eqz v4, :cond_33

    const-string v4, "sactivitywidget"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    if-eqz p9, :cond_32

    const/4 v4, 0x0

    const-string v6, "themeName"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    const/4 v4, 0x0

    const-string v6, "instance"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const/4 v4, 0x0

    const-string v6, "spanX"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    const/4 v4, 0x0

    const-string v6, "spanY"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    :goto_b
    if-eqz v37, :cond_2d

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    const-string v4, "null"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    const/16 v37, 0x0

    :cond_2d
    if-eqz v68, :cond_2e

    const-string v4, "null"

    move-object/from16 v0, v68

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2e
    const-string v68, "1"

    :cond_2f
    if-eqz v69, :cond_30

    const-string v4, "null"

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_30
    const-string v69, "1"

    :cond_31
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v30, p0

    move-object/from16 v31, p1

    move-object/from16 v32, p2

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    invoke-direct/range {v30 .. v40}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addSurfaceWidget(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_1f

    add-int/lit8 v59, v59, 0x1

    goto/16 :goto_9

    :cond_32
    const/16 v4, 0xa

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    const/16 v4, 0xb

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v38

    const/4 v4, 0x5

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v68

    const/4 v4, 0x6

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v69

    goto :goto_b

    :cond_33
    const-string v4, "folder"

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const/16 v72, 0x0

    const/16 v73, -0x1

    const/4 v4, 0x1

    move/from16 v0, p9

    if-ne v0, v4, :cond_36

    const/4 v4, 0x0

    const-string v6, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v72

    :cond_34
    :goto_c
    const-string v4, "title"

    move-object/from16 v0, v72

    invoke-virtual {v13, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addFolder(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v46

    const-wide/16 v60, 0x0

    const-wide/16 v6, 0x0

    cmp-long v4, v46, v6

    if-ltz v4, :cond_1f

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    int-to-long v6, v4

    cmp-long v4, p4, v6

    if-eqz v4, :cond_1f

    add-int/lit8 v59, v59, 0x1

    move/from16 v0, v59

    int-to-long v0, v0

    move-wide/from16 v60, v0

    :try_start_3
    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->FOLDER:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v44, v0

    and-int/lit8 v48, p8, -0xd

    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move-object/from16 v42, p2

    move-object/from16 v43, p3

    move/from16 v49, p9

    invoke-direct/range {v40 .. v49}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadFavoritesContainer(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;JJIZ)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v4

    add-int v59, v59, v4

    :cond_35
    :goto_d
    move/from16 v0, v59

    int-to-long v6, v0

    cmp-long v4, v6, v60

    if-nez v4, :cond_37

    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v59, v59, -0x1

    goto/16 :goto_9

    :cond_36
    const/16 v4, 0x8

    const/4 v6, -0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v73

    const/4 v4, -0x1

    move/from16 v0, v73

    if-eq v0, v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, v73

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v72

    goto/16 :goto_c

    :catch_2
    move-exception v54

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_35

    const-string v4, "Launcher.Provider"

    const-string v6, "Failed to load favorites"

    move-object/from16 v0, v54

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_37
    add-int/lit8 v4, v59, -0x1

    int-to-long v6, v4

    cmp-long v4, v6, v60

    if-nez v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v59, v59, -0x1

    new-instance v66, Landroid/content/ContentValues;

    invoke-direct/range {v66 .. v66}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "containerId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v46

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v75

    const-string v4, "containerId"

    const-string v6, "containerId"

    invoke-virtual {v13, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "container"

    sget-object v6, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->DESKTOP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;

    invoke-virtual {v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$ContainerType;->ordinal()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v66

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "cellX"

    move-object/from16 v0, v66

    move-object/from16 v1, v76

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cellY"

    move-object/from16 v0, v66

    move-object/from16 v1, v77

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v66

    move-object/from16 v3, v75

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_38
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "Launcher.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid tag <"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v63

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "> detected while parsing favorites at line "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_9
.end method


# virtual methods
.method public createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "containerId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconPackage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconResource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BLOB,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iconMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "isSystemApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT -1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "restored"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "newCue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public createTable(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    const-string v1, "favorites"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p3, p2, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "appOrder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p3, p2, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public generateNewAppOrderId()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: mMaxAppOrderId was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxAppOrderId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    return-wide v0
.end method

.method public generateNewId()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    iget-wide v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    return-wide v0
.end method

.method public getCurrentDBHomeOnlyMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeOnlyMode:Z

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "launcherapps"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$202(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/content/pm/LauncherApps;)Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$002(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/os/UserManager;)Landroid/os/UserManager;

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mComponentList:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appOrder"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appOrder"

    iget-wide v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mUserSerialNumber:J

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createAppOrderTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadAppOrderDefaults(Landroid/database/sqlite/SQLiteDatabase;)I

    :cond_0
    const-string v0, "favorites"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "favorites"

    iget-wide v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mUserSerialNumber:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    const-string v0, "favorites"

    invoke-direct {p0, p1, v0, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v0, :cond_2

    const-string v0, "favorites_homeOnly"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "favorites_homeOnly"

    iget-wide v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mUserSerialNumber:J

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->createFavoritesTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    const-string v0, "favorites_homeOnly"

    invoke-direct {p0, p1, v0, v4}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_2
    const-string v0, "Launcher.Provider"

    const-string v1, "LauncherDatabaseHelper, onCreate() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade triggered, oldVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;
    invoke-static {v2, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$002(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/os/UserManager;)Landroid/os/UserManager;

    :cond_1
    const/16 v1, 0xd

    if-ne p2, v1, :cond_2

    const/16 p2, 0xe

    :cond_2
    const/16 v1, 0x10

    if-ge p2, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addColumn_Profile(Landroid/database/sqlite/SQLiteDatabase;)Z

    const/16 p2, 0x10

    :cond_3
    const/16 v1, 0x11

    if-ge p2, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->addColumn_NewCue(Landroid/database/sqlite/SQLiteDatabase;)Z

    :goto_0
    return-void

    :cond_4
    const-string v1, "launcher.db"

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->getMigrator(Ljava/lang/String;II)Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;

    move-result-object v0

    if-nez v0, :cond_7

    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Launcher.Provider"

    const-string v2, "Unable to find database migrator, applying defaults."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_6

    const-string v1, "DROP TABLE IF EXISTS favorites_homeApps"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS favorites_homeOnly"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_7
    # getter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$300()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Launcher.Provider"

    const-string v2, "Migrating database."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;->migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V

    instance-of v1, v0, Lcom/sec/android/app/launcher/migrators/LauncherMigrator;

    if-eqz v1, :cond_9

    check-cast v0, Lcom/sec/android/app/launcher/migrators/LauncherMigrator;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/migrators/LauncherMigrator;->getRequiredPageCount()I

    move-result v1

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mRequiredPageCount:I
    invoke-static {v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$402(I)I

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOldDatabaseVersion:I
    invoke-static {p2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$502(I)I

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider;->mNewDatabaseVersion:I
    invoke-static {p3}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->access$602(I)I

    :cond_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    goto :goto_0
.end method

.method public switchFavoritesIfNecessary(Z)Z
    .locals 11

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeOnlyMode:Z

    if-eq p1, v8, :cond_0

    if-eqz p1, :cond_1

    const-string v5, "favorites_homeOnly"

    const-string v4, "favorites_homeApps"

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ALTER table favorites rename to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ALTER table "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " rename to favorites"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    const-string v8, "favorites"

    invoke-direct {p0, v1, v8}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->initializeMaxId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-wide v2, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mMaxId:J

    const-string v8, "Launcher.Provider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "switchFavoritesIfNecessary. old/new mMaxId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mIsHomeOnlyMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    return v0

    :cond_1
    const-string v5, "favorites_homeApps"

    const-string v4, "favorites_homeOnly"

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

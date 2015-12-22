.class public Lcom/sec/android/app/launcher/providers/LauncherProvider;
.super Lcom/sec/android/app/launcher/providers/ProviderBase;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;,
        Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;,
        Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues;
    }
.end annotation


# static fields
.field public static APPS_LANGUAGE_UPDATER:Ljava/lang/String; = null

.field public static APPS_URI:Landroid/net/Uri; = null

.field public static APPS_URI_DO_NOT_NOTIFY:Landroid/net/Uri; = null

.field public static APPS_URI_UPDATE:Landroid/net/Uri; = null

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.providers.LauncherProvider"

.field static final CSC_FILE_MAINMENU:Ljava/lang/String; = "/system/csc/default_application_order.xml"

.field static final CSC_FILE_WORKSPACE:Ljava/lang/String; = "/system/csc/default_workspace.xml"

.field static final CSC_FILE_WORKSPACE_HOMEONLY:Ljava/lang/String; = "/system/csc/default_workspace_homeonly.xml"

.field static final CSC_FILE_WORKSPACE_HOMEONLY_KNOX:Ljava/lang/String; = "/system/csc/default_workspace_homeonly_knox.xml"

.field static final CSC_FILE_WORKSPACE_KNOX:Ljava/lang/String; = "/system/csc/default_workspace_knox.xml"

.field public static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DEBUGGABLE:Z

.field public static FAVORITES_URI:Landroid/net/Uri; = null

.field public static FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri; = null

.field public static FAVORITES_URI_HOMEAPPS:Landroid/net/Uri; = null

.field public static FAVORITES_URI_HOMEONLY:Landroid/net/Uri; = null

.field public static FAVORITES_URI_UPDATE:Landroid/net/Uri; = null

.field public static final PARAMETER_PACKAGE_UPDATE:Ljava/lang/String; = "packageUpdate"

.field public static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field public static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TABLE_FAVORITES_HOME_APPS:Ljava/lang/String; = "favorites_homeApps"

.field public static final TABLE_FAVORITES_HOME_ONLY:Ljava/lang/String; = "favorites_homeOnly"

.field private static mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;

.field private static mInstance:Lcom/sec/android/app/launcher/providers/LauncherProvider;

.field private static mIsRestoreHomeScreen:Z

.field private static mNewDatabaseVersion:I

.field private static mOldDatabaseVersion:I

.field private static mRequiredPageCount:I


# instance fields
.field private mAppsValidationChecker:Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/launcher/utils/Utils;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/favorites?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/favorites_homeApps?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEAPPS:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/favorites_homeOnly?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_HOMEONLY:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/favorites?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/appOrder?notify=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/appOrder?notify=false"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/favorites?notify=true&packageUpdate=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI_UPDATE:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.launcher.providers.LauncherProvider/appOrder?notify=true&packageUpdate=true"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI_UPDATE:Landroid/net/Uri;

    const-string v0, "updateLanguage"

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_LANGUAGE_UPDATER:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/ProviderBase;-><init>()V

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;-><init>(Lcom/sec/android/app/launcher/providers/LauncherProvider;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mAppsValidationChecker:Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/os/UserManager;)Landroid/os/UserManager;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    return-object p1
.end method

.method static synthetic access$100()Lcom/sec/android/app/launcher/activities/LauncherApp;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/launcher/providers/LauncherProvider;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/content/pm/LauncherApps;)Landroid/content/pm/LauncherApps;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object p1
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->DEBUGGABLE:Z

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mRequiredPageCount:I

    return p0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOldDatabaseVersion:I

    return p0
.end method

.method static synthetic access$602(I)I
    .locals 0

    sput p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mNewDatabaseVersion:I

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z

    return p0
.end method

.method private bulkInsertAppOrder(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v12, "INSERT INTO appOrder (itemType,container,containerId,pos,hidden,title,componentName,isSystemApp,icon,color,profileId,modified,newCue) values (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    if-nez v13, :cond_0

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    move-object/from16 v2, p2

    array-length v10, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_5

    aget-object v14, v2, v6

    const/4 v15, 0x1

    const-string v16, "itemType"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x2

    const-string v16, "container"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x3

    const-string v16, "containerId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x4

    const-string v16, "pos"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x5

    const-string v16, "hidden"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v15, 0x6

    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v15, 0x7

    const-string v16, "componentName"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v15, 0x8

    const-string v16, "isSystemApp"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v15, "icon"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0x9

    const-string v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :goto_2
    const-string v15, "color"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0xa

    const-string v16, "color"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_3
    const/16 v15, 0xb

    const-string v16, "profileId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v15, 0xc

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v15, "newCue"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0xd

    const-string v16, "newCue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_4
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_1

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    const/16 v15, 0x9

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_2

    :cond_3
    const/16 v15, 0xa

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    :cond_4
    const/16 v15, 0xd

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_4

    :cond_5
    if-lez v4, :cond_6

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const-string v17, ","

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->notifyChange(Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v15, v4

    goto/16 :goto_0
.end method

.method private bulkInsertFavourites(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v12, "INSERT INTO favorites (itemType, container, containerId, cellX, cellY, spanX, spanY, title, intent, appWidgetId, iconType, iconPackage, iconResource, icon, preview, show, iconMode, isSystemApp, profileId, modified, newCue) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    if-nez v13, :cond_0

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    move-object/from16 v2, p2

    array-length v10, v2

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_d

    aget-object v14, v2, v6

    const/4 v15, 0x1

    const-string v16, "itemType"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x2

    const-string v16, "container"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x3

    const-string v16, "containerId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x4

    const-string v16, "cellX"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x5

    const-string v16, "cellY"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x6

    const-string v16, "spanX"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v15, 0x7

    const-string v16, "spanY"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v15, 0x8

    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/16 v15, 0x9

    const-string v16, "intent"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const-string v15, "appWidgetId"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/16 v15, 0xa

    const-string v16, "appWidgetId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_2
    const-string v15, "iconType"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    const/16 v15, 0xb

    const-string v16, "iconType"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :goto_3
    const-string v15, "iconPackage"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/16 v15, 0xc

    const-string v16, "iconPackage"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_4
    const-string v15, "iconResource"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v15, 0xd

    const-string v16, "iconResource"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_5
    const-string v15, "icon"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/16 v15, 0xe

    const-string v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :goto_6
    const-string v15, "preview"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/16 v15, 0xf

    const-string v16, "icon"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    :goto_7
    const-string v15, "show"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    const/16 v15, 0x10

    const-string v16, "show"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_8

    const-wide/16 v16, 0x1

    :goto_8
    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_9
    const-string v15, "iconMode"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/16 v15, 0x11

    const-string v16, "iconMode"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_a
    const-string v15, "isSystemApp"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x12

    const-string v16, "isSystemApp"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_b
    const/16 v15, 0x13

    const-string v16, "profileId"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v15, 0x14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const-string v15, "newCue"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v15, 0x15

    const-string v16, "newCue"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    :goto_c
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v8

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-lez v15, :cond_1

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_2
    const/16 v15, 0xa

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    invoke-virtual {v13, v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto/16 :goto_2

    :cond_3
    const/16 v15, 0xb

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_3

    :cond_4
    const/16 v15, 0xc

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_4

    :cond_5
    const/16 v15, 0xd

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_5

    :cond_6
    const/16 v15, 0xe

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_6

    :cond_7
    const/16 v15, 0xf

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_7

    :cond_8
    const-wide/16 v16, 0x0

    goto/16 :goto_8

    :cond_9
    const/16 v15, 0x10

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_9

    :cond_a
    const/16 v15, 0x11

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_a

    :cond_b
    const/16 v15, 0x12

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_b

    :cond_c
    const/16 v15, 0x15

    invoke-virtual {v13, v15}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_c

    :cond_d
    if-lez v4, :cond_e

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const-string v17, ","

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15, v7}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->notifyChange(Landroid/net/Uri;)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v15, v4

    goto/16 :goto_0
.end method

.method public static createIntentUriForAppItem(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 4

    const-string v1, ""

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/sec/android/app/launcher/providers/LauncherProvider;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mInstance:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    return-object v0
.end method

.method public static getNewDatabaseVersion()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mNewDatabaseVersion:I

    return v0
.end method

.method public static getOldDatabaseVersion()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOldDatabaseVersion:I

    return v0
.end method

.method public static getUpgradePageCount()I
    .locals 1

    sget v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mRequiredPageCount:I

    return v0
.end method


# virtual methods
.method public addFolder(Lcom/sec/android/app/launcher/data/FolderItem;)Z
    .locals 28

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->getInstance()Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;

    move-result-object v10

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getOriginalItem()Lcom/sec/android/app/launcher/data/LauncherItem;

    move-result-object v20

    check-cast v20, Lcom/sec/android/app/launcher/data/FolderItem;

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/data/FolderItem;->getDbId()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->clearIsClone()V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT * FROM appOrder WHERE _id = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_2

    :cond_0
    const-string v25, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to locate folder item with id \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' in the database. This folder cannot be dropped."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v25, 0x0

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_1
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_0
    return v25

    :cond_2
    const/16 v25, 0x1

    :try_start_1
    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v25, "itemType"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "container"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerType()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "containerId"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getContainerId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "cellX"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellX()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "cellY"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getCellY()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "spanX"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "spanY"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "title"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getTitle()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "show"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "color"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getFolderColorIndex()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "favorites"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    const-wide/16 v26, -0x1

    cmp-long v25, v14, v26

    if-nez v25, :cond_4

    const/16 v25, 0x0

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v26

    if-eqz v26, :cond_3

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_4
    long-to-int v0, v14

    move/from16 v25, v0

    :try_start_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/data/FolderItem;->setDbId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v17

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/launcher/data/FolderItem;->getItems()Ljava/util/List;

    move-result-object v24

    if-eqz v17, :cond_9

    if-eqz v24, :cond_9

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const/4 v11, 0x0

    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_9

    move-object/from16 v0, v24

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/app/launcher/data/LauncherItem;

    if-nez v21, :cond_5

    const-string v25, "Launcher.Provider"

    const-string v26, "Null item found in original folder. This item will be skipped."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/data/LauncherItem;->getDbId()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v22, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SELECT * FROM appOrder WHERE _id = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v25

    if-nez v25, :cond_8

    :cond_6
    const-string v25, "Launcher.Provider"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unable to locate item with id \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' in the database. This item will be skipped."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v25

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v26

    if-eqz v26, :cond_7

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v25

    :cond_8
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Landroid/content/ContentValues;->clear()V

    const-string v25, "itemType"

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "container"

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "containerId"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/sec/android/app/launcher/activities/HomeFolderPresenter;->getCellXY(ILandroid/content/res/Resources;)[I

    move-result-object v4

    const-string v25, "cellX"

    const/16 v26, 0x0

    aget v26, v4, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "cellY"

    const/16 v26, 0x1

    aget v26, v4, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "spanX"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "spanY"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "title"

    const/16 v26, 0x6

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "intent"

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/launcher/data/LauncherItem;->getIntent()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "appWidgetId"

    const/16 v26, -0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "iconType"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v25, "iconPackage"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v25, "iconResource"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v25, "icon"

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v25, "preview"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v25, "show"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "iconMode"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v25, "isSystemApp"

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v25, "favorites"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/launcher/data/LauncherItem;

    long-to-int v0, v8

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDbId(I)V

    invoke-virtual {v13, v10}, Lcom/sec/android/app/launcher/data/LauncherItem;->setDataConnector(Lcom/sec/android/app/launcher/data/connectors/DataConnector;)V

    long-to-int v0, v14

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/sec/android/app/launcher/data/LauncherItem;->setContainerId(I)V

    invoke-virtual {v13}, Lcom/sec/android/app/launcher/data/LauncherItem;->clearIsClone()V

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v10, v8, v9, v13, v0}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->addItem(JLcom/sec/daliviews/views/Item;Z)V

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v5}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_a
    invoke-static {v6}, Lcom/sec/android/app/launcher/utils/Utils;->close(Ljava/io/Closeable;)V

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Lcom/sec/android/app/launcher/data/connectors/LauncherFavoritesConnector;->addNewItem(Lcom/sec/android/app/launcher/data/LauncherItem;Z)V

    const/16 v25, 0x1

    goto/16 :goto_0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3

    new-instance v0, Lcom/sec/android/app/launcher/utils/SqlArguments;

    invoke-direct {v0, p1}, Lcom/sec/android/app/launcher/utils/SqlArguments;-><init>(Landroid/net/Uri;)V

    iget-object v1, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    const-string v2, "favorites"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->bulkInsertFavourites(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/launcher/utils/SqlArguments;->table:Ljava/lang/String;

    const-string v2, "appOrder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->bulkInsertAppOrder(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppsValidationChecker()Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mAppsValidationChecker:Lcom/sec/android/app/launcher/providers/LauncherProvider$AppsValidationChecker;

    return-object v0
.end method

.method public getCurrentDBHomeOnlyMode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getCurrentDBHomeOnlyMode()Z

    move-result v0

    return v0
.end method

.method public getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;-><init>(Lcom/sec/android/app/launcher/providers/LauncherProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public modeSwitch(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->switchFavoritesIfNecessary(Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/LauncherApp;

    sput-object v0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mApp:Lcom/sec/android/app/launcher/activities/LauncherApp;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    sput-object p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mInstance:Lcom/sec/android/app/launcher/providers/LauncherProvider;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v0, 0x1

    return v0
.end method

.method public restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/launcher/providers/LauncherProvider;->mIsRestoreHomeScreen:Z

    if-nez p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;

    # setter for: Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->mParserRestore:Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v2, p1}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->access$902(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v2}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "favorites"

    invoke-virtual {v0, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "Launcher.Provider"

    const-string v4, "restore, restoreHomeScreenDB()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "favorites"

    # invokes: Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->access$1000(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_0

    const-string v3, "favorites"

    # invokes: Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->loadDefaultFavorites(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I
    invoke-static {v2, v0, v3, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;->access$1000(Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)I

    :cond_0
    return v1
.end method

.method public updateAppsIcon(ILandroid/graphics/Bitmap;)V
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v4, "icon"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateDisplacedItems(Ljava/lang/String;Ljava/util/Map;Z)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/ContentValues;",
            ">;Z)I"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherApp;->isSafeMode()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v2, p1, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_5

    const/4 v7, 0x0

    const-string v9, "appOrder"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider;->APPS_URI:Landroid/net/Uri;

    :cond_4
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    const-string v11, ","

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_5

    const/4 v9, 0x2

    invoke-virtual {p0, v7, v9, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->buildNotifyUri(Landroid/net/Uri;ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :cond_6
    :try_start_1
    const-string v9, "favorites"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v7, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7
    throw v9
.end method

.method public updateHomeIcon(ILandroid/graphics/Bitmap;)V
    .locals 6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v4, "iconType"

    sget-object v5, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->BITMAP:Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;

    invoke-virtual {v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider$LauncherValues$IconType;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "icon"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/launcher/providers/LauncherProvider;->FAVORITES_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v2, v3, v5}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

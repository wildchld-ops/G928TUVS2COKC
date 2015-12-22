.class public Lcom/sec/android/app/launcher/providers/PageSettingsProvider;
.super Lcom/sec/android/app/launcher/providers/ProviderBase;
.source "PageSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;,
        Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;,
        Lcom/sec/android/app/launcher/providers/PageSettingsProvider$XmlTags;,
        Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;
    }
.end annotation


# static fields
.field public static AUTHORITY:Ljava/lang/String; = null

.field public static CONTENT_URI:Landroid/net/Uri; = null

.field public static CONTENT_URI_DO_NOT_NOTIFY:Landroid/net/Uri; = null

.field public static CONTENT_URI_HOMEAPPS:Landroid/net/Uri; = null

.field public static CONTENT_URI_HOMEONLY:Landroid/net/Uri; = null

.field public static final CSC_FILE_PAGE_SETTINGS:Ljava/lang/String; = "/system/csc/default_page_settings.xml"

.field public static CURRENT_HOME_COLUMNS:I = 0x0

.field public static CURRENT_HOME_ROWS:I = 0x0

.field public static final DATABASE_NAME:Ljava/lang/String; = "pagesettings.db"

.field private static final DEBUGGABLE:Z = true

.field public static GRID_SIZE_URI:Landroid/net/Uri; = null

.field public static HOME_MAX_COLUMNS:I = 0x0

.field public static HOME_MAX_ROWS:I = 0x0

.field public static HOME_MIN_COLUMNS:I = 0x0

.field public static HOME_MIN_ROWS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Launcher.PageSettingsProvider.Provider"

.field private static final TAG_NAME_PAGE:Ljava/lang/String; = "page"

.field private static final TAG_NAME_PAGECOUNT:Ljava/lang/String; = "PageCount"

.field private static mPageProvider:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;


# instance fields
.field private mFileReader:Ljava/io/FileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "com.sec.android.app.launcher.providers.PageSettingsProvider"

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page_settings?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page_settings_homeApps?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEAPPS:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page_settings_homeOnly?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_HOMEONLY:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/page_settings?notify=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CONTENT_URI_DO_NOT_NOTIFY:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current_grid_size"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?notify=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->GRID_SIZE_URI:Landroid/net/Uri;

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    sput v2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/launcher/providers/ProviderBase;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    sput-object p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mPageProvider:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getKonxPageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->sortPages(Ljava/util/List;)V

    return-void
.end method

.method private getCscResource(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 10

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-string v5, "Launcher.PageSettingsProvider.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " CSC File Path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    :cond_0
    :goto_1
    return-object v4

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    goto :goto_1

    :catchall_0
    move-exception v5

    iput-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    throw v5
.end method

.method private getGridSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11

    const/4 v8, 0x0

    const/4 v0, 0x6

    new-array v9, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v9, v0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    return-object v9

    :catch_0
    move-exception v10

    :try_start_1
    const-string v0, "Launcher.PageSettingsProvider.Provider"

    invoke-virtual {v10}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_1
    move-exception v10

    :try_start_2
    const-string v0, "Launcher.PageSettingsProvider.Provider"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getGridSizeInfo(Ljava/lang/String;)[I
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v0, 0x6

    new-array v6, v0, [I

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "pageRows"

    aput-object v0, v3, v9

    const-string v0, "pageColumns"

    aput-object v0, v3, v10

    const-string v0, "minRows"

    aput-object v0, v3, v11

    const-string v0, "minColumns"

    aput-object v0, v3, v12

    const-string v0, "maxRows"

    aput-object v0, v3, v13

    const/4 v0, 0x5

    const-string v2, "maxColumns"

    aput-object v2, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "homeMenu=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "homeMenu"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Where: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Order By: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v0, "Launcher.PageSettingsProvider.Provider"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    const-string v0, "Launcher.PageSettingsProvider.Provider"

    const-string v2, " db is null. First close the open database and open a new one "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :goto_0
    const-string v2, "current_grid_size"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v6

    aget v0, v6, v9

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    aget v0, v6, v10

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    aget v0, v6, v11

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    aget v0, v6, v12

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    aget v0, v6, v13

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    const/4 v0, 0x5

    aget v0, v6, v0

    sput v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    const-string v0, "Launcher.PageSettingsProvider.Provider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Row:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v9

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", Column:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v10

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", MinRow:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v11

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", MinColumn:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v12

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", MaxRow:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v8, v6, v13

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", MaxColumn:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x5

    aget v8, v6, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/launcher/providers/PageSettingsProvider;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mPageProvider:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    return-object v0
.end method

.method private static getKonxPageCount(Landroid/content/Context;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v5, v6

    const-string v8, "favorites"

    invoke-static {v5, v8}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_2

    :cond_1
    if-eq v7, v10, :cond_2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "PageCount"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    const-string v8, "cdokim"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "knox, TAG_PAGE_COUNT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v8, "Launcher.PageSettingsProvider.Provider"

    const-string v9, "Got exception parsing KNOX page count."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v8, "Launcher.PageSettingsProvider.Provider"

    const-string v9, "Got exception parsing KNOX page count."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v8, "Launcher.PageSettingsProvider.Provider"

    const-string v9, "Got exception parsing KNOX page count."

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initializeDefaultGrid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "New Table data"

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_0

    aget-object v3, p3, v1

    aget-object v4, p4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p3, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "Launcher.PageSettingsProvider.Provider"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 33

    const/4 v12, 0x0

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, " Inside loadCurrentGridSizeTable() "

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/16 v23, 0x0

    const/4 v5, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const-string v29, "/system/csc/default_page_settings.xml"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getCscResource(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, "CSC is not available"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v25, 0x7f060004

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v26

    move-object/from16 v23, v26

    :goto_0
    const-string v29, "PageSettings"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/utils/Utils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/16 v29, 0x7

    move/from16 v0, v29

    new-array v10, v0, [Ljava/lang/String;

    const/16 v29, 0x0

    const-string v30, "homeMenu"

    aput-object v30, v10, v29

    const/16 v29, 0x1

    const-string v30, "pageRows"

    aput-object v30, v10, v29

    const/16 v29, 0x2

    const-string v30, "pageColumns"

    aput-object v30, v10, v29

    const/16 v29, 0x3

    const-string v30, "minRows"

    aput-object v30, v10, v29

    const/16 v29, 0x4

    const-string v30, "minColumns"

    aput-object v30, v10, v29

    const/16 v29, 0x5

    const-string v30, "maxRows"

    aput-object v30, v10, v29

    const/16 v29, 0x6

    const-string v30, "maxColumns"

    aput-object v30, v10, v29

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v13, 0x0

    :cond_0
    :goto_1
    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v6, :cond_c

    :cond_1
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, " inside while loop"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v29, "defaultgridsize"

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_0

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, " Loading the "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " data from xml"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v27

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v27

    if-ge v15, v0, :cond_a

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    const-string v29, "homeMenu"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    move-object v11, v4

    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, "CSC is available"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v5

    goto/16 :goto_0

    :cond_4
    const-string v29, "pageRows"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    move-object/from16 v22, v4

    goto :goto_3

    :cond_5
    const-string v29, "pageColumns"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    move-object/from16 v21, v4

    goto :goto_3

    :cond_6
    const-string v29, "minRows"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_7

    move-object/from16 v19, v4

    goto :goto_3

    :cond_7
    const-string v29, "minColumns"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_8

    move-object/from16 v18, v4

    goto :goto_3

    :cond_8
    const-string v29, "maxRows"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    move-object/from16 v17, v4

    goto :goto_3

    :cond_9
    const-string v29, "maxColumns"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    move-object/from16 v16, v4

    goto :goto_3

    :cond_a
    const/16 v29, 0x7

    move/from16 v0, v29

    new-array v9, v0, [Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v11, v9, v29

    const/16 v29, 0x1

    aput-object v22, v9, v29

    const/16 v29, 0x2

    aput-object v21, v9, v29

    const/16 v29, 0x3

    aput-object v19, v9, v29

    const/16 v29, 0x4

    aput-object v18, v9, v29

    const/16 v29, 0x5

    aput-object v17, v9, v29

    const/16 v29, 0x6

    aput-object v16, v9, v29

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Initial Grid Size Data: Home/Menu: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", Rows: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", Columns: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10, v9}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->initializeDefaultGrid(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_b
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    sput v29, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    add-int/lit8 v13, v13, 0x0

    goto/16 :goto_1

    :cond_c
    move v12, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_d
    :goto_4
    return v12

    :catch_0
    move-exception v7

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v7

    :try_start_2
    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, "Got exception parsing favorites."

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v7

    :try_start_4
    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, "Got exception parsing favorites."

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v7

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catch_5
    move-exception v7

    :try_start_6
    const-string v29, "Launcher.PageSettingsProvider.Provider"

    const-string v30, "Got exception parsing favorites."

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    if-eqz v29, :cond_d

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_4

    :catch_6
    move-exception v7

    const-string v29, "Launcher.PageSettingsProvider.Provider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, ""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catchall_0
    move-exception v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v30, v0

    if-eqz v30, :cond_e

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mFileReader:Ljava/io/FileReader;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :cond_e
    :goto_5
    throw v29

    :catch_7
    move-exception v7

    const-string v30, "Launcher.PageSettingsProvider.Provider"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private static sortPages(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/launcher/data/PageItem;",
            ">;)V"
        }
    .end annotation

    new-instance v4, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$1;

    invoke-direct {v4}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$1;-><init>()V

    invoke-static {p0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/launcher/data/PageItem;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/launcher/data/PageItem;->setPageOrder(I)V

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateGridSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;-><init>(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v0
.end method

.method public getHomePageColumns()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    :goto_0
    return v1

    :cond_0
    const-string v1, "home"

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSizeInfo(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getHomePageMaxColumns()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    :goto_0
    return v1

    :cond_0
    const-string v1, "home"

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSizeInfo(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x5

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getHomePageMaxRows()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    :goto_0
    return v1

    :cond_0
    const-string v1, "home"

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSizeInfo(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x4

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getHomePageRows()I
    .locals 2

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    if-lez v1, :cond_0

    sget v1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    :goto_0
    return v1

    :cond_0
    const-string v1, "home"

    invoke-direct {p0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSizeInfo(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0
.end method

.method public getPageSettings()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "pageOrder"

    aput-object v4, v2, v1

    const-string v1, "page_settings"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v1, "pageOrder"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_0
    const-string v1, "Launcher.PageSettingsProvider.Provider"

    const-string v4, " db is null. First close the open database and open a new one "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v11
.end method

.method public getPageSettingsById()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "pageOrder"

    aput-object v4, v2, v1

    const-string v1, "page_settings"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v1, "pageOrder"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_0
    const-string v1, "Launcher.PageSettingsProvider.Provider"

    const-string v4, " db is null. First close the open database and open a new one "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v11
.end method

.method public modeSwitch(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->switchPageSettingsIfNecessary(Z)Z

    move-result v0

    return v0
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public setHomePageGridSize(II)V
    .locals 8

    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    if-eqz v5, :cond_0

    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    if-eqz v5, :cond_0

    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    if-eqz v5, :cond_0

    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "home"

    invoke-direct {p0, v5}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getGridSizeInfo(Ljava/lang/String;)[I

    :cond_1
    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    if-ge p1, v5, :cond_4

    sget p1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_ROWS:I

    :cond_2
    :goto_0
    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    if-ge p2, v5, :cond_5

    sget p2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MIN_COLUMNS:I

    :cond_3
    :goto_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "pageRows"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pageColumns"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, " homeMenu =\"homeMenu\""

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v5, :cond_6

    const-string v5, "Launcher.PageSettingsProvider.Provider"

    const-string v6, " db is not null "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    :goto_2
    const-string v5, "current_grid_size"

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->updateGridSize(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const-string v5, "Launcher.PageSettingsProvider.Provider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rows updated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    sput p1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sput p2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    return-void

    :cond_4
    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    if-le p1, v5, :cond_2

    sget p1, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_ROWS:I

    goto :goto_0

    :cond_5
    sget v5, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    if-le p2, v5, :cond_3

    sget p2, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->HOME_MAX_COLUMNS:I

    goto :goto_1

    :cond_6
    :try_start_1
    const-string v5, "Launcher.PageSettingsProvider.Provider"

    const-string v6, " db is null. First close the open database and open a new one "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    iget-object v5, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_3
.end method

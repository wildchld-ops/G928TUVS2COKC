.class public Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;
.super Lcom/sec/android/app/launcher/providers/DatabaseHelper;
.source "PageSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/providers/PageSettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageSettingsDatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsHomeModeChangeFeature:Z

.field private mIsHomeOnlyMode:Z

.field final synthetic this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    const-string v1, "pagesettings.db"

    const/16 v2, 0x11

    invoke-direct {p0, p2, v1, v3, v2}, Lcom/sec/android/app/launcher/providers/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v3, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/sec/android/app/launcher/utils/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeOnlyMode:Z

    iput-object p2, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "page_settings_homeApps"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeOnlyMode:Z

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeOnlyMode:Z

    if-nez v1, :cond_1

    const-string v1, "current_grid_size_homeOnly"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "current_grid_size_homeOnly"

    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;->createCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "current_grid_size_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    invoke-static {p1, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v1, "page_settings_homeOnly"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "page_settings_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "page_settings_homeOnly"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getUpgradePageCount()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "current_grid_size"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Launcher.PageSettingsProvider.Provider"

    const-string v1, " inside OnCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "current_grid_size"

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;->createCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    const-string v1, "current_grid_size"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    :cond_0
    const-string v0, "page_settings"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "page_settings"

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v0, :cond_2

    const-string v0, "current_grid_size_homeOnly"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "current_grid_size_homeOnly"

    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;->createCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    const-string v1, "current_grid_size_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    :cond_1
    const-string v0, "page_settings_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    invoke-static {p1, v0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "page_settings_homeOnly"

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->loadPages(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getOldDatabaseVersion()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/launcher/providers/LauncherProvider;->getNewDatabaseVersion()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v1, "Launcher.PageSettingsProvider.Provider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "pagesettings.db"

    invoke-static {v1, p2, p3}, Lcom/sec/android/app/launcher/migrators/DatabaseMigratorFactory;->getMigrator(Ljava/lang/String;II)Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "Launcher.Provider"

    const-string v2, "Unable to find database migrator, applying defaults."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    if-ne p2, v1, :cond_1

    const/16 v1, 0x10

    if-ne p3, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "DROP TABLE IF EXISTS current_grid_size"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS page_settings"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_2

    const-string v1, "DROP TABLE IF EXISTS current_grid_size_homeApps"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS current_grid_size_homeOnly"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS page_settings_homeApps"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DROP TABLE IF EXISTS page_settings_homeOnly"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :cond_3
    const-string v1, "Launcher.Provider"

    const-string v2, "Migrating database."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "page_settings"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_4

    const-string v1, "page_settings_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->createPageSettingTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsTable;->access$000(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    invoke-virtual {v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/android/app/launcher/migrators/DatabaseMigrator;->migrate(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;Lcom/sec/android/app/launcher/migrators/TableCreator;)V

    const-string v1, "current_grid_size"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "current_grid_size"

    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;->createCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    const-string v2, "current_grid_size"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    invoke-static {v1, p1, v2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeModeChangeFeature:Z

    if-eqz v1, :cond_0

    const-string v1, "current_grid_size_homeOnly"

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "current_grid_size_homeOnly"

    invoke-static {p1, v1}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$CurrentGridSize;->createCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->this$0:Lcom/sec/android/app/launcher/providers/PageSettingsProvider;

    const-string v2, "current_grid_size_homeOnly"

    # invokes: Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->loadCurrentGridSizeTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    invoke-static {v1, p1, v2}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->access$100(Lcom/sec/android/app/launcher/providers/PageSettingsProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public switchPageSettingsIfNecessary(Z)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-boolean v6, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeOnlyMode:Z

    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_2

    const-string v5, "page_settings_homeOnly"

    const-string v4, "current_grid_size_homeOnly"

    const-string v3, "page_settings_homeApps"

    const-string v2, "current_grid_size_homeApps"

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table page_settings rename to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rename to page_settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table current_grid_size rename to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rename to current_grid_size"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iput-boolean p1, p0, Lcom/sec/android/app/launcher/providers/PageSettingsProvider$PageSettingsDatabaseHelper;->mIsHomeOnlyMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_0
    if-eqz v0, :cond_1

    sput v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_ROWS:I

    sput v8, Lcom/sec/android/app/launcher/providers/PageSettingsProvider;->CURRENT_HOME_COLUMNS:I

    :cond_1
    return v0

    :cond_2
    const-string v5, "page_settings_homeApps"

    const-string v4, "current_grid_size_homeApps"

    const-string v3, "page_settings_homeOnly"

    const-string v2, "current_grid_size_homeOnly"

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

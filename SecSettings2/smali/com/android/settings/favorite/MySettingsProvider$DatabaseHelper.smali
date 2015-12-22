.class Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/favorite/MySettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private saved_cnt:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "mysettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->saved_cnt:I

    iput-object p1, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initFavorDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v10, 0x4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Lcom/android/settings/search/ValueTrackerActivity;

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/search/ValueTrackerActivity;-><init>(Landroid/content/Context;)V

    const-string v7, "default_mode"

    invoke-virtual {v6, v0, v7}, Lcom/android/settings/search/ValueTrackerActivity;->buildDashboardCategories(Ljava/util/List;Ljava/lang/String;)V

    const-string v8, "MySettingsProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "default quick setting tile count : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v7, v2}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-wide v8, v4, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v4, Lcom/android/settings/dashboard/DashboardTile;->categoryId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "key"

    invoke-virtual {v5, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "categoryid"

    invoke-virtual {v5, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ranking"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "favorite"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v1, "CREATE TABLE favorite (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , categoryid STRING NOT NULL , ranking INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE frequent (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL , key STRING NOT NULL , tile BLOB NOT NULL , count INTEGER)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->initFavorDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "MySettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destory all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DROP TABLE IF EXISTS favorite"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS frequent"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/favorite/MySettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

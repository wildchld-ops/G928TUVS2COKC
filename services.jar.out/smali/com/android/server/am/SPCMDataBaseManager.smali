.class public Lcom/android/server/am/SPCMDataBaseManager;
.super Ljava/lang/Object;
.source "SPCMDataBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;,
        Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    }
.end annotation


# static fields
.field private static final DB_CREATE_LIST:Ljava/lang/String; = " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT,  resetTime TEXT);"

.field private static final DB_NAME:Ljava/lang/String; = "sm.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.sm/databases/"

.field private static final DB_TABLE:Ljava/lang/String; = "AppFreezer"

.field private static final DB_VERSION:I = 0x1

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field static final TAG:Ljava/lang/String; = "SPCMDataBaseManager"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private dbClose()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;->close()V

    return-void
.end method

.method private dbDelete(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "AppFreezer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    return-wide v0
.end method

.method private dbOpen()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "/data/data/com.samsung.android.sm/databases/sm.db"

    new-instance v1, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    iget-object v2, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;-><init>(Lcom/android/server/am/SPCMDataBaseManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v3, 0x0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string v4, "extras"

    invoke-virtual {v2, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "resetTime"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "package_name=? and (extras!=? or extras is null)"

    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    const/4 v3, 0x1

    const-string v4, "9"

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "AppFreezer"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public GetLockingTimeFromSM()I
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v6, "key"

    const-string/jumbo v7, "value"

    const/4 v10, -0x1

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_2

    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "spcm_locking_time"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    return v10
.end method

.method public GetPackgeInfofromSM(Landroid/util/ArrayMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v3, 0x0

    const/4 v10, 0x0

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "resetTime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_3

    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    invoke-direct {v8, p0}, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;-><init>(Lcom/android/server/am/SPCMDataBaseManager;)V

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    iput v10, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    iget-boolean v0, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    iput-boolean v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    :goto_2
    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    iput-boolean v10, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void
.end method

.method public UpdateDBAll(Landroid/util/ArrayMap;JJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;JJ)Z"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbOpen()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    if-eqz v3, :cond_0

    const-string v5, "9"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "1"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-eqz v5, :cond_0

    :cond_1
    const-string v5, "1"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const-string v5, "0"

    iput-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DB updated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception on handling DB : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    :try_start_1
    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v5, "0"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    if-eqz v5, :cond_5

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DB updated(ResetTime)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error(ResetTime)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v5, "0"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-gtz v5, :cond_0

    :cond_6
    const-string v5, "0"

    iget-object v6, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long v6, p2, v6

    cmp-long v5, v6, p4

    if-lez v5, :cond_0

    iget-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const-string v6, "1"

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "1"

    iput-object v5, v3, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", DB updated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v5, "SPCMDataBaseManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbClose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public UpdateDBSpecific(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;J)V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbOpen()V

    iget-object v2, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    const-string v2, "SPCMDataBaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DB updated(by user)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbClose()V

    :goto_1
    return-void

    :cond_0
    const-string v2, "SPCMDataBaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SPCMDataBaseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handling DB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public UpdateResetTime(Landroid/util/ArrayMap;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;J)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbOpen()V

    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    const-string v4, "9"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "2"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const-string v4, "0"

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateResetTime pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", used!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception on handling DB : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/SPCMDataBaseManager;->dbClose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public dumpSPCMDBLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v0, "ACTIVITY MANAGER SPCM DataBase (dumpsys activity spcm db)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "resetTime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "\tPackageName: %s, %s, %s"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x6

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x7

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v7

    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

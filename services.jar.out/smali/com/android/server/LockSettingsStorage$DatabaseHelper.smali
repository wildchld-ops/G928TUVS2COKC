.class Lcom/android/server/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private final mCallback:Lcom/android/server/LockSettingsStorage$Callback;

.field final synthetic this$0:Lcom/android/server/LockSettingsStorage;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->this$0:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    iput-object p3, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private updateFingerPrintSetting(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "UPDATE locksettings SET value=? WHERE name=? AND value=?;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x61000

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    const-string/jumbo v2, "lockscreen.password_type"

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-wide/32 v2, 0x11000

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const-string v1, "LockSettingsDB"

    const-string/jumbo v2, "updateFingerPrintSetting to 0x61000"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    move v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->updateFingerPrintSetting(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x3

    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

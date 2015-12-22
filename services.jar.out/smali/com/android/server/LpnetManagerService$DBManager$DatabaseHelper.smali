.class Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService$DBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$DBManager;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$DBManager;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->this$1:Lcom/android/server/LpnetManagerService$DBManager;

    const-string/jumbo v0, "sm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS AppFreezer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

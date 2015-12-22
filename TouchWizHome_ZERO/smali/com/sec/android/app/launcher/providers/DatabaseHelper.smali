.class public abstract Lcom/sec/android/app/launcher/providers/DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseHelper.java"


# static fields
.field public static final DATABASE_VERSION:I = 0x11


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method protected doesTableExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v4, "SELECT count(*) from sqlite_master where name=? and type=\'table\'"

    new-array v5, v2, [Ljava/lang/String;

    aput-object p2, v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v1

    :cond_2
    move v1, v3

    goto :goto_0
.end method
